package Od;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.skydoves.powerspinner.PowerSpinnerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class d extends RecyclerView.Adapter<a> implements k<e> {

    public int f16615a;

    @NotNull
    public final PowerSpinnerView f16616b;

    @Nullable
    public g<e> f16617c;

    public final int f16618d;

    public final List<e> f16619e;

    public static final class a extends RecyclerView.ViewHolder {

        public final Pd.a f16620a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull Pd.a binding) {
            super(binding.getRoot());
            M.p(binding, "binding");
            this.f16620a = binding;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x008a, code lost:
        
            if (r1 != null) goto L28;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a(@NotNull e item, @NotNull PowerSpinnerView spinnerView) {
            Drawable m10;
            M.p(item, "item");
            M.p(spinnerView, "spinnerView");
            AppCompatTextView appCompatTextView = this.f16620a.f21262b;
            appCompatTextView.setText(item.q());
            Integer t10 = item.t();
            if (t10 != null) {
                appCompatTextView.setTypeface(appCompatTextView.getTypeface(), t10.intValue());
            } else {
                appCompatTextView.setTypeface(spinnerView.getTypeface());
            }
            Integer l10 = item.l();
            appCompatTextView.setGravity(l10 != null ? l10.intValue() : spinnerView.getGravity());
            Float s10 = item.s();
            appCompatTextView.setTextSize(0, s10 != null ? s10.floatValue() : spinnerView.getTextSize());
            Integer r10 = item.r();
            appCompatTextView.setTextColor(r10 != null ? r10.intValue() : spinnerView.getCurrentTextColor());
            Integer o10 = item.o();
            appCompatTextView.setCompoundDrawablePadding(o10 != null ? o10.intValue() : spinnerView.getCompoundDrawablePadding());
            Integer p10 = item.p();
            if (p10 != null) {
                m10 = ResourcesCompat.getDrawable(spinnerView.getResources(), p10.intValue(), null);
            }
            m10 = item.m();
            int n10 = item.n();
            if (n10 == 48) {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, m10, (Drawable) null, (Drawable) null);
            } else if (n10 == 80) {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, m10);
            } else if (n10 == 8388611) {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(m10, (Drawable) null, (Drawable) null, (Drawable) null);
            } else if (n10 == 8388613) {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, m10, (Drawable) null);
            }
            this.f16620a.getRoot().setPadding(spinnerView.getPaddingLeft(), spinnerView.getPaddingTop(), spinnerView.getPaddingRight(), spinnerView.getPaddingBottom());
        }
    }

    public static final class b implements View.OnClickListener {

        public final a f16621b;

        public final d f16622c;

        public final Pd.a f16623d;

        public b(a aVar, d dVar, Pd.a aVar2) {
            this.f16621b = aVar;
            this.f16622c = dVar;
            this.f16623d = aVar2;
        }

        @Override
        public final void onClick(View view) {
            Integer valueOf = Integer.valueOf(this.f16621b.getAdapterPosition());
            if (valueOf.intValue() == -1) {
                valueOf = null;
            }
            if (valueOf != null) {
                this.f16622c.b(valueOf.intValue());
            }
        }
    }

    public d(@NotNull PowerSpinnerView powerSpinnerView) {
        M.p(powerSpinnerView, "powerSpinnerView");
        this.f16615a = powerSpinnerView.getSelectedIndex();
        this.f16616b = powerSpinnerView;
        this.f16618d = 12;
        this.f16619e = new ArrayList();
        e().setCompoundDrawablePadding(12);
    }

    @Override
    public void a(int i10) {
        this.f16615a = i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
    
        if (r2 != null) goto L15;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(int i10) {
        Drawable m10;
        if (i10 == -1) {
            return;
        }
        e eVar = this.f16619e.get(i10);
        PowerSpinnerView e10 = e();
        Integer o10 = eVar.o();
        e10.setCompoundDrawablePadding(o10 != null ? o10.intValue() : e().getCompoundDrawablePadding());
        Integer p10 = eVar.p();
        if (p10 != null) {
            m10 = ResourcesCompat.getDrawable(e().getResources(), p10.intValue(), null);
        }
        m10 = eVar.m();
        int n10 = eVar.n();
        if (n10 == 48) {
            e().setCompoundDrawablesWithIntrinsicBounds((Drawable) null, m10, (Drawable) null, (Drawable) null);
        } else if (n10 == 80) {
            e().setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, m10);
        } else if (n10 == 8388611) {
            e().setCompoundDrawablesWithIntrinsicBounds(m10, (Drawable) null, (Drawable) null, (Drawable) null);
        } else if (n10 == 8388613) {
            e().setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, m10, (Drawable) null);
        }
        int index = getIndex();
        a(i10);
        e().q(i10, eVar.q());
        g<e> d10 = d();
        if (d10 != null) {
            Integer valueOf = Integer.valueOf(index);
            if (valueOf.intValue() == -1) {
                valueOf = null;
            }
            d10.a(index, valueOf != null ? this.f16619e.get(index) : null, i10, eVar);
        }
    }

    @Override
    public void c(@Nullable g<e> gVar) {
        this.f16617c = gVar;
    }

    @Override
    @Nullable
    public g<e> d() {
        return this.f16617c;
    }

    @Override
    @NotNull
    public PowerSpinnerView e() {
        return this.f16616b;
    }

    @Override
    public void f(@NotNull List<? extends e> itemList) {
        M.p(itemList, "itemList");
        this.f16619e.clear();
        this.f16619e.addAll(itemList);
        notifyDataSetChanged();
    }

    @Override
    public void onBindViewHolder(@NotNull a holder, int i10) {
        M.p(holder, "holder");
        holder.a(this.f16619e.get(i10), e());
    }

    @Override
    public int getIndex() {
        return this.f16615a;
    }

    @Override
    public int getItemCount() {
        return this.f16619e.size();
    }

    @Override
    @NotNull
    public a onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        M.p(parent, "parent");
        Pd.a d10 = Pd.a.d(LayoutInflater.from(parent.getContext()), parent, false);
        M.o(d10, "ItemDefaultPowerSpinnerL\u2026nt,\n        false\n      )");
        a aVar = new a(d10);
        d10.getRoot().setOnClickListener(new b(aVar, this, d10));
        return aVar;
    }
}
