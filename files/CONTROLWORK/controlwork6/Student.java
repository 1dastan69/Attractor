import java.sql.Connection;

public class Student{
    private Integer id;
    private String fullname;
    private Integer deportamentId;
    private Integer universityId;


    public void File(int id, String fullname, Integer deportamentId, Integer universityId){
        validate();

        this.id = id;
        this.fullname= fullname;
        this.deportamentId= deportamentId;
        this.universityId= universityId;
    }

    public int getid(){
        return this.id;
    }
    public void setId(int id){
        this.id = id;
    }
     public String getFullNmae(){
        return this.fullname;
    }
    public void setFullName(String fullname){
        this.fullname = fullname;
    }
     public Integer getDeportmentId(){
        return this.deportamentId;
    }
    public void setDeportmentId(Integer deportamentId){
        this.deportamentId = deportamentId;
    }
     public Integer getUniversityId(){
        return this.universityId;
    }
    public void setUniversityId(Integer universityId){
        this.universityId = universityId;
    }


    private void validate(){
        if(this.id == 0)
            throw new StudentNotValidatedException("Id is empty");
        if (this.fullname == null || this.fullname.isEmpty())
            throw new StudentNotValidatedException("fullname is empty");
        if (this.deportamentId == 0)
            throw new StudentNotValidatedException("path is empty");
        if(this.universityId ==0)
            throw new StudentNotValidatedException("Size is empty");

    }

    public void insert(Connection conn){

    }
    public void update(Connection conn){

    }
    public void delete(Connection conn){

    }

}
class StudentNotValidatedException extends RuntimeException{
    public StudentNotValidatedException(String massege){
        super(massege);
    }
}
