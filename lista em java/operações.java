import java.util.Scanner;
import java.lang.Math;

public class operações {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double num1, num2, resultado;
        char operador;

        System.out.print("Digite o primeiro número real: ");
        num1 = scanner.nextDouble();

        System.out.print("Digite o segundo número real: ");
        num2 = scanner.nextDouble();

        System.out.print("Digite o símbolo da operação (+, -, *, / ou ^): ");
        operador = scanner.next().charAt(0);

        switch (operador) {
            case '+':
                resultado = num1 + num2;
                System.out.println("O resultado da operação é: " + resultado);
                break;

            case '-':
                resultado = num1 - num2;
                System.out.println("O resultado da operação é: " + resultado);
                break;

            case '*':
                resultado = num1 * num2;
                System.out.println("O resultado da operação é: " + resultado);
                break;

            case '/':
                if (num2 != 0) {
                    resultado = num1 / num2;
                    System.out.println("O resultado da operação é: " + resultado);
                } else {
                    System.out.println("Erro: Divisão por zero.");
                }
                break;

            case '^':
                resultado = Math.pow(num1, num2);
                System.out.println("O resultado da operação é: " + resultado);
                break;

            default:
                System.out.println("Erro: Símbolo de operação inválido.");
        }

        scanner.close();
    }
}