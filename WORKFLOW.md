---
tracker:
  kind: github
  repo: ivanhoe/apus_landingpage
  project_number: 11
  api_key: $GITHUB_TOKEN
  active_states: [Ready, In progress]
  terminal_states: [Done]

polling:
  interval_ms: 30000

agent:
  max_concurrent_agents: 3
  max_turns: 20
---

You are working on a GitHub issue for the Apus landing page.

Identifier: {{ issue.identifier }}
Title: {{ issue.title }}

Body:
{% if issue.description %}
{{ issue.description }}
{% else %}
No description provided.
{% endif %}
