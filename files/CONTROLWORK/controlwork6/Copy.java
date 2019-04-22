//import java.io.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;


public class Copy{
    public static void main(String[] args) {
        File file = new File("\\home\\dastan\\Desktop\\CONTROLWORK\\controlwork6\\List.txt");
        File copyfile = new File ("\\home\\dastan\\Desktop\\CONTROLWORK\\controlwork6\\Path\\List.txt");

        try{
            Files.copy(sourceFile.toPath(), destinationFile.toPath());

                }catch(IOException e){
                    e.printStackTrace();
                }

    }
}
