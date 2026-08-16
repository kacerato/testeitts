package Q7;

import F7.j;
import Vc.e;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;

public class a extends RecyclerView.Adapter<T7.a> {

    public final List<R7.b> f21975a;

    public Context f21976b;

    public Q7.b f21977c;

    public ColorINT f21978d;

    public LayoutInflater f21979e;

    public R7.b f21980f;

    public R7.b f21981g;

    public boolean f21982h;

    public int f21983i;

    public int f21984j;

    public int f21985k;

    public int f21986l;

    public class ViewOnClickListenerC0533a implements View.OnClickListener {

        public final R7.b f21987b;

        public ViewOnClickListenerC0533a(final R7.b val$eElement) {
            this.f21987b = val$eElement;
        }

        @Override
        public void onClick(View v10) {
            if (this.f21987b.m()) {
                a.this.f21977c.b(this.f21987b, v10);
            }
        }
    }

    public class b implements View.OnLongClickListener {

        public final R7.b f21989b;

        public b(final R7.b val$eElement) {
            this.f21989b = val$eElement;
        }

        @Override
        public boolean onLongClick(View v10) {
            a.this.f21977c.a(this.f21989b, v10);
            return true;
        }
    }

    public class c implements View.OnClickListener {

        public final R7.b f21991b;

        public c(final R7.b val$eElement) {
            this.f21991b = val$eElement;
        }

        @Override
        public void onClick(View v10) {
            a.this.f21977c.a(this.f21991b, v10);
        }
    }

    public class d implements View.OnClickListener {

        public final R7.b f21993b;

        public d(final R7.b val$eElement) {
            this.f21993b = val$eElement;
        }

        @Override
        public void onClick(View v10) {
            a.this.f21977c.a(this.f21993b, v10);
        }
    }

