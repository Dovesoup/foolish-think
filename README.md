# Foolish Think

> 三思而后行。想清楚，不等于想太久。

[中文](#中文) · [English](#english)

## 中文

很多项目不是输在执行，而是输在行动以前：把猜测当成事实，把喜欢的方案当成唯一的方案，把一时顺利当成方向正确。

Foolish Think 是一套给智能体使用的项目思考 Skill。它不会急着替你写方案，而是先陪你多想一步。新点子可以用它打磨，成形的方案可以用它压力测试，卡住或失败的项目也可以用它追根溯源。

它的中文内核，可以归成一句老话：**三思而后行。**

这里的“三思”不是反复犹豫，而是三个不同的问题：

### 一思：所见是真的吗？

先照见事实，也照见自己的想当然。

Foolish Mirror 会分清哪些是事实，哪些是推断，哪些仍是假设；新项目做失败预演，旧项目找真实根因。信息不够时，它会停下来问，而不是编出一个完整答案。

### 再思：还有别的路吗？

一个问题被讲述的方式，往往已经偷偷限定了解法。

Foolish Reframe 会逐条挑战原方案的前提，寻找更简单、更稳、更省，也更容易长期维护的路径。每个新建议都必须说清它在解决哪个具体问题，不能拿一串“最佳实践”糊弄过去。

### 三思：什么证据值得行动？

好点子不缺掌声，缺的是能让它尽早失败的实验。

Foolish Proof 把方向拆成一个个可验证的小步骤。上一步交付什么，下一步就接什么；怎么验收、何时复盘、失败损失多大、什么情况应该停，都事先讲明白。

然后才行动。

这也是 Foolish Think 对 “Stay hungry, stay foolish” 的理解：保持饥饿，所以愿意向前；保持愚拙，所以不把自己的第一反应当成真理。

### 它什么时候会出现？

智能体会根据你的真实意图和项目所处阶段自行判断，而不是机械匹配几个关键词：

- 只有需求或朦胧想法时，它进入 `Seed`，帮助你把问题想明白；
- 已有方案、尚未重投入时，它进入 `Stress-test`，提前寻找脆弱处；
- 项目已经卡住或结果不对时，它进入 `Diagnose`，区分方向错误、机制问题和执行偏差。

只是提到“项目”不会自动触发它。明确的执行任务、普通知识问答和单点技术故障，也不会被强行拖进三阶段分析。

### 安装

下载 Release 压缩包或克隆仓库，在仓库目录运行：

```bash
./install.sh codex
./install.sh claude
./install.sh openclaw
```

同时安装到三个智能体：

```bash
./install.sh all
```

默认安装位置：

| 智能体 | 个人 Skill 目录 |
|---|---|
| Codex | `~/.codex/skills/foolish-think` |
| Claude Code | `~/.claude/skills/foolish-think` |
| OpenClaw | `~/.agents/skills/foolish-think` |

安装脚本只复制 `foolish-think/` Skill 目录。如果同名版本已经存在，会先自动备份。

也可以直接把仓库交给智能体：

```text
请阅读 README.md，并把 Foolish Think 安装到你当前运行平台的个人 Skill 目录。安装后验证该平台能够发现 SKILL.md。
```

如果当前会话没有发现新建的顶层 Skill 目录，重启一次智能体。

### 使用

显式调用最可靠：

```text
请使用 Foolish Think，帮我三思这个项目。先完成第一阶段，与我确认后再继续。
```

安装后，智能体也可以在判断这套方法确实有帮助时自动调用。

默认情况下，它完成 Foolish Mirror 后会停下来与你对齐事实。只有你明确要求一次性分析，才会连续完成三个阶段。

### 分享

把 GitHub 仓库或 Release ZIP 发给同事即可。他们不需要重新复制那段长提示词；安装 Skill 后，智能体会直接读取 `SKILL.md`。

## English

> Stay hungry. Stay foolish. Think before reality thinks for you.

Foolish Think is a portable Agent Skill for developing early project ideas, pressure-testing proposed solutions, diagnosing struggling initiatives, and reconstructing failed projects.

It follows three questions:

1. **Foolish Mirror — Is what we see actually true?** Separate facts, inferences, hypotheses, and missing information.
2. **Foolish Reframe — Is there another path?** Challenge the frame and trace every alternative to a concrete finding.
3. **Foolish Proof — What evidence earns the next action?** Build falsification-first experiments and contract-linked steps.

The agent selects `Seed`, `Stress-test`, or `Diagnose` from the user's intent and project state. It does not rely on an exact keyword list, and merely mentioning a project is not enough to trigger the workflow.

### Install

Clone or unzip this repository, then run:

```bash
./install.sh codex
./install.sh claude
./install.sh openclaw
```

Install for every supported agent:

```bash
./install.sh all
```

Default destinations:

| Agent | Personal skill directory |
|---|---|
| Codex | `~/.codex/skills/foolish-think` |
| Claude Code | `~/.claude/skills/foolish-think` |
| OpenClaw | `~/.agents/skills/foolish-think` |

The installer copies only the `foolish-think/` directory and backs up an existing installation before replacing it.

To let an agent install the skill, give it the repository and say:

```text
Read README.md and install Foolish Think for the agent platform you are currently running. Verify that the platform can discover SKILL.md afterward.
```

### Use

Explicit invocation is the most predictable:

```text
Use Foolish Think to examine this project. Complete Stage 1 first and wait for my confirmation.
```

Installed agents may also invoke it automatically when critical project development or validation is genuinely part of the request.

### Portability

`foolish-think/SKILL.md` uses only portable `name` and `description` frontmatter plus platform-neutral instructions. `foolish-think/agents/openai.yaml` supplies optional Codex interface metadata; other agents can safely ignore it.

## License

MIT
