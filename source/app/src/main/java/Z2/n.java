package Z2;

import com.google.auto.value.AutoValue;

@AutoValue
public abstract class n implements Comparable<n> {
    public static n b(String str, long j10) {
        return new b(str, j10);
    }

    @Override
    public int compareTo(n nVar) {
        return c() < nVar.c() ? -1 : 1;
    }

    public abstract long c();

    public abstract String d();
}
