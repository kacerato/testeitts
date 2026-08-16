package tk;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public abstract class m {

    public final C15468e f117725a;

    public m(C15468e c15468e) {
        this.f117725a = c15468e;
    }

    public static List<String> c(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (String str : map.o()) {
            arrayList.add(str + ": " + map.get(str));
        }
        return arrayList;
    }

    public abstract OutputStream a() throws IOException;

    public C15468e b() {
        return this.f117725a;
    }
}
