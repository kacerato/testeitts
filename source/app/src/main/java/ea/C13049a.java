package ea;

public class C13049a {
    public static boolean a(float mb2) {
        return ((float) (((((double) Runtime.getRuntime().maxMemory()) * 1.0d) / 1024.0d) / 1024.0d)) - ((float) (((((double) Runtime.getRuntime().totalMemory()) * 1.0d) / 1024.0d) / 1024.0d)) >= mb2;
    }
}
