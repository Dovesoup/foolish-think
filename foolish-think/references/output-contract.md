# Output Contract

Use these structures as contracts, not as mandatory prose. Omit fields only when they are genuinely inapplicable and say why.

## Stage 1

```markdown
## Stage 1 — Foolish Mirror

Mode: Seed | Stress-test | Diagnose

### Project restatement
- [F] Background/problem:
- [F/E/H/U] Target user and job:
- [F/E/H/U] Core outcome and metric:
- [F/E/H/U] Current idea or solution:
- [F/E/H/U] Evidence, constraints, pain, or failure:

### Findings
#### R1 — [finding]
- Status: unverified | weakly supported | falsified | observed
- Basis: F | E | H | U
- Supporting evidence:
- Counter-explanation:
- Confidence: high | medium | low
- Decision impact if wrong:
- Information needed:

### Stage judgment
- One-sentence judgment:
- Information sufficiency:
- Confirmed facts:
- Uncertain inferences:
- Highest-information next question:
```

Pause here unless the user requested one-pass analysis.

## Stage 2

```markdown
## Stage 2 — Foolish Reframe

### O1 — [optimization]
- Trace: O1 -> R1
- Original assumption:
- Why unreliable:
- Alternative:
- Why steadier/cheaper/simpler:
- Preconditions:
- New risks:
- Retain / modify / remove:
```

## Stage 3

```markdown
## Stage 3 — Foolish Proof

### S1 — [verifiable unit]
- Trace: S1 -> O1 -> R1
- Objective/deliverable:
- Trigger:
- Input contract:
- Output contract:
- Acceptance evidence:
- Retrospective signals:
- Failure cost:
- Reversibility:
- Minimum falsification experiment:
- Dependencies:
- Downstream consumer:
- Decision: do now | experiment first | restart

### Roadmap
- Dependency chain:
- Parallel work:
- Mandatory gates:
- Pass/stop conditions:
- First hard-to-reverse decision:
- Stop-investment conditions:
```

## Traceability Audit

Before finishing, confirm:

- every `O#` cites one or more `R#`;
- every `S#` cites one or more `O#` and `R#`;
- no recommendation appears only because it is a generic best practice;
- unknowns remain labeled rather than silently converted into facts;
- experiments are designed to disprove pivotal beliefs, not merely collect encouraging signals.
