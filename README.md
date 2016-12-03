LudumDare 37 Pretest
=============================

# Aufbau

- Controller
	- UnitController.lua *Spawnt und Steuert die Einheiten, bekommt die Daten übergeben*
- Renderer
	- Renderer.lua *Rendert das Spiel, bekommt die Daten übergeben*
- Stages
	- GameStage.lua *eigentliches Spiel*
	- MenuStage.lua *Menu*
	- StageManager.lua *Handelt, welche Stage gestartet wird und wie*
- main.lua *Startet Stagemanager*