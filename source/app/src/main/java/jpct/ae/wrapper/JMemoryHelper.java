package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.util.MemoryHelper;

@BA.ShortName("JpctMemoryHelper")
public class JMemoryHelper extends AbsObjectWrapper<MemoryHelper> {
    public static void compact() {
        MemoryHelper.compact();
    }

    public static void printMemory() {
        MemoryHelper.printMemory();
    }

    public void Initialize() {
        setObject(new MemoryHelper());
    }
}
