package Sd;

public class j {
    public static String a() {
        String implementationVersion = j.class.getPackage().getImplementationVersion();
        if (implementationVersion == null) {
            return "Sorry no Implementation-Version manifest attribute available";
        }
        return "trove4j version " + implementationVersion;
    }

    public static void b(String[] strArr) {
        System.out.println(a());
    }
}
