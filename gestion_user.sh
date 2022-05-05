#! /bin/bash
#Please help me monsieur :*YAD HOW TO USE IT &&does usermod -l -U are correct
show_usage(){

	echo "gestion_user.sh: [-h|--help] [-T] [-t] [-n] [-N] [-d] [-m] [-s] chemin.."
}
HELP(){
	cat help.txt #affiche le fichier help.txt
}

#verouiller user 🚑️Nb:to MR what command should i use to verouiller usermod-l

ver_user(){
if ( test "$1" = "aziz") then
	usermod -l aziz 
	echo aziz >> list_user_v.txt
else if (test "$1" = "amine") then
	usermod -l amine
    	echo amine >> list_user_v.txt
else if (test "$1" = "") then
	 echo "ereeur" #afficher erreur si le nom d'utilisateur n'est pas disponible
fi	 	
fi
fi    	
}
#deerouiller user 🚑️Nb:to MR what command should i use to deverouiller usermod-U
dever_user(){
if ( test "$1" = "aziz") then
	usermod -U aziz 
	echo aziz >> list_user_v.txt
else if (test "$1" = "amine") then
	usermod -U amine
    	echo amine >> list_user_v.txt
else if (test "$1" = "") then
	 echo "ereeur" #afficher erreur si le nom d'utilisateur n'est pas disponible
fi	 	
fi
fi    	
}



if (test $# -eq 0) then    #test si aucun argument n'existe
	echo "pas d'arguments" >> erreur.txt 
	exit
else if ( test $1 = "-h") then 
	HELP 
else if ( test $1 = "-v") then 
	echo "Auteurs:Med Aziz Houas/Med amine Guirat
		Version:1.0"
else if ( test $1 = "-m") then 
	while [[ $choix -ne 3 ]]
do 
      
        echo "1) Verouiller compte"  
        echo "2) Deverouiller compte"
        echo "3) Quitter"
        read -p "DOnner une valeur compris entre 1 et 3" choix
        
        case $choix in 
                1) echo "donner nom utilisateur"
			read argv
			Ver_user $argv
                
                ;;
                2)echo "donner nom utilisateur"
                 read argd 
                dever_user $argd
                ;;
                3) echo "On quitte"
                return
                ;;
                *) echo "Mauvais votre choix (1,2 ou 3 pour quitter "
	esac
	sleep 5
	clear 
done					

	
fi
fi
fi
fi
