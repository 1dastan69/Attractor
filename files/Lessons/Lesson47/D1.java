import java.io.*;
import java.util.Date;

public class D1{

    static int result = 0;

    public static void main(String[] args) {
        E e = new E();
        System.out.println(new Date());
        result = e.count(new File("/home/dastan"));

        System.out.println(e.totalResult);
        System.out.println(new Date());

    }

}
class E{
    static int threadSize = 100;
    static int totalResult = 0;

    public int count(File file){

        int result = 0;

        if(file.isDirectory() && file.listFiles() != null){

            for(File f : file.listFiles()){
                if (f.isFile() && !f.isHidden()){
                    //System.out.println(f.getName());
                    //result++;
                    totalResult++;
                }else if(f.isDirectory()){
                    //result += count(f);
                    if (threadSize > 0){
                    Runnable r = () -> count(f);
                    Thread t = new Thread(r);
                    t.start();
                    threadSize--;
                }else{
                    totalResult += count(f);
                }
                }
            }
        }
        if(threadSize > 100)
            threadSize++;

        return totalResult;

    }
}
