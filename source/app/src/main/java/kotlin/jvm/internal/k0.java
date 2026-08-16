package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;

public class k0 extends j0 {
    public k0(Wf.g gVar, String str, String str2) {
        super(((InterfaceC14023u) gVar).f(), str, str2, !(gVar instanceof KClass) ? 1 : 0);
    }

    @Override
    public Object e(Object obj, Object obj2) {
        return c().call(obj, obj2);
    }

    @InterfaceC14422l0(version = "1.4")
    public k0(Class cls, String str, String str2, int i10) {
        super(cls, str, str2, i10);
    }
}
