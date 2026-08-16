package H7;

import Ic.C2634m;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

public class d extends RecyclerView.Adapter {

    public Map<Integer, b> f8288a = new HashMap();

    public List<b> f8289b = new SteppedArrayList();

    public List<H7.a> f8290c;

    public Context f8291d;

    public c f8292e;

    public int f8293f;

    public class a extends RecyclerView.ViewHolder {
        public a(@NonNull View itemView) {
            super(itemView);
        }

        public void a(H7.a element, c listener) {
        }
    }

    public class b extends C2634m {

        public int f8295b;

        public int f8296c;

        public b(int layout) {
            this.f8295b = layout;
        }

        public a e(View itemView) {
            throw new RuntimeException("Override!!");
        }
    }

    public interface c {
        void a(Product product, View anchor);
    }

    public d(List<H7.a> elements, Context context, c listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f8290c = steppedArrayList;
        steppedArrayList.clear();
        this.f8290c.addAll(elements);
        this.f8291d = context;
        this.f8292e = listener;
    }

    public static boolean j(List list, H7.a aVar) {
        return aVar.d() == 0 && list.contains(aVar.c());
    }

    @Override
    public int getItemCount() {
        return this.f8290c.size();
    }

    @Override
    public int getItemViewType(int position) {
        return this.f8288a.get(Integer.valueOf(this.f8290c.get(position).d())).f8296c;
    }

    public void h(List<H7.a> list) {
        int size = this.f8290c.size();
        this.f8290c.addAll(list);
        if (size == 0) {
            k();
        } else {
            notifyItemRangeInserted(size, list.size());
        }
    }

    public int i() {
        return this.f8293f;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void k() {
        notifyDataSetChanged();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void l() {
        notifyDataSetChanged();
    }

    public void m() {
        this.f8290c.clear();
        k();
    }

    public void n(final List<Product> list) {
        this.f8290c.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean j10;
                j10 = d.j(List.this, (a) obj);
                return j10;
            }
        });
        k();
    }

    public void o(List<H7.a> elements) {
        this.f8290c.clear();
        this.f8290c.addAll(elements);
        k();
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        this.f8293f = holder.getAdapterPosition();
        ((a) holder).a(this.f8290c.get(position), this.f8292e);
    }

    @Override
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int holderIndex) {
        b bVar = this.f8289b.get(holderIndex);
        return bVar.e(LayoutInflater.from(this.f8291d).inflate(bVar.f8295b, parent, false));
    }
}
