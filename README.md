LudumDare 37 Pretest
=============================

# Aufbau

- Controller
	- UnitController *Spawnt und Steuert die Einheiten, bekommt die Daten übergeben*
- Renderer
	- Renderer *Rendert das Spiel, bekommt die Daten übergeben*
- Stages
	- GameStage *eigentliches Spiel*
	- MenuStage *Menu*
	- StageManager *Handelt, welche Stage gestartet wird und wie*
- main.lua *Startet Stagemanager*