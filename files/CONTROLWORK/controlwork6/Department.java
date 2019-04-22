import java.sql.Connection;

public class Department{
    private Integer id;
    private String name;
    private Integer universityId;

    public void Log(int id, String name, Integer universityId){
        validate();

    // DateFormat datetime = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    // Date datetime = new Date();
    // return dateFormat.format(datetime);

        this.id = id;
        this.name = name;
        this.universityId = universityId;
    }

    public int getid(){
        return this.id;
    }
    public void setId(int id){
        this.id = id;
    }
    public String getName(){
        return this.name;
    }
    public void setName(String name){
        this.name = name;
    }
   public Integer  getUniversityId(){
        return this.universityId;
    }
    public void setUniversityId(Integer universityId){
        this.universityId = universityId;
    }


   private void validate(){
        if(this.id == 0)
            throw new DepartmentNotValidatedException("Id is empty");
         if (this.name == null || this.name.isEmpty())
             throw new DepartmentNotValidatedException("name is empty");

         if (this.universityId == 0)
             throw new DepartmentNotValidatedException("universityId is empty");

    }

    public void insert(Connection conn){

    }
    public void update(Connection conn){

    }
    public void delete(Connection conn){

    }

}
class DepartmentNotValidatedException extends RuntimeException{
    public DepartmentNotValidatedException(String massege){
        super(massege);
    }
}

