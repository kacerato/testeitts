package Od;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.skydoves.powerspinner.PowerSpinnerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class b extends RecyclerView.Adapter<a> implements k<CharSequence> {

    public int f16605a;

    @NotNull
    public final PowerSpinnerView f16606b;

    @Nullable
    public g<CharSequence> f16607c;

    public final List<CharSequence> f16608d;

    public static final class a extends RecyclerView.ViewHolder {

        public final Pd.a f16609a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull Pd.a binding) {
            super(binding.getRoot());
            M.p(binding, "binding");
            this.f16609a = binding;
        }

        public final void a(@NotNull CharSequence item, @NotNull PowerSpinnerView spinnerView) {
            M.p(item, "item");
            M.p(spinnerView, "spinnerView");
            AppCompatTextView appCompatTextView = this.f16609a.f21262b;
            appCompatTextView.setText(item);
            appCompatTextView.setTypeface(spinnerView.getTypeface());
            appCompatTextView.setGravity(spinnerView.getGravity());
            appCompatTextView.setTextSize(0, spinnerView.getTextSize());
            appCompatTextView.setTextColor(spinnerView.getCurrentTextColor());
            this.f16609a.getRoot().setPadding(spinnerView.getPaddingLeft(), spinnerView.getPaddingTop(), spinnerView.getPaddingRight(), spinnerView.getPaddingBottom());
        }
    }

    public static final class ViewOnClickListenerC0472b implements View.OnClickListener {

        public final a f16610b;

        public final b f16611c;

        public final Pd.a f16612d;

        public ViewOnClickListenerC0472b(a aVar, b bVar, Pd.a aVar2) {
            this.f16610b = aVar;
            this.f16611c = bVar;
            this.f16612d = aVar2;
        }

        @Override
        public final void onClick(View view) {
            Integer valueOf = Integer.valueOf(this.f16610b.getAdapterPosition());
            if (valueOf.intValue() == -1) {
                valueOf = null;
            }
            if (valueOf != null) {
                this.f16611c.b(valueOf.intValue());
            }
        }
    }

    public b(@NotNull PowerSpinnerView powerSpinnerView) {
        M.p(powerSpinnerView, "powerSpinnerView");
        this.f16605a = powerSpinnerView.getSelectedIndex();
        this.f16606b = powerSpinnerView;
        this.f16608d = new ArrayList();
    }

    @Override
    public void a(int i10) {
        this.f16605a = i10;
    }

    @Override
    public void b(int i10) {
        if (i10 == -1) {
            return;
        }
        int index = getIndex();
        a(i10);
        e().q(i10, this.f16608d.get(i10));
        g<CharSequence> d10 = d();
        if (d10 != null) {
            Integer valueOf = Integer.valueOf(index);
            if (valueOf.intValue() == -1) {
                valueOf = null;
            }
            d10.a(index, valueOf != null ? this.f16608d.get(index) : null, i10, this.f16608d.get(i10));
        }
    }

    @Override
    public void c(@Nullable g<CharSequence> gVar) {
        this.f16607c = gVar;
    }

    @Override
    @Nullable
    public g<CharSequence> d() {
        return this.f16607c;
    }

    @Override
    @NotNull
    public PowerSpinnerView e() {
        return this.f16606b;
    }

    @Override
    public void f(@NotNull List<? extends CharSequence> itemList) {
        M.p(itemList, "itemList");
        this.f16608d.clear();
        this.f16608d.addAll(itemList);
        notifyDataSetChanged();
    }

    @Override
    public void onBindViewHolder(@NotNull a holder, int i10) {
        M.p(holder, "holder");
        holder.a(this.f16608d.get(i10), e());
    }

    @Override
    public int getIndex() {
        return this.f16605a;
    }

    @Override
    public int getItemCount() {
        return this.f16608d.size();
    }

    @Override
    @NotNull
    public a onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        M.p(parent, "parent");
        Pd.a d10 = Pd.a.d(LayoutInflater.from(parent.getContext()), parent, false);
        M.o(d10, "ItemDefaultPowerSpinnerL\u2026nt,\n        false\n      )");
        a aVar = new a(d10);
        d10.getRoot().setOnClickListener(new ViewOnClickListenerC0472b(aVar, this, d10));
        return aVar;
    }
}
