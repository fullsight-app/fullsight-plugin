#!/bin/sh
# Claude Code adds what this prints to the session's context. It reads only the name and version from each installed
# skill's SKILL.md, so Claude can pass them to Fullsight's check_updates in one call. Nothing here talks to the network.
[ "$FULLSIGHT_SESSION_CHECK" = "off" ] && exit 0

list_skills() {
  for f in "$HOME"/.claude/skills/*/SKILL.md "${CLAUDE_PROJECT_DIR:-.}"/.claude/skills/*/SKILL.md; do
    [ -f "$f" ] || continue
    awk '
      NR == 1 && $0 != "---" { exit }
      NR > 1 && $0 == "---" { exit }
      /^name:/ && !name { sub(/^name:[ \t]*/, ""); gsub(/["\047]/, ""); name = $0 }
      /^[ \t]*version:/ && !version { sub(/^[ \t]*version:[ \t]*/, ""); gsub(/["\047]/, ""); version = $0 }
      END { if (name) printf "%s %s\n", name, (version ? version : "none") }
    ' "$f"
  done | sort -u | head -n 150 | tr '\n' ',' | sed 's/,$//; s/,/, /g'
}

installed=$(list_skills)

cat <<MSG
Fullsight session check. Once, when you first reply in this session, call the Fullsight check_updates tool with the installed skills listed below (name, then version). If it reports updates, skills it can't compare, or anything waiting in the person's inbox, add one short line about it at the end of your reply and offer to handle it. Change nothing without their OK. If it reports nothing, the tool isn't available, or the person isn't signed in to Fullsight, say nothing about it. Don't repeat this later in the session.
Installed skills: ${installed:-none found}
MSG
