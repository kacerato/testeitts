package w5;

import Ic.C2633l;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class m {

    public static SteppedArrayList<String> f127194a;

    public static SteppedArrayList<String> f127195b;

    public static List<String> a() {
        if (f127195b == null) {
            SteppedArrayList<String> steppedArrayList = new SteppedArrayList<>();
            f127195b = steppedArrayList;
            steppedArrayList.add(".dex");
            f127195b.add(".javac");
            f127195b.add(C2633l.f9169o);
        }
        return f127195b;
    }

    public static List<String> b() {
        if (f127194a == null) {
            SteppedArrayList<String> steppedArrayList = new SteppedArrayList<>();
            f127194a = steppedArrayList;
            steppedArrayList.add(".msc");
            f127194a.add(".config");
            f127194a.add(".texture");
            f127194a.add(".sound");
            f127194a.add(".nm");
            f127194a.add(".manifest");
        }
        return f127194a;
    }
}
