import java.util.Scanner;

public class Esfera {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double r, pi = 3.141592;
        int op;

        System.out.println("Escolha uma operação:\n");
        System.out.println("1 - Calcular o perímetro do círculo.\n");
        System.out.println("2 - Calcular a área do círculo.\n");
        System.out.println("3 - Calcular o volume da esfera.\n");
        System.out.print("Digite o código da operação desejada (1, 2 ou 3): ");
        op = scanner.nextInt();

        System.out.println("\nDigite o valor do raio: ");
        r = scanner.nextDouble();

        switch (op) {
            case 1:
                System.out.println("\nO perímetro do círculo é: " + (2 * pi * r));
                break;
            case 2:
                System.out.println("\nA área do círculo é: " + (pi * r * r));
                break;
            case 3:
                System.out.println("\nO volume da esfera é: " + (4.0 / 3.0 * pi * r * r * r));
                break;
            default:
                System.out.println("\nCódigo de operação inválido.");
                break;
        }

        scanner.close();
    }
}