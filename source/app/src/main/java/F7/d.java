package F7;

import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class d {
    public static int a(i element, List<i> totalList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        synchronized (element.f6684f.f6676a) {
            try {
                List<i> list = element.f6684f.f6677b;
                if (list != null) {
                    steppedArrayList.addAll(list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (steppedArrayList.isEmpty()) {
            return totalList.indexOf(element);
        }
        return a(element.f6684f.f6677b.get(r3.size() - 1), totalList);
    }

    public static void b(i eElement, f adapter) {
        SteppedArrayList<i> steppedArrayList = new SteppedArrayList();
        synchronized (eElement.f6684f.f6676a) {
            try {
                List<i> list = eElement.f6684f.f6677b;
                if (list != null) {
                    steppedArrayList.addAll(list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (i iVar : steppedArrayList) {
            adapter.x(iVar);
            b(iVar, adapter);
        }
    }
}
