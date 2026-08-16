package Hi;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class c implements InterfaceC2382n {

    public final String f8472a;

    public final int f8473b;

    public final Object f8474c;

    public final EnumC2383o f8475d;

    public c(String str, int i10) {
        this(str, i10, null, EnumC2383o.ANY);
    }

    @Override
    public EnumC2383o a() {
        return this.f8475d;
    }

    @Override
    public int b() {
        return this.f8473b;
    }

    @Override
    public Object getParams() {
        return this.f8474c;
    }

    @Override
    public String getServiceName() {
        return this.f8472a;
    }

    public c(String str, int i10, Object obj) {
        this(str, i10, obj, EnumC2383o.ANY);
    }

    public c(String str, int i10, Object obj, EnumC2383o enumC2383o) {
        this.f8472a = str;
        this.f8473b = i10;
        this.f8474c = obj;
        if (obj instanceof EnumC2383o) {
            throw new IllegalArgumentException("params should not be CryptoServicePurpose");
        }
        this.f8475d = enumC2383o;
    }
}
