package Kd;

import Cd.b;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class b extends RecyclerView.Adapter<a> {

    public final Context f11115a;

    public final List<Jd.a> f11116b;

    public final class a extends RecyclerView.ViewHolder {

        @NotNull
        public final TextView f11117a;

        @NotNull
        public final View f11118b;

        public final b f11119c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull b bVar, View root) {
            super(root);
            M.q(root, "root");
            this.f11119c = bVar;
            this.f11118b = root;
            View findViewById = root.findViewById(b.g.f3242T1);
            M.h(findViewById, "root.findViewById(R.id.text)");
            this.f11117a = (TextView) findViewById;
        }

        @NotNull
        public final View a() {
            return this.f11118b;
        }

        @NotNull
        public final TextView b() {
            return this.f11117a;
        }
    }

    public b(@NotNull Context context, @NotNull List<Jd.a> menuItems) {
        M.q(context, "context");
        M.q(menuItems, "menuItems");
        this.f11115a = context;
        this.f11116b = menuItems;
    }

    @Override
    public void onBindViewHolder(@NotNull a holder, int i10) {
        M.q(holder, "holder");
        holder.a().setOnClickListener(this.f11116b.get(i10).g());
        holder.b().setText(this.f11116b.get(i10).h());
        Integer f10 = this.f11116b.get(i10).f();
        if (f10 != null) {
            holder.b().setCompoundDrawablesWithIntrinsicBounds(ContextCompat.getDrawable(this.f11115a, f10.intValue()), (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    @Override
    public int getItemCount() {
        return this.f11116b.size();
    }

    @Override
    @NotNull
    public a onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        M.q(parent, "parent");
        View view = LayoutInflater.from(parent.getContext()).inflate(b.j.f3365E, parent, false);
        M.h(view, "view");
        return new a(this, view);
    }
}
