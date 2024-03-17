import java.util.Scanner;

public class media {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double um, dois, tres, media;

        System.out.print("Primeiro número:\n");
        um = scanner.nextDouble();
        System.out.print("Segundo número:\n");
        dois = scanner.nextDouble();
        System.out.print("Terceiro número:\n");
        tres = scanner.nextDouble();

        if (um > dois && um > tres) {
            System.out.println("O maior número é " + um);
        } else if (dois > um && dois > tres) {
            System.out.println("O maior número é " + dois);
        } else {
            System.out.println("O maior número é " + tres);
        }

        if (um < dois && um < tres) {
            System.out.println(", o menor número é " + um);
        } else if (dois < um && dois < tres) {
            System.out.println(", o menor número é " + dois);
        } else {
            System.out.println(", o menor número é " + tres);
        }

        media = (um + dois + tres) / 3;
        System.out.printf(", a média é %.2f\n", media);

        scanner.close();
    }
}