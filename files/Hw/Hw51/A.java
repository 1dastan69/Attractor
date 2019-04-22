import java.util.*;
import java.util.stream.*;
import java.nio.*;
import java.nio.file.*;
import java.io.*;

// import java.Date.*;
// import java.DateOfFormat.*;

public class A {
    public static void main(String[] args) throws Exception{
        Path path = Paths.get("films.txt");
       Stream<String> streamOfStrings = Files.lines(path);

        // List<Map<String, Object>> table = new ArrayList<Map<String, Object>>();
        // Map<String, Object> row = new HashMap<>();

        Stream<Student> students = streamOfStrings.map(element -> new Student(element));
        students.forEach(System.out::println);

        // for(Student student: student){
        //     row = new HashMap<>();
        //     //row.put("Films", streamOfStrings.getString("Films"));
        // }
        // System.out.println(row);
    }
}

class Student {
    String film;
    String year;
    String rating;
    // String run;
    // String gom;

    public Student(String fullname) {
            this(fullname.split(",")[0], fullname.split(",")[1],fullname.split(",")[2]);
        }


    public Student(String film, String year, String rating) {
        this.film = film;
        this.year = year;
        this.rating = rating;
        // this.run = run;
        // this.gom = gom;
    }

    public String toString() {
        return String.format("%s %s %s",this.film, this.year, this.rating);
    }
}







        // List<Map<String, Object>> table = new ArrayList<Map<String, Object>>();
        // Map<String, Object> row = new HashMap<>();
