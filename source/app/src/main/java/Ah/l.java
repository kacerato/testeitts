package Ah;

import java.util.Enumeration;
import java.util.Hashtable;

public class l {

    public int f772a;

    public static class a {

        public String f773a;

        public boolean f774b = true;

        public StringBuffer f775c = new StringBuffer();

        public a(String str) {
            this.f773a = str;
        }

        public void a(String str) {
            if (this.f774b) {
                this.f774b = false;
            } else {
                this.f775c.append(this.f773a);
            }
            this.f775c.append(str);
        }

        public String toString() {
            return this.f775c.toString();
        }
    }

    public l() {
        this.f772a = 0;
    }

    public String a(Hashtable hashtable) {
        a aVar = new a(" ");
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Integer num = (Integer) keys.nextElement();
            if (c(num.intValue())) {
                aVar.a((String) hashtable.get(num));
            }
        }
        return aVar.toString();
    }

    public int b() {
        return this.f772a;
    }

    public boolean c(int i10) {
        return (i10 & this.f772a) != 0;
    }

    public void d(int i10) {
        this.f772a = i10 | this.f772a;
    }

    public l(int i10) {
        this.f772a = i10;
    }
}
