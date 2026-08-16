package K;

import J.m;
import J.n;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class a<Model> implements n<Model, InputStream> {

    public final n<J.g, InputStream> f10665a;

    @Nullable
    public final m<Model, J.g> f10666b;

    public a(n<J.g, InputStream> nVar) {
        this(nVar, null);
    }

    public static List<C.e> c(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(new J.g(it.next()));
        }
        return arrayList;
    }

    @Override
    @Nullable
    public n.a<InputStream> b(@NonNull Model model, int i10, int i11, @NonNull C.h hVar) {
        m<Model, J.g> mVar = this.f10666b;
        J.g b10 = mVar != null ? mVar.b(model, i10, i11) : null;
        if (b10 == null) {
            String f10 = f(model, i10, i11, hVar);
            if (TextUtils.isEmpty(f10)) {
                return null;
            }
            J.g gVar = new J.g(f10, e(model, i10, i11, hVar));
            m<Model, J.g> mVar2 = this.f10666b;
            if (mVar2 != null) {
                mVar2.c(model, i10, i11, gVar);
            }
            b10 = gVar;
        }
        List<String> d10 = d(model, i10, i11, hVar);
        n.a<InputStream> b11 = this.f10665a.b(b10, i10, i11, hVar);
        return (b11 == null || d10.isEmpty()) ? b11 : new n.a<>(b11.f10127a, c(d10), b11.f10129c);
    }

    public List<String> d(Model model, int i10, int i11, C.h hVar) {
        return Collections.emptyList();
    }

    @Nullable
    public J.h e(Model model, int i10, int i11, C.h hVar) {
        return J.h.f10105b;
    }

    public abstract String f(Model model, int i10, int i11, C.h hVar);

    public a(n<J.g, InputStream> nVar, @Nullable m<Model, J.g> mVar) {
        this.f10665a = nVar;
        this.f10666b = mVar;
    }
}
