package Kd;

import Cd.b;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import kotlin.TypeCastException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class a implements Jd.b {

    public final ArrayList<Jd.a> f11112a;

    public PopupWindow f11113b;

    public final Context f11114c;

    public a(@NotNull Context context) {
        M.q(context, "context");
        this.f11114c = context;
        this.f11112a = new ArrayList<>();
    }

    @Override
    @NotNull
    public Jd.b a(@NotNull Jd.a menuItem) {
        M.q(menuItem, "menuItem");
        this.f11112a.remove(menuItem);
        return this;
    }

    @Override
    @NotNull
    public Jd.b b(@NotNull Jd.a menuItem) {
        M.q(menuItem, "menuItem");
        this.f11112a.add(menuItem);
        return this;
    }

    @Override
    public void c(@NotNull View anchorView) {
        M.q(anchorView, "anchorView");
        PopupWindow d10 = d();
        this.f11113b = d10;
        if (d10 != null) {
            Resources resources = this.f11114c.getResources();
            int i10 = b.e.f2952B0;
            d10.showAsDropDown(anchorView, (-resources.getDimensionPixelSize(i10)) * 12, (-this.f11114c.getResources().getDimensionPixelSize(i10)) * 12);
        }
        if (this.f11112a.size() == 0) {
            Log.e(Jd.b.class.getName(), "The menu is empty");
        }
    }

    public final PopupWindow d() {
        Object systemService = this.f11114c.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        View inflate = ((LayoutInflater) systemService).inflate(b.j.f3366F, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(b.g.f3295i1);
        M.h(recyclerView, "recyclerView");
        recyclerView.setLayoutManager(new LinearLayoutManager(this.f11114c));
        recyclerView.setAdapter(new b(this.f11114c, this.f11112a));
        recyclerView.setHasFixedSize(true);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        popupWindow.setContentView(inflate);
        popupWindow.setFocusable(true);
        popupWindow.setWidth(-2);
        popupWindow.setHeight(-2);
        return popupWindow;
    }

    @Override
    public void dismiss() {
        PopupWindow popupWindow = this.f11113b;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    @Override
    public int getItemCount() {
        return this.f11112a.size();
    }

    @Override
    @NotNull
    public Jd.b removeItem(int i10) {
        this.f11112a.remove(i10);
        return this;
    }
}
