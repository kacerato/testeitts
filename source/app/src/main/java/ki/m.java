package ki;

import jk.AbstractC13875e;

public abstract class m {

    public AbstractC13875e f95286a;

    public l f95287b;

    public AbstractC13875e a() {
        return b().v();
    }

    public abstract l b();

    public synchronized AbstractC13875e c() {
        try {
            if (this.f95286a == null) {
                this.f95286a = a();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f95286a;
    }

    public synchronized l d() {
        try {
            if (this.f95287b == null) {
                this.f95287b = b();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f95287b;
    }
}
