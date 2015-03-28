import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;

class FileTest {
    public static void main(String[] args) {
        try {
            String fileName = "file.txt";
            String passage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";

            PrintWriter f2 = new PrintWriter(fileName, "UTF-8");
            for (int i = 0; i <= 1000; i++) {
                f2.println(passage);
            }
            f2.close();

            Path p = Paths.get(fileName);
            Files.delete(p);
        } catch (Exception ex) {
        }
    }
}
