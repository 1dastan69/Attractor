class A{
    public static void main(String[] args) {
        Thread t1 = new Thread(new B("Thread"), "Thread");
        Thread t2 = new Thread(new B("Thread1"), "Thread1");
        Thread t3 = new Thread(new B("Thread2"), "Thread2");
        Thread t4 = new Thread(new B("Thread3"), "Thread3");
        Thread t5 = new Thread(new B("Thread4"), "Thread4");
        Thread t6 = new Thread(new B("Thread5"), "Thread5");
        Thread t7 = new Thread(new B("Thread6"), "Thread6");

        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
        t6.start();
        t7.start();

    }
}

class B implements Runnable{
    public String threadName;

    public B(String name){
        this.threadName = name;
    }
    public void run(){
        for(int i=0; i<10; i++)
            System.out.println(this.threadName + ": " + i);
    }
}
