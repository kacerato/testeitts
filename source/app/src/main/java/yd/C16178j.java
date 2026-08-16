package yd;

import com.mokiat.data.front.error.WFCorruptException;
import wd.C15989b;
import wd.InterfaceC15991d;

public class C16178j {

    public final C15989b f130213a = new C15989b();

    public final C15989b f130214b = new C15989b();

    public final C15989b f130215c = new C15989b();

    public boolean f130216d = false;

    public boolean f130217e = false;

    public static int e(String str) throws WFCorruptException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            throw new WFCorruptException("Could not parse int value.", e10);
        }
    }

    public InterfaceC15991d a() {
        if (this.f130217e) {
            return this.f130215c;
        }
        return null;
    }

    public InterfaceC15991d b() {
        if (this.f130216d) {
            return this.f130214b;
        }
        return null;
    }

    public InterfaceC15991d c() {
        return this.f130213a;
    }

    public void d(String str) throws WFCorruptException {
        String[] split = str.split("/");
        boolean z10 = false;
        this.f130213a.a(e(split[0]));
        boolean z11 = split.length >= 2 && !split[1].isEmpty();
        this.f130216d = z11;
        if (z11) {
            this.f130214b.a(e(split[1]));
        }
        if (split.length >= 3 && !split[2].isEmpty()) {
            z10 = true;
        }
        this.f130217e = z10;
        if (z10) {
            this.f130215c.a(e(split[2]));
        }
    }
}
