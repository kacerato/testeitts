package L6;

import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Iterator;
import java.util.List;

public class k {

    public final List<l> f11622a;

    public final List<a> f11623b;

    public k() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f11622a = steppedArrayList;
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        this.f11623b = steppedArrayList2;
        steppedArrayList.add(new f());
        steppedArrayList.add(new b());
        steppedArrayList2.add(new e());
        steppedArrayList2.add(new g());
        steppedArrayList2.add(new i());
        steppedArrayList2.add(new d());
        steppedArrayList2.add(new c());
        steppedArrayList2.add(new h());
    }

    public List<M6.b> a(j context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (EditorSettings.a().codeCompletion.e() && context != null && context.f11617b != null) {
            Iterator<a> it = this.f11623b.iterator();
            while (it.hasNext()) {
                M6.b d10 = it.next().d(context.f11616a, context.f11617b, context.f11620e, context.f11619d, context.f11618c);
                if (d10 != null) {
                    steppedArrayList.add(d10);
                }
            }
        }
        return steppedArrayList;
    }

    public List<M6.b> b(j context) {
        String str;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (EditorSettings.a().codeCompletion.e() && context != null && (str = context.f11617b) != null && str.trim().toLowerCase().endsWith(a.f11613a)) {
            Iterator<a> it = this.f11623b.iterator();
            while (it.hasNext()) {
                M6.b d10 = it.next().d(context.f11616a, context.f11617b, context.f11620e, context.f11619d, context.f11618c);
                if (d10 != null) {
                    steppedArrayList.add(d10);
                }
            }
        }
        return steppedArrayList;
    }

    public void c(List<M6.b> suggestions, j context) {
        if (!EditorSettings.a().codeCompletion.e() || suggestions == null || context == null) {
            return;
        }
        Iterator<l> it = this.f11622a.iterator();
        while (it.hasNext()) {
            it.next().a(suggestions, context);
        }
    }
}
