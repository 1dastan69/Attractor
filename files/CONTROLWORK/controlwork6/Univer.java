import java.sql.Connection;

public class Univer{
    private Integer id;
    private String name;
    private String status;

    public void File(int id, String name, String status){
        validate();

        this.id = id;
        this.name= name;
        this.status= status;

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
     public String getStatus(){
        return this.status;
    }
    public void setStatus(String status){
        this.status = status;
    }


    private void validate(){
        if(this.id == 0)
            throw new UniverNotValidatedException("Id is empty");
        if (this.name == null || this.name.isEmpty())
            throw new UniverNotValidatedException("name is empty");
        if (this.status == null || this.status.isEmpty())
            throw new UniverNotValidatedException("status is empty");

    }

    public void insert(Connection conn){

    }
    public void update(Connection conn){

    }
    public void delete(Connection conn){

    }

}
class UniverNotValidatedException extends RuntimeException{
    public UniverNotValidatedException(String massege){
        super(massege);
    }
}
