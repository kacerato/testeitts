package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;
import k0.C;
import k0.z;

public final class f {
    public static List<C> a(g specialist, w toolToChat) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (specialist != null && specialist.e()) {
            return steppedArrayList;
        }
        Iterator<v> it = j.f69897c.iterator();
        while (it.hasNext()) {
            v c10 = it.next().c();
            c10.w(toolToChat);
            steppedArrayList.add(z.h(c10.l()));
        }
        return steppedArrayList;
    }

    public static List<C> b(w toolToChat) {
        return a(null, toolToChat);
    }

    public static List<C> c(v... toolObjects) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (toolObjects == null) {
            return steppedArrayList;
        }
        for (v vVar : toolObjects) {
            if (vVar != null) {
                steppedArrayList.add(z.h(vVar.l()));
            }
        }
        return steppedArrayList;
    }
}
