package F7;

import F7.i;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Iterator;
import java.util.List;

public class f<T extends i> extends RecyclerView.Adapter<m> {

    public final List<T> f6656a;

    public final Context f6657b;

    public final g f6658c;

    public LayoutInflater f6659d;

    public T f6660e;

    public T f6661f;

    public int f6662g;

    public int f6663h;

    public final F7.e f6664i;

    public final F7.b f6665j;

    public class a implements F7.b {
        public a() {
        }

        @Override
        public i a() {
            return f.this.f6660e;
        }

        @Override
        public Context getContext() {
            return f.this.f6657b;
        }

        @Override
        public void refresh(int position) {
            f.this.notifyItemChanged(position);
        }
    }

    public class b implements View.OnClickListener {

        public final i f6667b;

        public b(final i val$eElement) {
            this.f6667b = val$eElement;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onClick(View v10) {
            N7.c.Y();
            f.this.f6658c.d(this.f6667b);
        }
    }

    public class c implements View.OnClickListener {

        public final i f6669b;

        public final m f6670c;

        public c(final i val$eElement, final m val$holder) {
            this.f6669b = val$eElement;
            this.f6670c = val$holder;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onClick(View v10) {
            N7.c.Y();
            f.this.f6658c.c(this.f6669b);
            f.this.y(this.f6670c, this.f6669b);
        }
    }

    public class d implements View.OnClickListener {

        public final i f6672b;

        public d(final i val$eElement) {
            this.f6672b = val$eElement;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onClick(View v10) {
            N7.c.Y();
            f.this.f6658c.d(this.f6672b);
        }
    }

    public class e implements View.OnLongClickListener {

        public final i f6674b;

        public e(final i val$eElement) {
            this.f6674b = val$eElement;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onLongClick(View v10) {
            N7.c.Y();
            f.this.f6658c.b(this.f6674b, v10);
            return true;
        }
    }

    public f(List<T> mData, Context context, g callbacks) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f6656a = steppedArrayList;
        this.f6662g = 0;
        this.f6663h = 0;
        this.f6664i = new F7.e();
        this.f6665j = new a();
        steppedArrayList.clear();
        steppedArrayList.addAll(mData);
        this.f6657b = context;
        this.f6658c = callbacks;
        this.f6662g = (int) context.getResources().getDimension(R.dimen.editor3d_v2_panel_row);
        this.f6663h = (int) context.getResources().getDimension(R.dimen.editor3d_v2_panel_row);
        if (this.f6659d == null) {
            this.f6659d = LayoutInflater.from(context);
        }
    }

    @Override
    public int getItemCount() {
        return this.f6656a.size();
    }

    @Override
    public int getItemViewType(int position) {
        return this.f6656a.get(position).k();
    }

