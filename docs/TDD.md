# Prague 1600: Assassin Guild

# Technical Design Document (TDD) - Prototype / Vertical Slice

## Goal

Validate the core gameplay loop:

Recon -> Preparation -> Execution

The prototype should answer:

"Is infiltrating a district, observing guards, assassinating a target, and escaping fun?"

---

# Prototype Scope

## Playable Area

District: Old Town Market

Contains:

- Market Square
- Tavern (enterable)
- Alchemist House (enterable)
- Small alleyways
- One hidden shortcut

## Characters

Player:

- Assassin

NPCs:

- 3 Guards
- 5 Civilians
- 1 Alchemist Target

---

# Godot Version

Godot 4.4.x

Renderer:

- Forward+

Project Type:

- 2D

Camera:

- Fixed 3/4 Top-Down

---

# Folder Structure

res://

Scenes/
├── Main/
├── Levels/
├── Characters/
├── Buildings/
├── Props/
├── UI/

Scripts/
├── Core/
├── Characters/
├── AI/
├── Missions/
├── UI/

Resources/
├── Missions/
├── NPCs/

Autoload/
├── GameManager.gd
├── MissionManager.gd
├── SaveManager.gd

Art/
├── Tilesets/
├── Characters/
├── Props/

---

# Scene Hierarchy

Main.tscn

Main
├── LevelRoot
├── UIRoot
└── AudioRoot

---

# Level Structure

Level_MarketSquare.tscn

Level
├── NavigationRegion2D
├── TileMap_Ground
├── TileMap_Decoration
├── Buildings
├── NPCContainer
├── ObjectiveContainer
└── SpawnPoints

---

# TileMap Layers

Layer 0
Ground

Layer 1
Roads

Layer 2
Buildings

Layer 3
Objects

Layer 4
Collision

Layer 5
Navigation

---

# Player

Player.tscn

Player
├── CharacterBody2D
├── NavigationAgent2D
├── Sprite2D
├── AnimationPlayer
├── InteractionArea
└── DetectionArea

Responsibilities:

- Movement
- Interactions
- Assassination
- State transitions

---

# Player State Machine

enum PlayerState

IDLE
MOVE
INTERACT
ASSASSINATE
DETECTED
DEAD

---

# Movement

Version 1:

Mouse click movement

Flow:

Click Location
-> NavigationAgent2D target_position
-> Path generated
-> Character moves

Future:

WASD support

---

# Guards

Guard.tscn

Guard
├── CharacterBody2D
├── NavigationAgent2D
├── VisionCone
├── Sprite2D
├── AnimationPlayer
└── StateMachine

---

# Guard State Machine

PATROL

Move between waypoints.

SUSPICIOUS

Player briefly spotted.

INVESTIGATE

Move to suspicious location.

ALERTED

Player identified.

RETURN

Resume patrol.

DEAD

Removed from simulation.

---

# Patrol System

Guard resource:

PatrolRoute

Contains:

- Array[Vector2] waypoints

Guard logic:

Waypoint A
->
Waypoint B
->
Waypoint C
->
Loop

---

# Vision System

VisionCone.tscn

VisionCone
├── Area2D
└── CollisionPolygon2D

Checks:

1. Player inside cone
2. Line of sight clear

Detection Meter:

0 - 100

Example:

0-40:
Unaware

40-80:
Suspicious

100:
Alerted

---

# Assassination System

Conditions:

- Guard not alerted
- Within range
- Behind target

Flow:

Player presses interaction

-> Assassination animation
-> Target state = DEAD
-> Body spawned

---

# Body System

Body remains in world.

Guards discovering body:

PATROL
->
INVESTIGATE
->
ALERTED

Prototype:

No body hiding yet.

---

# Civilian AI

Very simple.

States:

IDLE
WANDER

Purpose:

- Populate district
- Create atmosphere

---

# Interactable Buildings

## Tavern

Scene:

Building_Tavern.tscn

Contains:

- Interior map
- NPCs
- Rumor source

## Alchemist House

Contains:

- Target
- Documents
- Mission objective

---

# Mission Flow

MissionState

RECON
PREPARATION
EXECUTION
SUCCESS
FAILURE

---

# Recon Phase

Player enters district.

Restrictions:

- No weapons used
- No assassination

Player can:

- Observe guards
- Learn routes
- Explore public areas

Stores:

Known patrol routes
Known entrances

---

# Preparation Phase

Simple prototype menu.

Select:

- Dagger

Future:

- Poison
- Smoke Bomb
- Lockpick

---

# Execution Phase

Mission starts.

Target becomes active.

Win:

Target eliminated and player escapes.

Lose:

Player detected for too long.

---

# Mission Data Resource

MissionData.gd

Properties:

mission_name
target_id
district_id
reward_gold
reward_influence
reward_knowledge

---

# Save System

Prototype SaveData

Player Progress:

gold
influence
knowledge

Future:

contacts
recipes
guild upgrades

Storage:

user://savegame.json

---

# UI

HUD

Displays:

Mission Objective
Detection Meter
Mission State

---

# Debug UI

Toggle Key:

F1

Displays:

Guard States
Vision Cones
Navigation Paths
FPS

---

# Autoloads

GameManager

Responsibilities:

- Game state
- Scene transitions

MissionManager

Responsibilities:

- Mission loading
- Objectives
- Rewards

SaveManager

Responsibilities:

- Saving
- Loading

---

# Milestone Plan

Milestone 1

- Player movement
- Navigation

Milestone 2

- Guard patrols
- Vision cones

Milestone 3

- Detection system
- Mission fail state

Milestone 4

- Assassination system

Milestone 5

- Tavern interior
- Alchemist house

Milestone 6

- Recon -> Execution flow

Milestone 7

- Polish and playtesting

---

# Definition of Done

Player can:

1. Enter market district
2. Observe guard routes
3. Enter tavern
4. Locate target
5. Assassinate target
6. Escape district

Mission completes successfully.

If this loop is fun, the project proceeds to full production.
