class UltimosLancamentoModel {
  final int tipo;
  final String nome;
  final DateTime data;
  final double valor;
  final int parcelas;
  final bool alerta;

  UltimosLancamentoModel({
    required this.tipo,
    required this.nome,
    required this.data,
    required this.valor,
    required this.parcelas,
    required this.alerta,
  });
}
