import java.util.*;
import java.util.stream.*;
import java.nio.*;
import java.nio.file.*;
// import java.Date.*;
// import java.DateOfFormat.*;

public class C {
	public static void main(String[] args) throws Exception {
		Path path = Paths.get("names.txt");
		Stream<String> streamOfStrings = Files.lines(path);

		Stream<Student> students = streamOfStrings.map(element -> new Student(element));
		students.forEach(System.out::println);
	}
}

class Student {
	String name;
	String surname;
	String date;
	String gender;


	public Student(String fullname) {
		this(fullname.split(" ")[0], fullname.split(" ")[1],fullname.split(" ")[2],fullname.split(" ")[3]);
	}

	public Student(String name, String surname, String date, String gender) {
		this.name = name;
		this.surname = surname;
		this.date = date;
		this.gender = gender;
	}

	public String toString() {
		return String.format("{name = %s, surname = %s, date = %s, gender = %s}", this.name, this.surname, this.date, this.gender);
	}
}
