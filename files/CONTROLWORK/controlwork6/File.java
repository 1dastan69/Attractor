import java.sql.Connection;

public class File{
    private Integer id;
    private String filename;
    private String path;
    private double size;
    private String type;

    public void File(int id, String filename, String path, double size, String type){
        validate();

        this.id = id;
        this.filename= filename;
        this.path= path;
        this.size= size;
        this.type = type;
    }

    public int getid(){
        return this.id;
    }
    public void setId(int id){
        this.id = id;
    }
     public String getFileNmae(){
        return this.filename;
    }
    public void setFileName(String filename){
        this.filename = filename;
    }
     public String getPath(){
        return this.path;
    }
    public void setPath(String path){
        this.path = path;
    }
     public double getSize(){
        return this.size;
    }
    public void setId(double size){
        this.size = size;
    }
     public String getType(){
        return this.type;
    }
    public void setType(String type){
        this.type = type;
    }

    private void validate(){
        if(this.id == 0)
            throw new FileNotValidatedException("Id is empty");
        if (this.filename == null || this.filename.isEmpty())
            throw new FileNotValidatedException("filename is empty");
        if (this.path == null || this.path.isEmpty())
            throw new FileNotValidatedException("path is empty");
        if(this.size ==0)
            throw new FileNotValidatedException("Size is empty");
        if (this.type == null || this.type.isEmpty())
            throw new FileNotValidatedException("type is empty");
    }

    public void insert(Connection conn){

    }
    public void update(Connection conn){

    }
    public void delete(Connection conn){

    }

}
class FileNotValidatedException extends RuntimeException{
    public FileNotValidatedException(String massege){
        super(massege);
    }
}
