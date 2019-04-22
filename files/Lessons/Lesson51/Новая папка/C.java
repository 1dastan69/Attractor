import java.util.*;
import java.util.stream.*;
import java.nio.*;
import java.nio.file.*;

public class C {
	public static void main(String[] args) throws Exception {
		Path path = Paths.get("names.txt");
		Stream<String> streamOfStrings = Files.lines(path);

		Stream<Student> students = streamOfStrings.map(element -> new Student(element));
		students.forEach(System.out::println);

		List<Integer> integers = Arrays.asList(1,2,3);
		List<String> names = Arrays.asList("a","b","s");
		Integer reduced = integers.stream().reduce(5, (a,b) -> a - b);
		String reducedName = names.stream().reduce("T", (a,b) -> a + b);
		System.out.println(reducedName);	
	}
}

class Student {
	String name;
	String surname;

	public Student(String fullname) {
		this(fullname.split(" ")[0], fullname.split(" ")[1]);
	}
	
	public Student(String name, String surname) {
		this.name = name;
		this.surname = surname;
	}
	
	public String toString() {
		return String.format("{name = %s, surname = %s}", this.name, this.surname);
	}
}