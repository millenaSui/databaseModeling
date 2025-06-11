## Modelagem de Banco de Dados - Atividade (M3)

Conversão da tabela ÑN (não normalizada) que contém dados de um hospital para a **1FN**, **2FN** e **3FN**.

### Tabela ÑN

- codPaciente
- nomePaciente
- numQuarto
- codigoPlanoSaude
- nomePlanoSaude
- codDoenca
- nomeDoenca
- percentualDoencaPaciente
- numMatriculaMedico
- nomeMedico
- codEspecialidadeMedico
- descrEspecialidadeMedico
- dataUltimaConsultaMedico

### Observações
- Um paciente só pode ter um plano de saúde
- Um paciente pode ter várias doenças
- Um paciente pode ter vários médicos
- Um médico pode ter várias especialidades