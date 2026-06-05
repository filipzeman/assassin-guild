# Prague 1600: Assassin Guild

## High Concept

A top-down 3/4 stealth game set in Prague during the reign of Rudolf II. The player is a member of a secret assassin guild tasked with eliminating targets, gathering intelligence, building a network of contacts, and influencing political events while remaining unseen.

---

# Vision Statement

The player should feel like they are building an underground intelligence network across Prague, not simply leveling up a character.

The game focuses on:

- Reconnaissance
- Planning
- Stealth
- Social manipulation
- Political influence
- Assassinations

---

# Core Pillars

## 1. Stealth First

Direct combat is dangerous.

Success comes from:

- Observation
- Timing
- Disguises
- Environmental usage
- Planning

## 2. Dense Historical Atmosphere

Locations:

- Old Town
- Market Squares
- Taverns
- Noble Houses
- Churches
- Alchemy Laboratories
- Sewers
- Secret Passages

## 3. Multiple Solutions

Every mission should support multiple approaches.

Examples:

- Direct assassination
- Poisoning
- Environmental accidents
- Ambushes
- Social infiltration

## 4. Small Detailed Spaces

Instead of giant maps:

- Small districts
- Rich interactions
- Detailed interiors

---

# Camera & Visual Style

## Camera

3/4 Top-Down View

Inspired by:

- The Escapists
- Moonlighter
- Stardew Valley

Benefits:

- Visible faces
- Visible building fronts
- Simple 2D implementation
- No isometric complexity

## Art Style

Pixel Art

Character Size:

- 48x48 or 64x64

Mood:

- Medieval Prague
- Lantern-lit streets
- Atmospheric nights
- Dark intrigue

---

# Gameplay Loop

## Phase 1: Reconnaissance

Visit district as a normal citizen.

Player can:

- Explore public areas
- Observe guards
- Visit taverns
- Listen to rumors
- Discover entrances
- Learn schedules

Rewards:

- Knowledge
- Map information
- Opportunities

## Phase 2: Preparation

At Guild HQ:

- Buy equipment
- Craft items
- Select loadout
- Consult contacts

## Phase 3: Execution

Mission begins.

Player:

- Infiltrates area
- Eliminates target
- Escapes

## Phase 4: Rewards

Gain:

- Gold
- Influence
- Knowledge
- Contact reputation

## Phase 5: Progression

Invest resources into:

- Equipment
- Crafting
- Contact network
- Guild upgrades

---

# Resources

## Gold

Used for:

- Equipment
- Materials
- Bribes
- Safehouse upgrades

## Influence

Represents guild reputation.

Used for:

- New contacts
- District access
- Political favors

## Knowledge

Represents intelligence gathered.

Used for:

- Recipes
- Hidden routes
- Opportunities
- Special missions

---

# Contact Network System

The primary progression system.

Instead of a traditional skill tree, the player develops relationships.

Example:

                Bishop
                   |
                   |

Merchant ---- Guild HQ ---- Alchemist
|
|
Tavern Keeper

Each contact unlocks gameplay possibilities rather than stat bonuses.

---

# Contact Categories

## Criminal Network

Examples:

- Smuggler
- Fence
- Grave Robber

Unlocks:

- Secret routes
- Black market goods
- Illegal equipment

## Alchemy Network

Examples:

- Herbalist
- Apprentice
- Master Alchemist

Unlocks:

- Poisons
- Smoke bombs
- Recipes

## Noble Society

Examples:

- Countess
- Banker
- Court Advisor

Unlocks:

- Invitations
- Information
- Political opportunities

## Religious Network

Examples:

- Priest
- Archivist
- Monk

Unlocks:

- Archives
- Hidden passages
- Secret knowledge

## City Authorities

Examples:

- Guard Captain
- Clerk
- Magistrate

Unlocks:

- Patrol schedules
- Permits
- Reduced suspicion

---

# Contact Levels

0 = Unknown

1 = Acquaintance

2 = Trusted

3 = Ally

4 = Influential

5 = Inner Circle

Example:

Tavern Keeper

Level 1:
Rumors

Level 2:
District gossip

Level 3:
Target schedules

Level 4:
Private meetings

Level 5:
Underground network access

---

# Dynamic Choices

After missions, players choose opportunities.

Example:

A suspicious alchemist seeks employment.

Choices:

- Hire
- Investigate
- Decline

Each choice changes future gameplay.

Goal:

Create stories instead of numerical upgrades.

---

# Player Abilities

Prototype:

- Move
- Sneak
- Assassinate
- Hide bodies
- Use distractions

Future:

- Disguises
- Lockpicking
- Poisoning
- Social stealth

---

# Detection System

Enemy States:

- Unaware
- Suspicious
- Alerted

Detection Factors:

- Vision cones
- Trespassing
- Carrying bodies
- Suspicious actions

---

# Locations

## Guild HQ

Main hub.

Contains:

- Briefing room
- Contact board
- Workshop
- Storage

## Tavern

Information gathering.

## Noble Manor

Infiltration missions.

## Alchemy Laboratory

Unique opportunities and hazards.

## Church

Archives and secret routes.

## Sewers

Alternative paths.

---

# Mission Generator (Future)

Generates:

- Target
- District
- Opportunities
- Guard density
- Rewards

Example:

Target:
Master Alchemist

District:
Old Town Market

Opportunity:
Poison experiment

Reward:
150 Gold

---

# Prototype Scope (POC)

One district:

- Market Square
- Tavern
- Alchemist House

Characters:

- Player
- 3 Guards
- 5 Civilians
- 1 Target

Features:

- Click-to-move
- Patrols
- Vision cones
- Assassination
- Win/Lose state

Goal:

Validate the Recon -> Preparation -> Execution loop.

---

# Technical Architecture

Godot 4.4

Scenes:

Main
├── GameManager
├── Level
└── UI

Player
├── NavigationAgent2D
├── Sprite2D
└── Area2D

Guard
├── StateMachine
├── VisionCone
└── NavigationAgent2D

Singletons:

- GameManager
- MissionManager
- SaveManager

---

# Long-Term Goal

The player gradually builds a web of contacts across Prague and becomes the hidden force influencing the city through intelligence, manipulation, and carefully planned assassinations.
