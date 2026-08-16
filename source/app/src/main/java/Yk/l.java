package yk;

import oh.C14518h;
import oh.E;
import oh.InterfaceC14516g;

public abstract class l {

    public static class a extends l {

        public final C14518h f130487a;

        public a(C14518h c14518h) {
            this.f130487a = c14518h;
        }

        @Override
        public InterfaceC14516g a(int i10) {
            return this.f130487a.g(i10);
        }
    }

    public static class b extends l {

        public final E f130488a;

        public b(E e10) {
            this.f130488a = e10;
        }

        @Override
        public InterfaceC14516g a(int i10) {
            return this.f130488a.I(i10);
        }
    }

    public static class c extends l {

        public final InterfaceC14516g f130489a;

        public c(InterfaceC14516g interfaceC14516g) {
            this.f130489a = interfaceC14516g;
        }

        @Override
        public InterfaceC14516g a(int i10) {
            return this.f130489a;
        }
    }

    public abstract InterfaceC14516g a(int i10);
}
