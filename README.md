🚀 Rocket Run – Joc Dezvoltat în Godot Engine 4
Rocket Run este un joc creat în scop educațional, dezvoltat în Godot Engine 4, în care jucătorul controlează o mică rachetă și parcurge mai multe niveluri pline de obstacole, gravitație și provocări. Proiectul a fost dezvoltat în aproximativ 7 zile, timp în care am învățat Godot, GDScript, organizarea scenelor, UI, sunete, sistemul de pause, navigarea între scene și publicarea proiectului în GitHub.
Acest joc reprezintă prima mea aplicație desktop completă, iar procesul de dezvoltare mi-a demonstrat atât structura unui engine profesionist, cât și importanța versionării codului și gestionării proiectului prin Git.

🎮 Despre joc
Rocket Run este un joc simplu, dar captivant, în care obiectivul principal este să controlezi o rachetă și să ajungi la destinație fără să lovești obstacolele.
A – rotește racheta la stânga
D – rotește racheta la dreapta
SPACE – propulsează racheta (boost)
Controlul este gândit să ofere o senzație de „rocket physics”: racheta nu virează instant, ci se simte greutatea și inerția.

🗺 Structura jocului
Jocul conține:

✔ Meniu principal
Start Game
Select Level
Controls
Exit

✔ Meniu de selectare niveluri
4 niveluri diferite, fiecare cu obstacole unice.

✔ Meniu Controls
Dedicat pentru instruirea jucătorului.

✔ Sistem de pauză
Poate fi activat în timpul jocului și oferă:
Restart Level
Select Level
Main Menu

✔ Muzică de fundal + sunete (SFX)
muzică ambient pe toate scenele
sunete pentru boost, coliziune și alte elemente

🏗 Arhitectura proiectului în Godot
Jocul a fost construit folosind sistemul de scenes & nodes, specific Godot Engine.

🔧 Noduri importante:
RigidBody3D / CharacterBody – pentru rachetă
Camera3D – urmărește jucătorul
AudioStreamPlayer – muzică și sunete
CollisionShape3D – obstacole
CanvasLayer + Control nodes – meniuri și UI

🔥 GDScript folosit
Pentru logica jocului am folosit GDScript:
detecția inputurilor
rotație și forțe fizice
schimbare scene
sistem de pauză (get_tree().paused = true)
logică pentru butoane UI
controlul muzicii globale prin Autoload

🎨 Design
Pentru partea vizuală, am folosit:

✔ Figma
design pentru interfața Controls
structurarea meniurilor
concept UI minimalist în ton cu jocul

✔ Godot Theme / UI resizing
noduri HBoxContainer / VBoxContainer
ancore FullRect
ajustări pentru rezoluția Full HD

🧰 Tehnologii folosite
Acest proiect a inclus mai multe tehnologii și instrumente:

🟦 Godot Engine 4
Engine complet pentru jocuri 2D/3D, open-source, intuitiv și foarte performant.

🟩 GDScript
Limbaj asemănător cu Python, ușor de învățat, ideal pentru prototipuri și jocuri.

🟧 Figma
Pentru design UI și prezentare.

🟪 Git
Pentru versionarea codului:

salvarea modificărilor
revenirea la versiuni anterioare
testarea pe branch-uri
evitat pierderea accidentala a muncii
🟩 GitHub
Platforma unde am publicat proiectul, conținând commiturile, structura proiectului și documentația.
📚 Git – Teorie pe scurt
Git este un sistem de control al versiunilor. Pe scurt, îți permite să:
salvezi stări ale proiectului (commit-uri),
creezi ramuri separate (branches),
experimentezi fără riscuri,
revii la versiuni vechi,
lucrezi organizat.
Comenzi Git folosite:
git init
git add .
git commit -m "mesaj"
git push -u origin main
git branch fix_version
git checkout fix_version
git log
git restore
git reset --hard <sha>
Ce este un repository?
Un repository este „cartea de istorie” a proiectului tău.
Stochează:
codul,
fișierele,
commiturile,
branchurile,
toate versiunile anterioare.
🌳 De ce am commituri pe alt branch?
Pentru că:
am avut erori majore la versiunea principală (main),
a trebuit să revin la commitul 8,
dar nu am vrut să stric versiunea main,
așa că am creat branch-ul fix_version,
unde am continuat dezvoltarea.
Aceasta este o practică profesionistă în lumea software.
📦 Exportul jocului
Jocul a fost exportat ca:
Windows Desktop (.exe)
rezoluție Full HD 1920x1080
icon personalizat
versiune standalone (poate rula fără Godot)
🎯 Concluzie
„Rocket Run” nu este doar un joc simplu — este un proiect complet, care demonstrează:
cum se poate crea o aplicație reală în Godot,
cum se lucrează cu scene, noduri, fizică și UI,
cum se folosesc Git și GitHub în dezvoltarea software,

cum se construiește un joc modular și extensibil,

cum se gestionează erorile și se revine la versiuni stabile.

Acest proiect a fost o oportunitate excelentă de învățare, iar rezultatul final este o aplicație funcțională, plăcută vizual și bine organizată.
