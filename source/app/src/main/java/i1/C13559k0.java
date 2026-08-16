package i1;

public final class C13559k0<T> implements p0<T> {

    public static final Object f91329c = new Object();

    public volatile p0<T> f91330a;

    public volatile Object f91331b = f91329c;

    public C13559k0(p0<T> p0Var) {
        this.f91330a = p0Var;
    }

    public static <P extends p0<T>, T> p0<T> a(P p10) {
        p10.getClass();
        return p10 instanceof C13559k0 ? p10 : new C13559k0(p10);
    }

    @Override
    public final T O1() {
        T t10 = (T) this.f91331b;
        Object obj = f91329c;
        if (t10 == obj) {
            synchronized (this) {
                try {
                    t10 = (T) this.f91331b;
                    if (t10 == obj) {
                        t10 = this.f91330a.O1();
                        Object obj2 = this.f91331b;
                        if (obj2 != obj && !(obj2 instanceof C13565n0) && obj2 != t10) {
                            String valueOf = String.valueOf(obj2);
                            String valueOf2 = String.valueOf(t10);
                            StringBuilder sb2 = new StringBuilder(valueOf.length() + 118 + valueOf2.length());
                            sb2.append("Scoped provider was invoked recursively returning different results: ");
                            sb2.append(valueOf);
                            sb2.append(" & ");
                            sb2.append(valueOf2);
                            sb2.append(". This is likely due to a circular dependency.");
                            throw new IllegalStateException(sb2.toString());
                        }
                        this.f91331b = t10;
                        this.f91330a = null;
                    }
                } finally {
                }
            }
        }
        return t10;
    }
}
