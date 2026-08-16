package B0;

import java.lang.ref.WeakReference;

public abstract class N extends L {

    public static final WeakReference f1140g = new WeakReference(null);

    public WeakReference f1141f;

    public N(byte[] bArr) {
        super(bArr);
        this.f1141f = f1140g;
    }

    public abstract byte[] e1();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final byte[] l0() {
        byte[] bArr;
        synchronized (this) {
            try {
                bArr = (byte[]) this.f1141f.get();
                if (bArr == null) {
                    bArr = e1();
                    this.f1141f = new WeakReference(bArr);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bArr;
    }
}
