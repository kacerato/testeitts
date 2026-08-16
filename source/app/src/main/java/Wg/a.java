package Wg;

import java.util.ArrayList;
import java.util.Iterator;
import yd.C16181m;

@Deprecated
public class a {

    public ArrayList<String> f27770a;

    public a(ArrayList<String> lines) {
        this.f27770a = lines;
    }

    public String a(String matName) {
        String str;
        Iterator<String> it = this.f27770a.iterator();
        boolean z10 = false;
        while (true) {
            str = "";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (next.contains("newmtl " + matName)) {
                z10 = true;
            } else if (z10 && next.contains("Kd ")) {
                String[] split = next.split("Kd ");
                for (int i10 = 1; i10 < split.length; i10++) {
                    str = str + split[i10].replace(C16181m.f130232i, "/");
                }
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0084, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String b(String matName) {
        Iterator<String> it = this.f27770a.iterator();
        boolean z10 = false;
        while (true) {
            String str = "";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            int i10 = 1;
            if (next.contains("newmtl " + matName)) {
                z10 = true;
            } else if (!z10) {
                continue;
            } else {
                if (next.contains("map_Kd ")) {
                    String[] split = next.split("map_Kd ");
                    while (i10 < split.length) {
                        str = str + split[i10].replace(C16181m.f130232i, "/");
                        i10++;
                    }
                    return str;
                }
                if (next.contains("map_Ka ")) {
                    String[] split2 = next.split("map_Ka ");
                    while (i10 < split2.length) {
                        str = str + split2[i10].replace(C16181m.f130232i, "/");
                        i10++;
                    }
                }
            }
        }
    }
}
