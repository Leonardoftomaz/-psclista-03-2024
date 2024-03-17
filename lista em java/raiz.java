import java.util.Scanner;
import java.lang.Math;

public class raiz {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            inicio(scanner);
        }
    }

    public static void inicio(Scanner scanner) {
        double a, b, c, delta, x1, x2;

        System.out.print("Digite o coeficiente 'a': ");
        a = scanner.nextDouble();
        System.out.print("Digite o coeficiente 'b': ");
        b = scanner.nextDouble();
        System.out.print("Digite o coeficiente 'c': ");
        c = scanner.nextDouble();

        delta = b * b - 4 * a * c;

        if (a == 0 && b == 0 && c != 0) {
            System.out.println("Coeficientes informados estão incorretamente.");
        } else if (a == 0 && b != 0) {
            System.out.println("Essa é uma equação de primeiro grau.");
            x1 = -c / b;
            System.out.println("A raiz real é: " + x1);
        } else {
            if (delta < 0) {
                System.out.println("Esta equação não possui raízes reais.");
            } else if (delta == 0) {
                System.out.println("Esta equação possui duas raízes reais iguais.");
                x1 = -b / (2 * a);
                System.out.println("As raízes reais da equação são: " + x1 + " e " + x1);
            } else {
                System.out.println("Esta equação possui duas raízes reais diferentes.");
                x1 = ((-b) + Math.sqrt(delta)) / (2 * a);
                x2 = ((-b) - Math.sqrt(delta)) / (2 * a);
                System.out.println("As raízes reais da equação são: " + x1 + " e " + x2);
            }
        }
    }
}