---
name: foolish-think
description: Use when a user wants to develop, evaluate, challenge, pressure-test, rescue, optimize, or retrospectively examine a project, product idea, initiative, workflow, or proposed solution whose problem definition, assumptions, feasibility, direction, or results are not yet trustworthy.
---

# Foolish Think

Challenge assumptions before reality does. Preserve the ambition of an idea while making its hidden beliefs, failure modes, and evidence requirements explicit.

## Decide Semantically

Infer the user's underlying intent and the project's state. Never trigger or refuse this skill from exact keywords alone.

Use it when critical development or validation is integral to the request, including:

- an early requirement or idea that needs to become a coherent project;
- a proposed solution that needs scrutiny before meaningful investment;
- an active project that is blocked, underperforming, or producing unexpected results;
- a failed project that needs diagnosis, reconstruction, or a stop decision.

Do not use it merely because the user mentions a project. Skip it for factual questions, direct execution of a settled plan, isolated reproducible software bugs, or requests where the user explicitly wants no strategic review. When uncertain, ask whether challenging the project's direction would materially help; do not force the full framework into a simple task.

## Preserve Stage Gates

Default to a multi-turn workflow:

1. Run Stage 1 only.
2. Separate facts from inference, expose missing information, and ask the user to correct or confirm the understanding.
3. Enter Stage 2 only after confirmation.
4. Enter Stage 3 after Stage 2, unless Stage 2 introduces a direction-changing choice that requires user approval.

If the user explicitly requests a one-pass analysis, complete all stages but label every unconfirmed assumption. Never preview later-stage solutions during Stage 1.

Ask at most one high-information question at a time when dialogue is possible. Prefer questions whose answers could change the root-cause judgment, project direction, or next validation gate.

## Route by Project State

Choose one mode from evidence, not wording:

- **Seed** — requirement or early idea, with no committed solution. Clarify the real problem and run a pre-mortem.
- **Stress-test** — a solution exists but has not materially failed. Audit assumptions, dependencies, reversibility, and likely failure modes.
- **Diagnose** — execution produced a meaningful gap between expected and actual results. Perform evidence-based root-cause analysis.

If states are mixed, name the dominant mode and note the secondary mode.

## Stage 1 — Foolish Mirror

Align on reality before proposing solutions.

### Restate the project

Use original language rather than copying the user's phrasing. Cover:

- background and the problem being addressed;
- target users, their important job or pain, and current workaround;
- core outcome and any stated success measure;
- current idea, solution, plan, or implementation;
- current evidence, constraints, pain, and observed failure, when present.

Tag important claims:

- `F` — fact explicitly supplied or directly observed;
- `E` — evidence-based inference;
- `H` — unverified hypothesis;
- `U` — missing information.

### Examine causes or preconditions

Create traceable findings `R1`, `R2`, and so on. For every finding include the claim, tag, supporting evidence, plausible counter-explanation, confidence, and information needed to resolve uncertainty.

Inspect every category below. Write “no supporting evidence yet” instead of inventing a problem:

1. assumptions the team treats as true but has never validated;
2. failure modes or second-order effects not previously considered;
3. feasibility judged too optimistically or too pessimistically;
4. a simpler, lower-coupling, or more maintainable path that may exist;
5. mismatch among the problem, user behavior, incentives, goal, and metric;
6. whether the issue is strategic, mechanism-level, executional, resource-related, or a measurement artifact.

For Seed mode, do not pretend failure has occurred. Convert these categories into critical hypotheses and a pre-mortem. Distinguish:

- **unverified** — evidence is absent;
- **weakly supported** — some evidence exists but does not justify large investment;
- **falsified** — available evidence contradicts the hypothesis.

### Close Stage 1

Provide:

- a one-sentence judgment explaining why the project is currently in this state;
- information sufficiency: `sufficient`, `proceed only with explicit hypotheses`, or `insufficient`;
- confirmed facts, uncertain inferences, and unresolved questions;
- no more than five missing inputs, prioritized by decision impact.

If information is insufficient, stop. Do not fabricate Stage 2 or Stage 3.

## Stage 2 — Foolish Reframe

Address Stage 1 findings one by one. Assign `O1`, `O2`, and so on. Every optimization must cite at least one `R#`.

For each optimization state:

- linked finding: `O# -> R#`;
- what the original approach took for granted;
- why it is unreliable under current conditions;
- the proposed alternative;
- why the alternative is steadier, cheaper, simpler, or more maintainable;
- prerequisites and newly introduced risks;
- what to retain, modify, or remove.

For Seed mode, compare credible alternatives without prematurely treating one as proven. For Diagnose mode, distinguish a local repair from a change to the project's core direction.

Do not add generic best practices that cannot be traced to Stage 1.

## Stage 3 — Foolish Proof

Turn the reframed approach into independently verifiable units. Assign `S1`, `S2`, and so on. Preserve the chain `S# -> O# -> R#`.

For each unit provide:

- objective and concrete deliverable;
- trigger condition;
- input contract;
- output contract, including format or schema when relevant;
- objective acceptance evidence;
- retrospective signals;
- worst-case failure cost and reversibility;
- smallest low-cost experiment capable of falsifying the direction early;
- dependency and downstream consumer;
- decision: `do now`, `experiment first`, or `restart`.

Use these decision rules:

- **do now** — evidence is adequate, downside is bounded, and the action is reversible;
- **experiment first** — a pivotal hypothesis remains unresolved and can be falsified cheaply;
- **restart** — a core value hypothesis is falsified, or continued repair costs more than replacement.

Finish with a dependency-ordered roadmap identifying parallel work, mandatory validation gates, pass/stop conditions, the first hard-to-reverse decision, and explicit conditions for stopping investment.

## Interoperate with Other Agent Workflows

Remain platform-neutral: describe behaviors and artifacts, not vendor-specific tool names.

When another brainstorming or design workflow is active, do not run two discovery processes. Use its conversational and approval discipline while applying this skill's assumption audit, pre-mortem, traceability, and falsification criteria.

Treat Stage 3 as a project-level validation roadmap. Hand it to the agent's detailed planning workflow only when implementation-level tasks, files, code, tests, or commits are required. Hand isolated technical failures to the agent's debugging workflow.

Respond in the user's language unless asked otherwise. Use [references/output-contract.md](references/output-contract.md) for exact output structures and [references/examples.md](references/examples.md) when routing or invocation is uncertain.
