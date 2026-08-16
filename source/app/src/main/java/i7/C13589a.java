package i7;

import F7.j;
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
import l7.C14056a;

public class C13589a extends RecyclerView.Adapter<C14056a> {

    public final List<j7.b> f91567a;

    public Context f91568b;

    public i7.b f91569c;

    public ColorINT f91570d;

    public LayoutInflater f91571e;

    public j7.b f91572f;

    public j7.b f91573g;

    public boolean f91574h;

    public int f91575i;

    public int f91576j;

    public int f91577k;

    public int f91578l;

    public RecyclerView f91579m;

    public class ViewOnClickListenerC1771a implements View.OnClickListener {

        public final j7.b f91580b;

        public ViewOnClickListenerC1771a(final j7.b val$eElement) {
            this.f91580b = val$eElement;
        }

        @Override
        public void onClick(View v10) {
            if (this.f91580b.m()) {
                C13589a.this.f91569c.a(this.f91580b, v10);
            }
        }
    }

    public class b implements View.OnLongClickListener {

        public final j7.b f91582b;

        public b(final j7.b val$eElement) {
            this.f91582b = val$eElement;
        }

        @Override
        public boolean onLongClick(View v10) {
            C13589a.this.f91569c.b(this.f91582b, v10);
            return true;
        }
    }

    public class c implements View.OnClickListener {

        public final j7.b f91584b;

        public c(final j7.b val$eElement) {
            this.f91584b = val$eElement;
        }

        @Override
        public void onClick(View v10) {
            C13589a.this.f91569c.b(this.f91584b, v10);
        }
    }

    public class d implements View.OnClickListener {

        public final j7.b f91586b;

        public d(final j7.b val$eElement) {
            this.f91586b = val$eElement;
        }

        @Override
        public void onClick(View v10) {
            C13589a.this.f91569c.b(this.f91586b, v10);
        }
    }

    public class e implements Runnable {

        public final int f91588b;

        public e(final int val$idx) {
            this.f91588b = val$idx;
        }

        @Override
        public void run() {
            try {
                C13589a.this.notifyItemChanged(this.f91588b);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public C13589a(List<j7.b> mData, Context context, i7.b callbacks) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f91567a = steppedArrayList;
        this.f91574h = false;
        this.f91575i = 0;
        this.f91576j = 0;
        this.f91577k = 0;
        this.f91578l = 0;
        steppedArrayList.clear();
        if (mData != null) {
            steppedArrayList.addAll(mData);
        }
        this.f91568b = context;
        this.f91569c = callbacks;
        if (this.f91571e == null) {
            this.f91571e = LayoutInflater.from(context);
        }
    }

    public static int t(Context context, int color) {
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
        return this.f91567a.size();
    }

    @Override
    public int getItemViewType(int position) {
        return this.f91567a.get(position).k();
    }

    public void h(j7.b element) {
        for (int i10 = 0; i10 < this.f91567a.size(); i10++) {
            if (this.f91567a.get(i10).f6679a.equals(element.f6679a)) {
                return;
            }
        }
        int size = this.f91567a.size();
        this.f91567a.add(element);
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
            if (childViewHolder instanceof C14056a) {
                j((C14056a) childViewHolder);
            }
        }
    }

    public final void j(C14056a holder) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        boolean z10 = this.f91574h;
        int i10 = z10 ? this.f91575i : this.f91577k;
        int i11 = z10 ? this.f91576j : this.f91578l;
        View view = holder.f96187h;
        if (view != null && i10 > 0 && (layoutParams2 = view.getLayoutParams()) != null && layoutParams2.height != i10) {
            layoutParams2.height = i10;
            holder.f96187h.setLayoutParams(layoutParams2);
        }
        View view2 = holder.f96188i;
        if (view2 == null || i11 <= 0 || (layoutParams = view2.getLayoutParams()) == null || layoutParams.height == i11) {
            return;
        }
        layoutParams.height = i11;
        holder.f96188i.setLayoutParams(layoutParams);
    }

