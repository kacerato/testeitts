package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;
import Bi.InterfaceC2392y;

public class Z {

    public static class a implements InterfaceC2382n {

        public final int f9647a;

        public final String f9648b;

        public final EnumC2383o f9649c;

        public a(int i10, String str, EnumC2383o enumC2383o) {
            this.f9647a = i10;
            this.f9648b = str;
            this.f9649c = enumC2383o;
        }

        @Override
        public EnumC2383o a() {
            return this.f9649c;
        }

        @Override
        public int b() {
            return this.f9647a;
        }

        @Override
        public Object getParams() {
            return null;
        }

        @Override
        public String getServiceName() {
            return this.f9648b;
        }
    }

    public static class b implements InterfaceC2382n {

        public final int f9650a;

        public final int f9651b;

        public final String f9652c;

        public final EnumC2383o f9653d;

        public b(int i10, int i11, String str, EnumC2383o enumC2383o) {
            this.f9650a = i10;
            this.f9651b = i11;
            this.f9652c = str;
            this.f9653d = enumC2383o;
        }

        @Override
        public EnumC2383o a() {
            return this.f9653d;
        }

        @Override
        public int b() {
            return this.f9653d == EnumC2383o.PRF ? this.f9651b : this.f9650a;
        }

        @Override
        public Object getParams() {
            return null;
        }

        @Override
        public String getServiceName() {
            return this.f9652c;
        }
    }

    public static InterfaceC2382n a(InterfaceC2392y interfaceC2392y, int i10, EnumC2383o enumC2383o) {
        return new b(interfaceC2392y.f() * 4, i10, interfaceC2392y.b(), enumC2383o);
    }

    public static InterfaceC2382n b(InterfaceC2392y interfaceC2392y, EnumC2383o enumC2383o) {
        return new a(interfaceC2392y.f() * 4, interfaceC2392y.b(), enumC2383o);
    }
}
