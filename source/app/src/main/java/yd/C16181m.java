package yd;

import com.mokiat.data.front.error.WFCorruptException;
import java.io.BufferedReader;
import java.io.IOException;
import wd.C15988a;
import wd.InterfaceC15990c;

public class C16181m {

    public static final int f130228e = 4;

    public static final String f130229f = "[\\s]+";

    public static final String f130230g = "#";

    public static final int f130231h = 1;

    public static final String f130232i = "\\";

    public final C15988a[] f130233a = new C15988a[4];

    public final StringBuilder f130234b = new StringBuilder();

    public String f130235c;

    public String[] f130236d;

    public C16181m() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.f130233a[i10] = new C15988a();
        }
    }

    public String a() {
        return this.f130235c.substring(this.f130235c.indexOf(f130230g) + f130231h).trim();
    }

    public InterfaceC15990c b(int i10) throws WFCorruptException {
        if (i10 + 1 >= this.f130236d.length) {
            return null;
        }
        C15988a c15988a = this.f130233a[i10];
        c15988a.a(c(i10));
        return c15988a;
    }

    public float c(int i10) throws WFCorruptException {
        try {
            return Float.parseFloat(f(i10));
        } catch (NumberFormatException unused) {
            throw new WFCorruptException("Could not parse float value.");
        }
    }

    public int d() {
        return e() - 1;
    }

    public int e() {
        return Math.max(0, this.f130236d.length - 1);
    }

    public String f(int i10) {
        return this.f130236d[i10 + 1];
    }

    public boolean g(String str) {
        return str.equals(this.f130236d[0]);
    }

    public boolean h() {
        return this.f130236d[0].startsWith(f130230g);
    }

    public boolean i() {
        return this.f130236d[0].isEmpty();
    }

    public boolean j(BufferedReader bufferedReader) throws IOException {
        String k10 = k(bufferedReader);
        if (k10 == null) {
            return false;
        }
        String trim = k10.trim();
        this.f130235c = trim;
        this.f130236d = trim.split(f130229f);
        return true;
    }

    public final String k(BufferedReader bufferedReader) throws IOException {
        String readLine = bufferedReader.readLine();
        if (readLine == null) {
            return null;
        }
        if (!readLine.endsWith(f130232i)) {
            return readLine;
        }
        this.f130234b.setLength(0);
        while (readLine != null && readLine.endsWith(f130232i)) {
            this.f130234b.append(readLine.substring(0, readLine.length() - 1));
            readLine = bufferedReader.readLine();
        }
        if (readLine != null) {
            this.f130234b.append(readLine);
        }
        return this.f130234b.toString();
    }
}
