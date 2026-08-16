package y2;

@v2.b(emulated = true)
@f
public final class k {

    public static final ThreadLocal<char[]> f129949a = new a();

    public class a extends ThreadLocal<char[]> {
        @Override
        public char[] initialValue() {
            return new char[1024];
        }
    }

    public static char[] a() {
        return f129949a.get();
    }
}
