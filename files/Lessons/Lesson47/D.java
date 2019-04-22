import java.io.*;
import java.util.Date;

public class D{

    static int result = 0;

    public static void main(String[] args) {
        E e = new E();
        System.out.println(new Date());
        result = e.count(new File("/home/dastan/Desktop"));

        System.out.println(result);
        System.out.println(new Date());

    }

}
class E{
    public int count(File file){

        int result = 0;

        if(file.isDirectory()){

            for(File f : file.listFiles())
                if (f.isFile() && !f.isHidden()){
                    //System.out.println(f.getName());
                    result++;
                }else if(f.isDirectory()){
                    result += count(f);
                }
        }

        return result;

    }
}
