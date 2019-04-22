public class Potoc{
    public static void main(String[] args) throws Exception {
        MyThread myThread = new MyThread();
        myThread.start();
        System.out.println(Thread.currentThread().getName());
    }

}
class MyThread extends Thread{
    public void run(){
        System.out.println(Thread.currentThread(). getName());
        System.out.println("This is new thread");
        someMethood();
    }
    private void someMethood(){
        throw new RuntimeException();
    }
}
