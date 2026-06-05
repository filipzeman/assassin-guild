# Architecture Decision Record (ADR)

# Prague 1600: Assassin Guild

Status: Accepted
Version: 1.0

## Purpose

This document records the major architectural and design decisions for the project. It exists to prevent unnecessary rewrites and preserve the project's vision.

---

## ADR-001: Use 3/4 Top-Down Perspective

### Decision

Use a 3/4 top-down camera similar to The Escapists and Moonlighter.

### Why

- Better character readability
- Visible faces and equipment
- Attractive environments
- Simpler than isometric

### Rejected

- Pure top-down
- True isometric

---

## ADR-002: Use Godot 2D Instead of 3D

### Decision

Build the game entirely with Godot 2D systems.

### Why

- Faster development
- Simpler AI
- Easier asset creation
- Realistic solo-developer scope

---

## ADR-003: Separate Interior and Exterior Maps

### Decision

Buildings load dedicated interior scenes.

### Why

- Rich interiors
- Smaller exterior maps
- Better performance
- Reduced content burden

---

## ADR-004: Small Dense Districts

### Decision

Missions take place in compact handcrafted districts.

### Why

- Encourages planning
- Easier content production
- Better stealth gameplay

### Rejected

Open-world Prague.

---

## ADR-005: Recon → Preparation → Execution

### Decision

Every mission follows three phases.

1. Recon
2. Preparation
3. Execution

### Why

Planning should matter.

---

## ADR-006: Contact Network Instead of Skill Tree

### Decision

Progression is relationship-based.

### Why

Players are building a network, not leveling a hero.

### Example

Bad:
+5% Stealth

Good:
Smuggler Level 3 → Sewer Entrances

---

## ADR-007: Gameplay Unlocks Over Stat Bonuses

### Decision

Prefer:

- New routes
- New recipes
- New contacts
- New opportunities

Avoid:

- Damage bonuses
- Health bonuses
- Generic percentages

---

## ADR-008: Historical Prague With Light Fiction

### Decision

Use Prague around 1600 as the foundation.

Add:

- Secret societies
- Assassin guilds
- Alchemy conspiracies

### Why

Unique atmosphere while preserving creative freedom.

---

## ADR-009: Modular Art Pipeline

### Decision

Create reusable building pieces.

Modules:

- Walls
- Roofs
- Doors
- Windows
- Props

### Why

Scales far better than unique buildings.

---

## ADR-010: AI-Assisted Content Creation

### Decision

Use AI for:

- Concepts
- Mission ideas
- Characters
- References
- Narrative events

Human review required before production use.

---

## ADR-011: Mission-Driven Structure

### Decision

The game is mission-centric.

### Why

Provides pacing, goals, and manageable scope.

---

## ADR-012: Stealth First

### Decision

Combat is secondary.

### Core Fantasy

Observe → Plan → Execute

---

## ADR-013: Vertical Slice Before Expansion

### Decision

Do not add major systems before validating the prototype.

Prototype includes:

- Market district
- Tavern
- Alchemist house
- Patrols
- Detection
- Assassination

---

## ADR-014: The City Is The Progression

### Decision

The real progression is influence across Prague.

Early game:
Small network.

Late game:
Extensive intelligence web.

---

## Guiding Principle

When choosing between:

A) More content

or

B) Better planning, stealth, intrigue, and player choice

Choose B.

The fantasy is not becoming stronger.

The fantasy is becoming the unseen force shaping Prague from the shadows.
