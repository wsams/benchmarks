import java.lang.StringBuilder;

class Concat {
    public static void main(String[] args) {
        StringBuilder str = new StringBuilder().append("Hello ");
        for (int i = 0; i < 10000; i++) {
            str.append("World ");
        }
    }
}
