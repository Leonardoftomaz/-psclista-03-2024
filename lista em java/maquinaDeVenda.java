import java.util.Scanner;

public class maquinaDeVenda {
    public static void main(String[] args) {
        double totalCompra = 0;
        int opcao, quantidade, numProdutos;
        String[] vetorProdutos = new String[100];
        double[] vetorPrecos = new double[100];

        int notas50 = 0, notas20 = 0, notas10 = 0, notas5 = 0, notas2 = 0, notas1 = 0, res = 0;
        double valorPago, troco;

        Scanner scanner = new Scanner(System.in);

        System.out.println("Produtos:");
        System.out.println("1 - Salgadinho - R$ 7,00");
        System.out.println("2 - Doce - R$ 2,00");
        System.out.println("3 - Suco - R$ 5,00");
        System.out.println("4 - Refri - R$ 8,00\n");

        System.out.print("Quantos produtos deseja comprar? ");
        numProdutos = scanner.nextInt();

        for (int i = 1; i <= numProdutos; i++) {
            System.out.print("Digite o número do produto " + i + ": ");
            opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    vetorProdutos[i] = "Salgadinho";
                    vetorPrecos[i] = 7;
                    break;
                case 2:
                    vetorProdutos[i] = "Doce";
                    vetorPrecos[i] = 2;
                    break;
                case 3:
                    vetorProdutos[i] = "Suco";
                    vetorPrecos[i] = 5;
                    break;
                case 4:
                    vetorProdutos[i] = "Refri";
                    vetorPrecos[i] = 8;
                    break;
                default:
                    System.out.println("Opção inválida.");
                    i--;
                    break;
            }
        }

        for (int i = 1; i <= numProdutos; i++) {
            System.out.println("Produto " + i + ": " + vetorProdutos[i] + " - R$ " + vetorPrecos[i]);
        }

        do {
            System.out.print("\nEscolha um produto para informar a quantidade (ou 0 para finalizar/ Prosseguir com a compra): ");
            opcao = scanner.nextInt();

            if (opcao == 0)
                break;

            if (opcao < 0 || opcao > numProdutos) {
                System.out.println("Opção inválida.");
                continue;
            }

            System.out.print("Digite a quantidade desejada: ");
            quantidade = scanner.nextInt();

            if (quantidade <= 0) {
                System.out.println("Quantidade inválida.");
                continue;
            }

            totalCompra += quantidade * vetorPrecos[opcao];
            System.out.println("Produto: " + quantidade + " " + vetorProdutos[opcao] + " adicionado ao carrinho.");
        } while (true);

        System.out.println("\nTotal da compra: R$ " + totalCompra);

        System.out.print("\nDigite o valor pago: ");
        valorPago = scanner.nextDouble();

        if (valorPago < totalCompra) {
            System.out.println("Quantia paga insuficiente para realizar a compra.");
            scanner.close();
            return;
        }

        troco = valorPago - totalCompra;

        while (troco >= 50) {
            notas50++;
            troco -= 50;
        }
        while (troco >= 20) {
            notas20++;
            troco -= 20;
        }
        while (troco >= 10) {
            notas10++;
            troco -= 10;
        }
        while (troco >= 5) {
            notas5++;
            troco -= 5;
        }
        while (troco >= 2) {
            notas2++;
            troco -= 2;
        }
        while (troco >= 1) {
            notas1++;
            troco -= 1;
        }

        System.out.println("\nNotas necessárias para o troco:");
        if (notas50 > 0)
            System.out.println("Notas de R$ 50,00: " + notas50);
        if (notas20 > 0)
            System.out.println("Notas de R$ 20,00: " + notas20);
        if (notas10 > 0)
            System.out.println("Notas de R$ 10,00: " + notas10);
        if (notas5 > 0)
            System.out.println("Notas de R$ 5,00: " + notas5);
        if (notas2 > 0)
            System.out.println("Notas de R$ 2,00: " + notas2);
        if (notas1 > 0)
            System.out.println("Notas de R$ 1,00: " + notas1);
        else System.out.println("troco não necessário");

        scanner.close();
    }
}
