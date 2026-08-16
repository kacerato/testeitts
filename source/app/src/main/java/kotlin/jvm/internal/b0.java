package kotlin.jvm.internal;

import kotlin.reflect.KClass;
import nf.InterfaceC14422l0;

public class b0 extends a0 {
    public b0(Wf.g gVar, String str, String str2) {
        super(((InterfaceC14023u) gVar).f(), str, str2, !(gVar instanceof KClass) ? 1 : 0);
    }

    @Override
    public Object e(Object obj, Object obj2) {
        return c().call(obj, obj2);
    }

    @Override
    public void m(Object obj, Object obj2, Object obj3) {
        a().call(obj, obj2, obj3);
    }

    @InterfaceC14422l0(version = "1.4")
    public b0(Class cls, String str, String str2, int i10) {
        super(cls, str, str2, i10);
    }
}
