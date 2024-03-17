import java.util.Scanner;
import java.util.Random;

public class sorteio {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int num1, num2, numeroSorteado;

        System.out.print("Digite o primeiro número inteiro: ");
        num1 = scanner.nextInt();

        System.out.print("Digite o segundo número inteiro: ");
        num2 = scanner.nextInt();

        if (num1 > num2) {
            int numeroSorteadoAuxiliar = num1;
            num1 = num2;
            num2 = numeroSorteadoAuxiliar;
        }

        Random random = new Random();
        numeroSorteado = random.nextInt(num2 - num1 + 1) + num1;

        System.out.println("O número sorteado é: " + numeroSorteado);

        if (numeroSorteado % 2 == 0) {
            System.out.println(" Este número é par.");
        } else {
            System.out.println(" Este número é ímpar.");
        }

        scanner.close();
    }
}