    public void k(int index, T element) {
        int max = Math.max(0, Math.min(index, this.f6656a.size()));
        this.f6656a.add(max, element);
        try {
            notifyItemInserted(max);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                notifyDataSetChanged();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void l(T element) {
        this.f6656a.add(element);
        try {
            notifyItemInserted(this.f6656a.size() - 1);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                notifyDataSetChanged();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void m() {
        int size = this.f6656a.size();
        this.f6656a.clear();
        try {
            notifyItemRangeRemoved(0, size);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                notifyDataSetChanged();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public boolean n(T element) {
        return this.f6656a.contains(element);
    }

    public int o(T element) {
        return this.f6656a.indexOf(element);
    }

    public T p(int i10) {
        return this.f6656a.get(i10);
    }

    @Override
    public void onBindViewHolder(m holder, int position) {
        T t10 = this.f6656a.get(position);
        t10.f6689k = this.f6665j;
        t10.f6690l = holder;
        t10.p(this.f6657b, holder);
        String g10 = t10.g();
        if (g10 != null) {
            holder.f6696a.setText(g10);
        } else {
            holder.f6696a.setText("");
        }
        if (this.f6660e == t10) {
            Vc.e.s(holder.f6700e, this.f6657b, R.color.theme_selected_elements);
        } else if (Nc.b.J0(position)) {
            Vc.e.q(holder.f6700e, this.f6657b, new ColorINT(Theme.i(Theme.T.TREE_LIST_ROW1)));
        } else {
            Vc.e.q(holder.f6700e, this.f6657b, new ColorINT(Theme.i(Theme.T.TREE_LIST_ROW2)));
        }
        holder.f6696a.setOnClickListener(new b(t10));
        F7.c cVar = t10.f6688j;
        if (cVar != null) {
            cVar.a(t10, this.f6657b, this.f6664i);
            holder.f6696a.setTextColor(this.f6664i.f6655a);
        } else {
            holder.f6696a.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        }
        LinearLayout linearLayout = holder.f6702g;
        if (linearLayout != null) {
            linearLayout.setBackgroundColor(Theme.i(Theme.T.SEMI_CARD));
        }
        j jVar = t10.f6680b;
        if (jVar != null) {
            jVar.a(this.f6657b, holder.f6697b, null, t10);
        }
        ViewGroup.LayoutParams layoutParams = holder.f6698c.getLayoutParams();
        layoutParams.width = this.f6662g * t10.e();
        holder.f6698c.setLayoutParams(layoutParams);
        if (t10.l()) {
            y(holder, t10);
            c cVar2 = new c(t10, holder);
            holder.f6699d.setOnClickListener(cVar2);
            holder.f6697b.setOnClickListener(cVar2);
            holder.f6698c.setOnClickListener(cVar2);
        } else {
            Vc.e.V(holder.f6699d, R.drawable.full_transparent_image, this.f6657b);
            d dVar = new d(t10);
            holder.f6699d.setOnClickListener(dVar);
            holder.f6697b.setOnClickListener(dVar);
            holder.f6698c.setOnClickListener(dVar);
        }
        LinearLayout linearLayout2 = holder.f6701f;
        if (linearLayout2 != null) {
            linearLayout2.removeAllViews();
            List<G7.a> h10 = t10.h();
            if (!h10.isEmpty()) {
                for (int i10 = 0; i10 < h10.size(); i10++) {
                    h10.get(i10).a(this.f6659d, this.f6657b, holder.f6701f, this.f6663h);
                }
            }
        }
        LinearLayout linearLayout3 = holder.f6702g;
        if (linearLayout3 != null) {
            linearLayout3.removeAllViews();
            List<G7.a> j10 = t10.j();
            if (!j10.isEmpty()) {
                for (int i11 = 0; i11 < j10.size(); i11++) {
                    j10.get(i11).a(this.f6659d, this.f6657b, holder.f6702g, this.f6663h);
                }
            }
        }
        e eVar = new e(t10);
        TextView textView = holder.f6696a;
        if (textView != null) {
            textView.setOnLongClickListener(eVar);
        }
        View view = holder.f6700e;
        if (view != null) {
            view.setOnLongClickListener(eVar);
        }
        ImageView imageView = holder.f6699d;
        if (imageView != null) {
            imageView.setOnLongClickListener(eVar);
        }
        ImageView imageView2 = holder.f6697b;
        if (imageView2 != null) {
            imageView2.setOnLongClickListener(eVar);
        }
        View view2 = holder.f6698c;
        if (view2 != null) {
            view2.setOnLongClickListener(eVar);
        }
        LinearLayout linearLayout4 = holder.f6701f;
        if (linearLayout4 != null) {
            linearLayout4.setOnLongClickListener(eVar);
        }
    }

    @Override
    public m onCreateViewHolder(ViewGroup parent, int viewType) {
        for (T t10 : this.f6656a) {
            if (t10.k() == viewType) {
                return t10.o(this.f6657b, parent, this.f6659d);
            }
        }
        return null;
    }

    public void s(T element) {
        int indexOf = this.f6656a.indexOf(element);
        if (indexOf < 0) {
            throw new RuntimeException("Item doesn't exist inside this adapter!");
        }
        try {
            notifyItemChanged(indexOf);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                notifyDataSetChanged();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void t(T element) {
        int indexOf = this.f6656a.indexOf(element);
        if (indexOf < 0) {
            throw new RuntimeException("Item doesn't exist inside this adapter!");
        }
        this.f6656a.remove(indexOf);
        try {
            notifyItemRemoved(indexOf);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                notifyDataSetChanged();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void u(List<T> element) {
        Iterator<T> it = element.iterator();
        while (it.hasNext()) {
            t(it.next());
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void v(List<T> mData) {
        this.f6656a.clear();
        this.f6656a.addAll(mData);
        try {
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void w(T eElement) {
        int indexOf;
        int indexOf2;
        T t10 = this.f6660e;
        this.f6661f = t10;
        this.f6660e = eElement;
        if (t10 != null && (indexOf2 = this.f6656a.indexOf(t10)) >= 0) {
            notifyItemChanged(indexOf2);
        }
        T t11 = this.f6660e;
        if (t11 == null || (indexOf = this.f6656a.indexOf(t11)) < 0) {
            return;
        }
        notifyItemChanged(indexOf);
    }

    public void x(T element) {
        int indexOf = this.f6656a.indexOf(element);
        if (indexOf >= 0) {
            this.f6656a.remove(indexOf);
            try {
                notifyItemRemoved(indexOf);
            } catch (Exception e10) {
                e10.printStackTrace();
                try {
                    notifyDataSetChanged();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public final void y(m holder, T eElement) {
        if (eElement.f6684f.f6678c) {
            Vc.e.V(holder.f6699d, R.drawable.tree_list_open_v4, this.f6657b);
            holder.f6699d.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
        } else {
            Vc.e.V(holder.f6699d, R.drawable.tree_list_closed_v3, this.f6657b);
            holder.f6699d.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.MID_ICON_TINT)));
        }
    }
}
