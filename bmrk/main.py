import subprocess as sub
import os

print("setting up...",end="\r")
print('\033[92m'+"environment ready"+'\033[0m')

#morocco_world = open("benchmark/morocco_world.txt","w+")
#army_world = open("benchmark/army_world.txt","w+")

#iterations=1000
#while iterations>0:
#	print("iteration: ",1000-iterations,end="\r")
#	sub.run(["minigrep","morocco","test/world.txt"],stdout=morocco_world)
#	sub.run(["minigrep","army","test/world.txt"],stdout=army_world)
#	iterations-=1