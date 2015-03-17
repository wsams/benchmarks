import java.util.Random;

class RandomTest {
    public static void main(String[] args) {
        Random random = new Random();
        for (int i = 0; i < 100000; i ++) {
            int r = random.nextInt(500 - 100 + 1) + 100;
        }
    }
}
