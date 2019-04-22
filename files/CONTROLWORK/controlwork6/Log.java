import java.sql.Connection;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;





public class Log{
    private Integer id;
    private Integer commandid;
    private String datetime;

    public void Log(int id, int commandid){
        validate();

    // DateFormat datetime = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    // Date datetime = new Date();
    // return dateFormat.format(datetime);

        this.id = id;
        this.commandid = commandid;
        this.datetime = datetime;
    }

    public int getid(){
        return this.id;
    }
    public void setId(int id){
        this.id = id;
    }
    public int getCommandId(){
        return this.commandid;
    }
    public void setCommandId(int commandid){
        this.commandid = commandid;
    }
   public String  getDateTime(){
        return this.datetime;
    }
    public void setDateTime(){
        this.datetime = datetime;
    }


   private void validate(){
        if(this.id == 0)
            throw new LogNotValidatedException("Id is empty");
        if (this.commandid == 0 )
            throw new LogNotValidatedException("commandid is empty");
         if (this.datetime == null || this.datetime.isEmpty())
             throw new LogNotValidatedException("datetime is empty");

    }

    public void insert(Connection conn){

    }
    public void update(Connection conn){

    }
    public void delete(Connection conn){

    }

}
class LogNotValidatedException extends RuntimeException{
    public LogNotValidatedException(String massege){
        super(massege);
    }
}