    public a(List<R7.b> mData, Context context, Q7.b callbacks) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f21975a = steppedArrayList;
        this.f21982h = false;
        this.f21983i = 0;
        this.f21984j = 0;
        this.f21985k = 0;
        this.f21986l = 0;
        steppedArrayList.clear();
        if (mData != null) {
            steppedArrayList.addAll(mData);
        }
        this.f21976b = context;
        this.f21977c = callbacks;
        if (this.f21979e == null) {
            this.f21979e = LayoutInflater.from(context);
        }
    }

    private static int s(Context context, int color) {
        if (context == null) {
            return color;
        }
        try {
            return context.getResources().getColor(color);
        } catch (Resources.NotFoundException unused) {
            return color;
        }
    }

    @Override
    public int getItemCount() {
        return this.f21975a.size();
    }

    @Override
    public int getItemViewType(int position) {
        return this.f21975a.get(position).k();
    }

    public void h(R7.b element) {
        for (int i10 = 0; i10 < this.f21975a.size(); i10++) {
            if (this.f21975a.get(i10).f6679a.equals(element.f6679a)) {
                return;
            }
        }
        int size = this.f21975a.size();
        this.f21975a.add(element);
        try {
            notifyItemInserted(size);
        } catch (Exception e10) {
            try {
                notifyDataSetChanged();
            } catch (Exception unused) {
                e10.printStackTrace();
            }
        }
    }

    public void i(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return;
        }
        for (int i10 = 0; i10 < recyclerView.getChildCount(); i10++) {
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(recyclerView.getChildAt(i10));
            if (childViewHolder instanceof T7.a) {
                j((T7.a) childViewHolder);
            }
        }
    }

    public final void j(T7.a holder) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        boolean z10 = this.f21982h;
        int i10 = z10 ? this.f21983i : this.f21985k;
        int i11 = z10 ? this.f21984j : this.f21986l;
        View view = holder.f24101h;
        if (view != null && i10 > 0 && (layoutParams2 = view.getLayoutParams()) != null && layoutParams2.height != i10) {
            layoutParams2.height = i10;
            holder.f24101h.setLayoutParams(layoutParams2);
        }
        View view2 = holder.f24102i;
        if (view2 == null || i11 <= 0 || (layoutParams = view2.getLayoutParams()) == null || layoutParams.height == i11) {
            return;
        }
        layoutParams.height = i11;
        holder.f24102i.setLayoutParams(layoutParams);
    }

    public void k() {
        boolean isEmpty = this.f21975a.isEmpty();
        this.f21975a.clear();
        if (isEmpty) {
            return;
        }
        try {
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Deprecated
    public List<R7.b> l() {
        return this.f21975a;
    }

    public R7.b m(int id2) {
        return this.f21975a.get(id2);
    }

    public ColorINT n() {
        return this.f21978d;
    }

    public int o(R7.b eElement) {
        return this.f21975a.indexOf(eElement);
    }

    @Override
    public void onBindViewHolder(T7.a holder, int position) {
        R7.b bVar = this.f21975a.get(position);
        bVar.A(this.f21976b, holder);
        j(holder);
        ViewOnClickListenerC0533a viewOnClickListenerC0533a = new ViewOnClickListenerC0533a(bVar);
        FrameLayout frameLayout = holder.f24098e;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(viewOnClickListenerC0533a);
        }
        TextView textView = holder.f24095b;
        if (textView != null) {
            textView.setText(bVar.g());
        }
        ImageView imageView = holder.f24104k;
        if (imageView != null) {
            imageView.setImageResource(R.drawable.empty_image);
        }
        ImageView imageView2 = holder.f24096c;
        if (imageView2 != null) {
            j jVar = bVar.f6680b;
            if (jVar != null) {
                jVar.a(this.f21976b, imageView2, holder.f24104k, bVar);
            }
            holder.f24096c.setOnClickListener(viewOnClickListenerC0533a);
        }
        if (holder.f24103j != null) {
            if (bVar.f() != null) {
                holder.f24103j.setVisibility(0);
                holder.f24103j.setText(bVar.f());
            } else {
                holder.f24103j.setVisibility(8);
            }
        }
        if (bVar.m()) {
            if (this.f21980f == bVar) {
                TextView textView2 = holder.f24095b;
                if (textView2 != null) {
                    textView2.setTextColor(s(this.f21976b, bVar.w()));
                }
                View view = holder.f24102i;
                if (view != null) {
                    e.u(view, this.f21976b, bVar.x());
                }
            } else {
                TextView textView3 = holder.f24095b;
                if (textView3 != null) {
                    textView3.setTextColor(s(this.f21976b, bVar.y()));
                }
                View view2 = holder.f24102i;
                if (view2 != null) {
                    e.u(view2, this.f21976b, bVar.v());
                }
            }
        }
        b bVar2 = new b(bVar);
        TextView textView4 = holder.f24095b;
        if (textView4 != null) {
            textView4.setOnLongClickListener(bVar2);
        }
        View view3 = holder.f24097d;
        if (view3 != null) {
            view3.setOnLongClickListener(bVar2);
        }
        View view4 = holder.f24094a;
        if (view4 != null) {
            view4.setOnLongClickListener(bVar2);
        }
        ImageView imageView3 = holder.f24096c;
        if (imageView3 != null) {
            imageView3.setOnLongClickListener(bVar2);
        }
        View view5 = holder.f24099f;
        if (view5 != null) {
            view5.setVisibility(8);
        }
        if (bVar.c()) {
            View view6 = holder.f24102i;
            if (view6 != null) {
                view6.setOnClickListener(new c(bVar));
            }
            TextView textView5 = holder.f24095b;
            if (textView5 != null) {
                textView5.setOnClickListener(new d(bVar));
            }
        } else {
            View view7 = holder.f24102i;
            if (view7 != null) {
                view7.setOnClickListener(viewOnClickListenerC0533a);
            }
            TextView textView6 = holder.f24095b;
            if (textView6 != null) {
                textView6.setOnClickListener(viewOnClickListenerC0533a);
            }
        }
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(holder.itemView, this.f21976b);
    }

    @Override
    public T7.a onCreateViewHolder(ViewGroup parent, int viewType) {
        for (R7.b bVar : this.f21975a) {
            if (bVar.k() == viewType) {
                return bVar.z(this.f21976b, parent, this.f21979e);
            }
        }
        return null;
    }

    public void r(List<R7.b> deleteElements) {
        if (deleteElements.isEmpty()) {
            return;
        }
        this.f21975a.removeAll(deleteElements);
        try {
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Deprecated
    public void t(List<R7.b> mData) {
        this.f21975a.clear();
        this.f21975a.addAll(mData);
    }

    public void u(List<R7.b> mData, boolean notify) {
        this.f21975a.clear();
        this.f21975a.addAll(mData);
        if (notify) {
            try {
                notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void v(boolean gridMode, int iconHeightPx, int titleHeightPx) {
        this.f21982h = gridMode;
        if (gridMode) {
            this.f21983i = iconHeightPx;
            this.f21984j = titleHeightPx;
        } else {
            this.f21985k = iconHeightPx;
            this.f21986l = titleHeightPx;
        }
    }

    public void w(R7.b eElement) {
        int indexOf;
        int indexOf2;
        R7.b bVar = this.f21980f;
        if (bVar == eElement) {
            return;
        }
        this.f21981g = bVar;
        this.f21980f = eElement;
        if (bVar != null && (indexOf2 = this.f21975a.indexOf(bVar)) >= 0) {
            notifyItemChanged(indexOf2);
        }
        R7.b bVar2 = this.f21980f;
        if (bVar2 == null || (indexOf = this.f21975a.indexOf(bVar2)) < 0) {
            return;
        }
        notifyItemChanged(indexOf);
    }

    public void x(ColorINT selectedElementColor) {
        this.f21978d = selectedElementColor;
    }

    public a(Context context, Q7.b callbacks) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f21975a = steppedArrayList;
        this.f21982h = false;
        this.f21983i = 0;
        this.f21984j = 0;
        this.f21985k = 0;
        this.f21986l = 0;
        steppedArrayList.clear();
        this.f21976b = context;
        this.f21977c = callbacks;
        if (this.f21979e == null) {
            this.f21979e = LayoutInflater.from(context);
        }
    }
}
