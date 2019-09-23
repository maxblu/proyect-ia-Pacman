import os
import json
from pprint import pprint

# s = os.system("test.bat")
# print(s)

log = {}

print("="*91)
print("|%22s %20s %12s %10s %10s %10s|" % ("Agent", "Map", "Cost", "Time","Nodes","Score"))
print("="*91)
with open("test.bat") as test_file:
	for command in test_file.readlines():
		if "::" in command:
			continue
		if len(command)<30:
			continue
		# print(command)
		# print(command.split())
		mapa = command.split()[3]
		agent = command.split()[5]
		key = mapa+" "+agent
		log[key] = {"map": mapa, "agent": agent}
		with os.popen(command) as output:
			lines = []
			
			for line in output.readlines():
				if not line.startswith("[SearchAgent]"):
					lines.append(line[:-1])
					

			# pprint(lines)
			try:
				log[key]['cost'] 		= lines[0].split()[6]
				log[key]['time'] 		= lines[0].split()[-2]
				log[key]['nodes'] 		= lines[1].split()[-1]
				log[key]['score'] 		= lines[2].split()[-1]
				# log[key]['ave_score'] 	= lines[3].split()[-1]				

			except Exception as e:
				# print(lines)
				log[key]['cost'] 		= lines[0].split()[-1][:-1]
				log[key]['time'] 		= "0.0"
				log[key]['nodes'] 		= lines[1].split()[-1]
				log[key]['score'] 		= lines[2].split()[-1]
				# log[key]['ave_score'] 	= lines[3].split()[-1]				

			# pprint(log[key])

			print("%23s %20s %12s %10s %10s %10s" % (log[key]["agent"], log[key]["map"], log[key]["cost"], log[key]["time"],log[key]["nodes"],log[key]["score"]))


				
