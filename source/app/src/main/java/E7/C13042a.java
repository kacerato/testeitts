package e7;

import N7.c;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import e7.AbstractC13043b;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class C13042a<T, V extends AbstractC13043b> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    public final List<T> f85386a;

    public final LayoutInflater f85387b;

    public final Context f85388c;

    public final InterfaceC1584a<T, V> f85389d;

    public interface InterfaceC1584a<T, V extends AbstractC13043b> {
        void a(final V holder, final T element, final int position);

        V b(final LayoutInflater inflater, final ViewGroup parent);
    }

    public C13042a(Context context, InterfaceC1584a<T, V> listener) {
        this.f85386a = new SteppedArrayList();
        this.f85388c = context;
        this.f85387b = LayoutInflater.from(context);
        this.f85389d = listener;
    }

    public void g(T element) {
        c.h0();
        if (element == null) {
            throw new NullPointerException("Element can't be null");
        }
        int size = this.f85386a.size();
        this.f85386a.add(element);
        notifyItemInserted(size);
    }

    @Override
    public int getItemCount() {
        return this.f85386a.size();
    }

    public void h(T element, int index) {
        c.h0();
        if (element == null) {
            throw new NullPointerException("Element can't be null");
        }
        this.f85386a.add(index, element);
        notifyItemInserted(index);
    }

    public void i(List<T> elements) {
        c.h0();
        if (elements == null) {
            throw new NullPointerException("Elements can't be null");
        }
        int size = this.f85386a.size();
        this.f85386a.addAll(elements);
        notifyItemRangeInserted(size, elements.size());
    }

    public void j() {
        c.h0();
        int size = this.f85386a.size();
        this.f85386a.clear();
        notifyItemRangeRemoved(0, size);
    }

    public boolean k(T element) {
        if (element != null) {
            return this.f85386a.contains(element);
        }
        throw new NullPointerException("Element can't be null");
    }

    public List<T> l() {
        return new SteppedArrayList(this.f85386a);
    }

    public T m(int i10) {
        return this.f85386a.get(i10);
    }

    public int n(T element) {
        return this.f85386a.indexOf(element);
    }

    public void o(Comparator<? super T> c10) {
        c.h0();
        Collections.sort(this.f85386a, c10);
        notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        T t10 = this.f85386a.get(i10);
        this.f85389d.a((AbstractC13043b) viewHolder, t10, i10);
    }

    @Override
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        V b10 = this.f85389d.b(this.f85387b, parent);
        b10.b(b10.a());
        return b10;
    }

    public void p() {
        notifyDataSetChanged();
    }

    public void q(T element) {
        c.h0();
        int indexOf = this.f85386a.indexOf(element);
        if (indexOf >= 0) {
            notifyItemChanged(indexOf);
        }
    }

    public void r(T element) {
        c.h0();
        if (element == null) {
            throw new NullPointerException("Element can't be null");
        }
        int indexOf = this.f85386a.indexOf(element);
        if (indexOf < 0) {
            throw new RuntimeException("Adapter doesn't have this element");
        }
        this.f85386a.remove(indexOf);
        notifyItemRemoved(indexOf);
    }

    public void s(List<T> elements) {
        c.h0();
        if (elements == null) {
            throw new NullPointerException("Elements can't be null");
        }
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            r(it.next());
        }
    }

    public void t(List<T> elements) {
        c.h0();
        if (elements == null) {
            throw new NullPointerException("Elements can't be null");
        }
        int size = this.f85386a.size();
        this.f85386a.clear();
        notifyItemRangeRemoved(0, size);
        this.f85386a.addAll(elements);
        notifyItemRangeInserted(0, this.f85386a.size());
    }

    public C13042a(Context context, List<T> elements, InterfaceC1584a<T, V> listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f85386a = steppedArrayList;
        this.f85388c = context;
        this.f85387b = LayoutInflater.from(context);
        this.f85389d = listener;
        steppedArrayList.addAll(elements);
    }
}
