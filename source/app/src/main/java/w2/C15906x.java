package w2;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@InterfaceC15894k
@v2.c
public final class C15906x extends AbstractC15891h implements Serializable {

    public static final long f126380c = 0;

    public final Pattern f126381b;

    public static final class a extends AbstractC15890g {

        public final Matcher f126382a;

        public a(Matcher matcher) {
            this.f126382a = (Matcher) H.E(matcher);
        }

        @Override
        public int a() {
            return this.f126382a.end();
        }

        @Override
        public boolean b() {
            return this.f126382a.find();
        }

        @Override
        public boolean c(int i10) {
            return this.f126382a.find(i10);
        }

        @Override
        public boolean d() {
            return this.f126382a.matches();
        }

        @Override
        public String e(String str) {
            return this.f126382a.replaceAll(str);
        }

        @Override
        public int f() {
            return this.f126382a.start();
        }
    }

    public C15906x(Pattern pattern) {
        this.f126381b = (Pattern) H.E(pattern);
    }

    @Override
    public int b() {
        return this.f126381b.flags();
    }

    @Override
    public AbstractC15890g d(CharSequence charSequence) {
        return new a(this.f126381b.matcher(charSequence));
    }

    @Override
    public String e() {
        return this.f126381b.pattern();
    }

    @Override
    public String toString() {
        return this.f126381b.toString();
    }
}
