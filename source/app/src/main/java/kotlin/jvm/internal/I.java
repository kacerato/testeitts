package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;

public class I extends H {
    public I(int i10, Wf.g gVar, String str, String str2) {
        super(i10, r.NO_RECEIVER, ((InterfaceC14023u) gVar).f(), str, str2, !(gVar instanceof KClass) ? 1 : 0);
    }

    @InterfaceC14422l0(version = "1.4")
    public I(int i10, Class cls, String str, String str2, int i11) {
        super(i10, r.NO_RECEIVER, cls, str, str2, i11);
    }

    @InterfaceC14422l0(version = "1.4")
    public I(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(i10, obj, cls, str, str2, i11);
    }
}
