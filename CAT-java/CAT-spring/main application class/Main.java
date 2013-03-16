// ...

public class Main {

    public static void main(String[] args) {
        ApplicationContext appCtx = new ClassPathXmlApplicationContext("applicationContext.xml");
        PrincipalBean principalBean = appCtx.getBean(PrincipalBean.class);
        principalBean.main(args);
    }
}