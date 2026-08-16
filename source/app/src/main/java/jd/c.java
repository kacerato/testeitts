package jd;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;

public class c {
    public static void a(int startDepth, List<C13823b> list) {
        if (list == null) {
            return;
        }
        for (C13823b c13823b : list) {
            c13823b.g().f81541b = startDepth;
            a(startDepth + 1, c13823b.d());
        }
    }

    public static List<C13823b> b(List<C13823b> list) {
        if (list == null) {
            return null;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Iterator<C13823b> it = list.iterator();
        while (it.hasNext()) {
            steppedArrayList.add(it.next().clone());
        }
        return steppedArrayList;
    }

    public static void c(boolean shadow, List<C13823b> list) {
        if (list == null) {
            return;
        }
        for (C13823b c13823b : list) {
            c13823b.g().f81542c = shadow;
            c(shadow, c13823b.d());
        }
    }
}
