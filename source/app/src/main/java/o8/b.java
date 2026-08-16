package O8;

import Ic.C2633l;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class b {

    public static final String f16555c = "Editor/Brushes";

    public final List<O8.a> f16556a = new LinkedList();

    public boolean f16557b = false;

    public class a implements Comparator<O8.a> {
        public a() {
        }

        @Override
        public int compare(final O8.a object1, final O8.a object2) {
            return object1.d().compareTo(object2.d());
        }
    }

    public O8.a a(int idx) {
        return this.f16556a.get(idx);
    }

    public int b() {
        return this.f16556a.size();
    }

    public String c(int idx) {
        return this.f16556a.get(idx).f16546c;
    }

    public final void d() {
        this.f16556a.clear();
        try {
            String[] list = N7.c.r().list(f16555c);
            if (list != null && list.length > 0) {
                for (String str : list) {
                    if (C2633l.b(str, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm")) {
                        this.f16556a.add(new O8.a(Tc.b.O(str), "Editor/Brushes/" + str));
                    }
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        try {
            Collections.sort(this.f16556a, new a());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void e() {
        if (!this.f16557b) {
            d();
            this.f16557b = true;
        }
        synchronized (this.f16556a) {
            for (int i10 = 0; i10 < this.f16556a.size(); i10++) {
                try {
                    O8.a aVar = this.f16556a.get(i10);
                    aVar.f16550g = i10;
                    aVar.j();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
