package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.IntList;

@BA.ShortName("JpctIntList")
public class JIntList extends AbsObjectWrapper<IntList> {
    public void Initialize() {
        setObject(new IntList());
    }

    public void add(int i10) {
        ((IntList) getObject()).add(i10);
    }

    public void clear() {
        ((IntList) getObject()).clear();
    }

    public void compact() {
        ((IntList) getObject()).compact();
    }

    public int get(int i10) {
        return ((IntList) getObject()).get(i10);
    }

    public int size() {
        return ((IntList) getObject()).size();
    }
}
