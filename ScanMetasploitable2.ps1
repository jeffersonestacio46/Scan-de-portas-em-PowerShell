#Scan para o Metasploitable2 
# Solicita o IP do Metasploitable 2
$ip = Read-Host "Digite o IP do Metasploitable 2"

try {
    foreach ($porta in 1..1024) {
        if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
            echo "Port $porta Opened"
        }
    }
} catch {
    echo "Ocorreu um erro durante a execução"
}