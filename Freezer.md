#### FREEZER ####

Service simple pour stocker/ecouter de la musique gratuitement

Sur un serveur distant on pourra creer plusieurs utilisateur. Chaque utilisateur a dans son repertoire personnel un dossier 'Musics' ou est stockée sa musique qu'il pourra recupérer et lire chez lui.


[ COTE UTILISATEUR ]

L'utilisateur lance le programme Freezer:

-On lui demande des identifiants pour se connecter
-On lui liste toute ses musiques par ordre alphabetique
-On lui demmande quelle musique il veut ecouter

Si la musique est deja présente dans le repertoire distant, la musique est téléchargée sur la machine locale, dans le dossier 'Musics' de l'utilisateur et est lue localement.

Si la musique n'est pas présente dans le répertoire distant, la musique est téléchargée depuis Youtube sur la machine de l'utilisateur, elle est lue localement et est ajoutée au répertoire 'Musics' distant de l'utilisateur, pour la prochaine fois.


Il peut faire ca autant de fois qu'il le souhaite avant de quitter le programme Freezer.


La connexion doit etre sécurisée


[ SUITE ]

- Si la musique est déjà présente dans le répertoire d'un autre utilisateur, il est inutile de la retélécharger sur le serveur distant, il faudrait avoir une base de donnéee globale des musiques

- Si la musique est déjà présente dans le dossier local 'Musics', inutile de la retélécharger

- D'abord télécharger une nouvelle musique sur le serveur distant avant de la récupérer localement

- Les musiques sont rangées par artistes

- la musique n'est pas téléchargée localement, elle est lue en streaming (ffmpeg)