    public void k() {
        boolean isEmpty = this.f91567a.isEmpty();
        this.f91567a.clear();
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
    public List<j7.b> l() {
        return this.f91567a;
    }

    public j7.b m(int id2) {
        return this.f91567a.get(id2);
    }

    public ColorINT n() {
        return this.f91570d;
    }

    public int o(j7.b eElement) {
        return this.f91567a.indexOf(eElement);
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f91579m = recyclerView;
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        if (this.f91579m == recyclerView) {
            this.f91579m = null;
        }
    }

    public final void p(final int idx) {
        RecyclerView recyclerView = this.f91579m;
        if (recyclerView != null) {
            recyclerView.post(new e(idx));
            return;
        }
        try {
            notifyItemChanged(idx);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void onBindViewHolder(C14056a holder, int position) {
        j7.b bVar = this.f91567a.get(position);
        bVar.A(this.f91568b, holder);
        j(holder);
        ViewOnClickListenerC1771a viewOnClickListenerC1771a = new ViewOnClickListenerC1771a(bVar);
        FrameLayout frameLayout = holder.f96184e;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(viewOnClickListenerC1771a);
        }
        TextView textView = holder.f96181b;
        if (textView != null) {
            textView.setText(bVar.g());
        }
        ImageView imageView = holder.f96190k;
        if (imageView != null) {
            imageView.setImageResource(R.drawable.empty_image);
        }
        ImageView imageView2 = holder.f96182c;
        if (imageView2 != null) {
            j jVar = bVar.f6680b;
            if (jVar != null) {
                jVar.a(this.f91568b, imageView2, holder.f96190k, bVar);
            }
            holder.f96182c.setOnClickListener(viewOnClickListenerC1771a);
        }
        if (holder.f96189j != null) {
            if (bVar.f() != null) {
                holder.f96189j.setVisibility(0);
                holder.f96189j.setText(bVar.f());
            } else {
                holder.f96189j.setVisibility(8);
            }
        }
        if (bVar.m()) {
            if (this.f91572f == bVar) {
                TextView textView2 = holder.f96181b;
                if (textView2 != null) {
                    textView2.setTextColor(t(this.f91568b, bVar.w()));
                }
                View view = holder.f96188i;
                if (view != null) {
                    Vc.e.u(view, this.f91568b, bVar.x());
                }
            } else {
                TextView textView3 = holder.f96181b;
                if (textView3 != null) {
                    textView3.setTextColor(t(this.f91568b, bVar.y()));
                }
                View view2 = holder.f96188i;
                if (view2 != null) {
                    Vc.e.u(view2, this.f91568b, bVar.v());
                }
            }
        }
        b bVar2 = new b(bVar);
        TextView textView4 = holder.f96181b;
        if (textView4 != null) {
            textView4.setOnLongClickListener(bVar2);
        }
        View view3 = holder.f96183d;
        if (view3 != null) {
            view3.setOnLongClickListener(bVar2);
        }
        View view4 = holder.f96180a;
        if (view4 != null) {
            view4.setOnLongClickListener(bVar2);
        }
        ImageView imageView3 = holder.f96182c;
        if (imageView3 != null) {
            imageView3.setOnLongClickListener(bVar2);
        }
        View view5 = holder.f96185f;
        if (view5 != null) {
            view5.setVisibility(8);
        }
        if (bVar.c()) {
            View view6 = holder.f96188i;
            if (view6 != null) {
                view6.setOnClickListener(new c(bVar));
            }
            TextView textView5 = holder.f96181b;
            if (textView5 != null) {
                textView5.setOnClickListener(new d(bVar));
                return;
            }
            return;
        }
        View view7 = holder.f96188i;
        if (view7 != null) {
            view7.setOnClickListener(viewOnClickListenerC1771a);
        }
        TextView textView6 = holder.f96181b;
        if (textView6 != null) {
            textView6.setOnClickListener(viewOnClickListenerC1771a);
        }
    }

    @Override
    public C14056a onCreateViewHolder(ViewGroup parent, int viewType) {
        for (j7.b bVar : this.f91567a) {
            if (bVar.k() == viewType) {
                return bVar.z(this.f91568b, parent, this.f91571e);
            }
        }
        return null;
    }

    public void s(List<j7.b> deleteElements) {
        if (deleteElements.isEmpty()) {
            return;
        }
        this.f91567a.removeAll(deleteElements);
        try {
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Deprecated
    public void u(List<j7.b> mData) {
        this.f91567a.clear();
        this.f91567a.addAll(mData);
    }

    public void v(List<j7.b> mData, boolean notify) {
        this.f91567a.clear();
        this.f91567a.addAll(mData);
        if (notify) {
            try {
                notifyDataSetChanged();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void w(boolean gridMode, int iconHeightPx, int titleHeightPx) {
        this.f91574h = gridMode;
        if (gridMode) {
            this.f91575i = iconHeightPx;
            this.f91576j = titleHeightPx;
        } else {
            this.f91577k = iconHeightPx;
            this.f91578l = titleHeightPx;
        }
    }

    public void x(j7.b eElement) {
        int indexOf;
        int indexOf2;
        j7.b bVar = this.f91572f;
        if (bVar == eElement) {
            return;
        }
        this.f91573g = bVar;
        this.f91572f = eElement;
        if (bVar != null && (indexOf2 = this.f91567a.indexOf(bVar)) >= 0) {
            p(indexOf2);
        }
        j7.b bVar2 = this.f91572f;
        if (bVar2 == null || (indexOf = this.f91567a.indexOf(bVar2)) < 0) {
            return;
        }
        p(indexOf);
    }

    public void y(ColorINT selectedElementColor) {
        this.f91570d = selectedElementColor;
    }

    public C13589a(Context context, i7.b callbacks) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f91567a = steppedArrayList;
        this.f91574h = false;
        this.f91575i = 0;
        this.f91576j = 0;
        this.f91577k = 0;
        this.f91578l = 0;
        steppedArrayList.clear();
        this.f91568b = context;
        this.f91569c = callbacks;
        if (this.f91571e == null) {
            this.f91571e = LayoutInflater.from(context);
        }
    }
}
