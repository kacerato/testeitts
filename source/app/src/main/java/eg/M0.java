package eg;

import nf.InterfaceC14410f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@InterfaceC14410f0
public class M0 extends R0 implements InterfaceC13089B {

    public final boolean f85627d;

    public M0(@Nullable K0 k02) {
        super(true);
        M0(k02);
        this.f85627d = x1();
    }

    @Override
    public boolean C0() {
        return this.f85627d;
    }

    @Override
    public boolean F0() {
        return true;
    }

    @Override
    public boolean c(@NotNull Throwable th2) {
        return V0(new C13091D(th2, false, 2, null));
    }

    @Override
    public boolean complete() {
        return V0(nf.P0.f98194a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        r0 = r0.I0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        if ((r0 instanceof eg.C13146w) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        r0 = (eg.C13146w) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        r0 = r0.Z();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r0 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002a, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x001d, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
    
        if (r0 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
    
        if (r0.C0() == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean x1() {
        InterfaceC13144v I02 = I0();
        C13146w c13146w = I02 instanceof C13146w ? (C13146w) I02 : null;
        if (c13146w != null) {
            R0 Z10 = c13146w.Z();
        }
        return false;
    }
}
