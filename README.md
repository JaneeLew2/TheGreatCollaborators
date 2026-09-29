
# Healthcare Data Use Case Assessment & Protection Platform

A privacy and governance workflow, modeled on Karlsgate, for responsibly enabling healthcare data use.

## Overview

Hospitals and health systems regularly need to share patient data with researchers, analytics partners, and collaborators, but every request carries privacy and compliance risk. This project builds a tool that moves that risk assessment to the front of the process: capture the request, assess the risk, and recommend protections, before data ever moves.

The project is organized around three epics that form a connected pipeline:

1. **Data Use Case Assessment** — An interactive questionnaire that captures how a researcher plans to use a dataset (data sensitivity, participant involvement, data movement, intended use, output needs, and re-identification concerns).
2. **Privacy & Governance Risk Identification** — An analyzer that automatically evaluates submitted assessments to identify privacy or governance risks, categorized by type and ranked by severity.
3. **Protection & Workflow Recommendations** — A recommendation engine that matches identified risks to protection mechanisms (de-identification, data minimization, matched/tokenized data, Karlsgate-style governance enforcement) and tracks the resulting workflow to completion.

## Repository Structure

```
├── src/                  # Application code
│   └── data_use_case_assessment.py
├── docs/                 # Reflections, milestone docs, Jira exports
├── slides/               # Milestone overview presentation
└── README.md
```

## Getting Started

### Requirements
- Python 3.8+

### Running the Data Use Case Questionnaire

From the `src/` directory:

```bash
python3 data_use_case_assessment.py
```

You'll be prompted for your name (submitter identity), then walked through each category of the assessment. At any point, type `save` to save your progress and resume later, if all required fields are completed on submission you'll receive a confirmation with a unique assessment ID.

The script also includes supporting functions used by the data steward and compliance officer stories:
- `display_summary()` — view a readable summary of a submitted assessment
- `flag_for_followup()` — flag a submission for clarification (data steward / compliance officer roles only)
- `search_repository()` — search submitted assessments by submitter, date, or keyword (compliance officer role only)

## Project Roles (User Story Personas)

These roles describe the end users the system is designed for, not the project team:

- **Researcher** — submits a data use case for review
- **Data Steward** — reviews submissions and can flag them for follow-up
- **Compliance Officer** — audits submissions and verifies applied protections
- **Governance Administrator** — configures and maintains the risk analyzer's rules

## Team

The Great Collaborators — Janee, Xavier, Alfred, Calvin, Ornelle

## Project Status

Currently in the **requirements analysis and planning phase** of the SDLC: epics, user stories, and acceptance criteria have been defined and are tracked in Jira. Next steps include designing the risk-scoring logic, defining recommendation rules, and building out wireframes ahead of development.
