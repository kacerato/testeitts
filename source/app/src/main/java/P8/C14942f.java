package p8;

import JAVARuntime.TerminalCLIExtension;
import d8.m;
import o8.InterfaceC14490d;

public class C14942f extends J4.e {

    public final TerminalCLIExtension f103689b;

    public class a implements InterfaceC14490d {

        public final String[] f103690a;

        public a(final String[] val$args) {
            this.f103690a = val$args;
        }

        @Override
        public void run() {
            C14942f.this.f103689b.start(this.f103690a);
        }
    }

    public class b implements InterfaceC14490d {

        public final String f103692a;

        public b(final String val$command) {
            this.f103692a = val$command;
        }

        @Override
        public void run() {
            C14942f.this.f103689b.run(this.f103692a);
        }
    }

    public class c implements InterfaceC14490d {

        public final String[] f103694a;

        public c(final String[] val$r) {
            this.f103694a = val$r;
        }

        @Override
        public void run() {
            this.f103694a[0] = C14942f.this.f103689b.getInfo();
        }
    }

    public class d implements InterfaceC14490d {

        public final String[] f103696a;

        public d(final String[] val$r) {
            this.f103696a = val$r;
        }

        @Override
        public void run() {
            this.f103696a[0] = C14942f.this.f103689b.getCommand();
            String str = this.f103696a[0];
            if (str == null || str.trim().isEmpty()) {
                this.f103696a[0] = "invalidcommand";
                throw new RuntimeException("command can`t be empty or null at custom cli extension: " + C14942f.this.f103689b.getClass().getSimpleName());
            }
        }
    }

    public C14942f(TerminalCLIExtension cliExtension) {
        cliExtension.setInstance(this);
        this.f103689b = cliExtension;
    }

    @Override
    public String b() {
        String[] strArr = new String[1];
        m.d(new d(strArr));
        return strArr[0];
    }

    @Override
    public String c() {
        String[] strArr = new String[1];
        m.d(new c(strArr));
        return strArr[0];
    }

    @Override
    public void m(String command) {
        super.m(command);
        m.d(new b(command));
    }

    @Override
    public void n(String[] args, J4.d terminal) {
        super.n(args, terminal);
        m.d(new a(args));
    }
}
