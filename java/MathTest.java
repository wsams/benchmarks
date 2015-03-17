import java.lang.Math;

class MathTest {
    public static void main(String[] args) {
        double r;
        double g;
        double b;
        for (int i = 0; i < 1000; i++) {
            for (int j = 0; j < 1000; j++) {
                r = i + j;
                g = Math.cos(i) + Math.sin(j);
                b = Math.tan(r - g);
            }
        }
    }
}
