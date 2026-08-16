package Ah;

import java.util.Hashtable;

public class a extends Hashtable {

    public static final long f574c = -7457289971962812909L;

    public Hashtable f575b = new Hashtable();

    public Object a(Object obj) {
        return this.f575b.get(obj);
    }

    @Override
    public Object put(Object obj, Object obj2) {
        this.f575b.put(obj2, obj);
        return super.put(obj, obj2);
    }
}
