# encoding: UTF-8

University.create({
  acronymous: 'Uerj',
  name: 'Universidade do Estado do Rio de Janeiro',
  state_id: 1
})

degree = Degree.create({
  name: 'Ciência da Computação'
})

courses = [
  "Geometria Analítica",
  "Cálculo I",
  "Álgebra",
  "Matemática Discreta",
  "Fundamentos da Computação",
  "Álgebra Linear",
  "Cálculo II",
  "Cálculo das Probabilidades",
  "Algoritmos e Estruturas de Dados I",
  "Linguagem de Programação I",
  "Física I",
  "Português Instrumental",
  "Cálculo III",
  "Algoritmos e Estruturas de Dados II",
  "Elementos de Lógica",
  "Linguagem de Programação II",
  "Teoria da Computação",
  "Cálculo Numérico",
  "Cálculo IV",
  "Algoritmos em Grafos",
  "Engenharia de Software",
  "Arquitetura de Computadores I",
  "Física II",
  "Banco de Dados I",
  "Análise e Projeto de Sistemas",
  "Estrutura de Linguagens",
  "Sistemas Operacionais I",
  "Arquitetura de Computadores II",
  "Otimização Combinatória",
  "Banco de Dados II",
  "Interfaces Humano-Computador",
  "Sistemas Operacionais II",
  "Compiladores",
  "Computação Gráfica",
  "Inteligência Artificial",
  "Ética, Computadores e Sociedade",
  "Metodologia Científica no Projeto Final",
  "Redes de Computadores I",
  "Arquiteturas Avançadas de Computadores I",
  "Projeto Final",
  "Sistemas Distribuídos"
]

courses.each do |name|
  Course.create({
    name: name,
    degree: degree
  })
end
