while IFS=',' read -r prenom mdp role
do
	case $role in
	"Admin"*) echo -ne "$mdp\n$mdp\n" | adduser --force-badname $prenom
		  usermod -aG sudo $prenom ;;
	"User"*)
		 echo -ne "$mdp\n$mdp\n" | adduser --force-badname $prenom ;;
	esac
done < <(cut -d "," -f2,4,5 Shell_Userlist.csv  | tail -n +2 ) 

