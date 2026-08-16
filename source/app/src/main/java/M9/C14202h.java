package m9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C14202h {

    public static final int f96875h = 1;

    public static final int f96876i = 2;

    public static final int f96877j = 3;

    public static final int f96878k = 0;

    public static final int f96879l = 1;

    public static final int f96880m = 2;

    public static final int f96881n = 3;

    public final AtomicReference<PooledObject> f96882a = new AtomicReference<>();

    public final AtomicInteger f96883b = new AtomicInteger(0);

    public final AtomicInteger f96884c = new AtomicInteger();

    public PooledObject[] f96885d = new PooledObject[16];

    public byte[] f96886e = new byte[16];

    public int f96887f;

    public int f96888g;

    public void a() {
        PooledObject[] pooledObjectArr = this.f96885d;
        int i10 = this.f96888g;
        pooledObjectArr[i10] = null;
        this.f96888g = i10 + 1;
    }

    public boolean b() {
        return this.f96883b.get() == 3 || this.f96883b.compareAndSet(2, 3);
    }

    public void c() {
        this.f96884c.incrementAndGet();
        PooledObject andSet = this.f96882a.getAndSet(null);
        while (andSet != null) {
            PooledObject h10 = andSet.h();
            andSet.B();
            andSet = h10;
        }
        if (this.f96883b.get() == 1) {
            return;
        }
        d();
        this.f96883b.set(0);
    }

    public final void d() {
        for (int i10 = this.f96888g; i10 < this.f96887f; i10++) {
            this.f96885d[i10] = null;
        }
        this.f96887f = 0;
        this.f96888g = 0;
    }

    public int e() {
        return this.f96886e[this.f96888g];
    }

    public PooledObject f() {
        return this.f96885d[this.f96888g];
    }

    public void g() {
        int i10 = this.f96883b.get();
        if (i10 == 2) {
            if (!this.f96883b.compareAndSet(2, 3)) {
                return;
            }
        } else if (i10 != 3) {
            return;
        }
        while (true) {
            int i11 = this.f96888g;
            if (i11 >= this.f96887f) {
                i();
                return;
            } else {
                PooledObject[] pooledObjectArr = this.f96885d;
                this.f96888g = i11 + 1;
                pooledObjectArr[i11] = null;
            }
        }
    }

    public final void h(int requiredCapacity) {
        PooledObject[] pooledObjectArr = this.f96885d;
        if (requiredCapacity <= pooledObjectArr.length) {
            return;
        }
        int length = pooledObjectArr.length;
        while (length < requiredCapacity) {
            length += Math.max(16, length >> 1);
        }
        PooledObject[] pooledObjectArr2 = new PooledObject[length];
        byte[] bArr = new byte[length];
        System.arraycopy(this.f96885d, 0, pooledObjectArr2, 0, this.f96887f);
        System.arraycopy(this.f96886e, 0, bArr, 0, this.f96887f);
        this.f96885d = pooledObjectArr2;
        this.f96886e = bArr;
    }

    public void i() {
        if (this.f96883b.get() != 3 || this.f96888g < this.f96887f) {
            return;
        }
        this.f96887f = 0;
        this.f96888g = 0;
        this.f96883b.set(0);
    }

    public boolean j() {
        return this.f96883b.get() == 3 && this.f96888g < this.f96887f;
    }

    public boolean k() {
        int i10 = this.f96883b.get();
        return i10 == 2 || i10 == 3;
    }

    public void l() {
        if (this.f96882a.get() != null) {
            if (this.f96883b.compareAndSet(0, 1)) {
                int i10 = this.f96884c.get();
                PooledObject andSet = this.f96882a.getAndSet(null);
                this.f96887f = 0;
                while (andSet != null) {
                    PooledObject h10 = andSet.h();
                    int B10 = andSet.B();
                    if (B10 != 0) {
                        h(this.f96887f + 1);
                        PooledObject[] pooledObjectArr = this.f96885d;
                        int i11 = this.f96887f;
                        pooledObjectArr[i11] = andSet;
                        this.f96886e[i11] = (byte) B10;
                        this.f96887f = i11 + 1;
                    }
                    andSet = h10;
                }
                this.f96888g = 0;
                if (i10 == this.f96884c.get()) {
                    this.f96883b.set(this.f96887f != 0 ? 2 : 0);
                } else {
                    d();
                    this.f96883b.compareAndSet(1, 0);
                }
            }
        }
    }

    public final void m(PooledObject object, int change) {
        PooledObject pooledObject;
        if (object == null || !object.q(change)) {
            return;
        }
        do {
            pooledObject = this.f96882a.get();
            object.w(pooledObject);
        } while (!androidx.lifecycle.c.a(this.f96882a, pooledObject, object));
    }

    public void n(PooledObject object) {
        m(object, 1);
    }

    public void o(PooledObject object) {
        m(object, 3);
    }

    public void p(PooledObject object) {
        m(object, 2);
    }
}
