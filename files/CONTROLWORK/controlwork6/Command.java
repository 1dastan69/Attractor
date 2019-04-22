import java.sql.Connection;

public class Command{
    private Integer id;
    private String code;
    private String description;

    public void Log(int id, String description, String code){
        validate();

    // DateFormat datetime = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    // Date datetime = new Date();
    // return dateFormat.format(datetime);

        this.id = id;
        this.code = code;
        this.description = description;
    }

    public int getid(){
        return this.id;
    }
    public void setId(int id){
        this.id = id;
    }
    public String getCode(){
        return this.code;
    }
    public void setCommandId(String code){
        this.code = code;
    }
   public String  getDescription(){
        return this.description;
    }
    public void setDescription(String description){
        this.description = description;
    }


   private void validate(){
        if(this.id == 0)
            throw new CommandNotValidatedException("Id is empty");
         if (this.code == null || this.code.isEmpty())
             throw new CommandNotValidatedException("code is empty");

         if (this.description == null || this.description.isEmpty())
             throw new CommandNotValidatedException("description is empty");

    }

    public void insert(Connection conn){

    }
    public void update(Connection conn){

    }
    public void delete(Connection conn){

    }

}
class CommandNotValidatedException extends RuntimeException{
    public CommandNotValidatedException(String massege){
        super(massege);
    }
}

