package Ch;

import oh.AbstractC14536q;
import oh.B;

public class s {

    public AbstractC14536q f4366a;

    public s(AbstractC14536q abstractC14536q) {
        this.f4366a = abstractC14536q;
    }

    public static s a(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj instanceof AbstractC14536q) {
            return new s(AbstractC14536q.F(obj));
        }
        return null;
    }

    public AbstractC14536q b() {
        return this.f4366a;
    }

    public B c() {
        return this.f4366a.r();
    }
}
