package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
import w1.C15879a;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class k<S> extends t<S> {

    public static final String f64277m = "THEME_RES_ID_KEY";

    public static final String f64278n = "GRID_SELECTOR_KEY";

    public static final String f64279o = "CALENDAR_CONSTRAINTS_KEY";

    public static final String f64280p = "CURRENT_MONTH_KEY";

    public static final int f64281q = 3;

    @VisibleForTesting
    public static final Object f64282r = "MONTHS_VIEW_GROUP_TAG";

    @VisibleForTesting
    public static final Object f64283s = "NAVIGATION_PREV_TAG";

    @VisibleForTesting
    public static final Object f64284t = "NAVIGATION_NEXT_TAG";

    @VisibleForTesting
    public static final Object f64285u = "SELECTOR_TOGGLE_TAG";

    @StyleRes
    public int f64286c;

    @Nullable
    public com.google.android.material.datepicker.f<S> f64287d;

    @Nullable
    public com.google.android.material.datepicker.a f64288e;

    @Nullable
    public p f64289f;

    public EnumC0963k f64290g;

    public com.google.android.material.datepicker.c f64291h;

    public RecyclerView f64292i;

    public RecyclerView f64293j;

    public View f64294k;

    public View f64295l;

    public class a implements Runnable {

        public final int f64296b;

        public a(int i10) {
            this.f64296b = i10;
        }

        @Override
        public void run() {
            k.this.f64293j.smoothScrollToPosition(this.f64296b);
        }
    }

    public class b extends AccessibilityDelegateCompat {
        public b() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    public class c extends w {

        public final int f64299c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, int i10, boolean z10, int i11) {
            super(context, i10, z10);
            this.f64299c = i11;
        }

        @Override
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            if (this.f64299c == 0) {
                iArr[0] = k.this.f64293j.getWidth();
                iArr[1] = k.this.f64293j.getWidth();
            } else {
                iArr[0] = k.this.f64293j.getHeight();
                iArr[1] = k.this.f64293j.getHeight();
            }
        }
    }

    public class d implements l {
        public d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a(long j10) {
            if (k.this.f64288e.g().a(j10)) {
                k.this.f64287d.Q(j10);
                Iterator<s<S>> it = k.this.f64386b.iterator();
                while (it.hasNext()) {
                    it.next().b(k.this.f64287d.N());
                }
                k.this.f64293j.getAdapter().notifyDataSetChanged();
                if (k.this.f64292i != null) {
                    k.this.f64292i.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    public class e extends RecyclerView.ItemDecoration {

        public final Calendar f64302a = y.v();

        public final Calendar f64303b = y.v();

        public e() {
        }

        @Override
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if ((recyclerView.getAdapter() instanceof z) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                z zVar = (z) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : k.this.f64287d.g0()) {
                    Long l10 = pair.first;
                    if (l10 != null && pair.second != null) {
                        this.f64302a.setTimeInMillis(l10.longValue());
                        this.f64303b.setTimeInMillis(pair.second.longValue());
                        int i10 = zVar.i(this.f64302a.get(1));
                        int i11 = zVar.i(this.f64303b.get(1));
                        View findViewByPosition = gridLayoutManager.findViewByPosition(i10);
                        View findViewByPosition2 = gridLayoutManager.findViewByPosition(i11);
                        int spanCount = i10 / gridLayoutManager.getSpanCount();
                        int spanCount2 = i11 / gridLayoutManager.getSpanCount();
                        int i12 = spanCount;
                        while (i12 <= spanCount2) {
                            if (gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i12) != null) {
                                canvas.drawRect(i12 == spanCount ? findViewByPosition.getLeft() + (findViewByPosition.getWidth() / 2) : 0, r9.getTop() + k.this.f64291h.f64248d.e(), i12 == spanCount2 ? findViewByPosition2.getLeft() + (findViewByPosition2.getWidth() / 2) : recyclerView.getWidth(), r9.getBottom() - k.this.f64291h.f64248d.b(), k.this.f64291h.f64252h);
                            }
                            i12++;
                        }
                    }
                }
            }
        }
    }

    public class f extends AccessibilityDelegateCompat {
        public f() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setHintText(k.this.f64295l.getVisibility() == 0 ? k.this.getString(C15879a.m.f124068S0) : k.this.getString(C15879a.m.f124064Q0));
        }
    }

    public class g extends RecyclerView.OnScrollListener {

        public final r f64306a;

        public final MaterialButton f64307b;

        public g(r rVar, MaterialButton materialButton) {
            this.f64306a = rVar;
            this.f64307b = materialButton;
        }

        @Override
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i10) {
            if (i10 == 0) {
                recyclerView.announceForAccessibility(this.f64307b.getText());
            }
        }

        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
            int findFirstVisibleItemPosition = i10 < 0 ? k.this.v().findFirstVisibleItemPosition() : k.this.v().findLastVisibleItemPosition();
            k.this.f64289f = this.f64306a.h(findFirstVisibleItemPosition);
            this.f64307b.setText(this.f64306a.i(findFirstVisibleItemPosition));
        }
    }

    public class h implements View.OnClickListener {
        public h() {
        }

        @Override
        public void onClick(View view) {
            k.this.A();
        }
    }

    public class i implements View.OnClickListener {

        public final r f64310b;

        public i(r rVar) {
            this.f64310b = rVar;
        }

        @Override
        public void onClick(View view) {
            int findFirstVisibleItemPosition = k.this.v().findFirstVisibleItemPosition() + 1;
            if (findFirstVisibleItemPosition < k.this.f64293j.getAdapter().getItemCount()) {
                k.this.y(this.f64310b.h(findFirstVisibleItemPosition));
            }
        }
    }

    public class j implements View.OnClickListener {

        public final r f64312b;

        public j(r rVar) {
            this.f64312b = rVar;
        }

        @Override
        public void onClick(View view) {
            int findLastVisibleItemPosition = k.this.v().findLastVisibleItemPosition() - 1;
            if (findLastVisibleItemPosition >= 0) {
                k.this.y(this.f64312b.h(findLastVisibleItemPosition));
            }
        }
    }

    public enum EnumC0963k {
        DAY,
        YEAR
    }

    public interface l {
        void a(long j10);
    }

    @Px
    public static int u(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(C15879a.f.f123010G3);
    }

    @NonNull
    public static <T> k<T> w(@NonNull com.google.android.material.datepicker.f<T> fVar, @StyleRes int i10, @NonNull com.google.android.material.datepicker.a aVar) {
        k<T> kVar = new k<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i10);
        bundle.putParcelable(f64278n, fVar);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        bundle.putParcelable(f64280p, aVar.l());
        kVar.setArguments(bundle);
        return kVar;
    }

    public void A() {
        EnumC0963k enumC0963k = this.f64290g;
        EnumC0963k enumC0963k2 = EnumC0963k.YEAR;
        if (enumC0963k == enumC0963k2) {
            z(EnumC0963k.DAY);
        } else if (enumC0963k == EnumC0963k.DAY) {
            z(enumC0963k2);
        }
    }

    @Override
    public boolean e(@NonNull s<S> sVar) {
        return super.e(sVar);
    }

    @Override
    @Nullable
    public com.google.android.material.datepicker.f<S> g() {
        return this.f64287d;
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f64286c = bundle.getInt("THEME_RES_ID_KEY");
        this.f64287d = (com.google.android.material.datepicker.f) bundle.getParcelable(f64278n);
        this.f64288e = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f64289f = (p) bundle.getParcelable(f64280p);
    }

    @Override
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f64286c);
        this.f64291h = new com.google.android.material.datepicker.c(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        p m10 = this.f64288e.m();
        if (com.google.android.material.datepicker.l.C(contextThemeWrapper)) {
            i10 = C15879a.k.f124019u0;
            i11 = 1;
        } else {
            i10 = C15879a.k.f124009p0;
            i11 = 0;
        }
        View inflate = cloneInContext.inflate(i10, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(C15879a.h.f123654U2);
        ViewCompat.setAccessibilityDelegate(gridView, new b());
        gridView.setAdapter((ListAdapter) new com.google.android.material.datepicker.j());
        gridView.setNumColumns(m10.f64367e);
        gridView.setEnabled(false);
        this.f64293j = (RecyclerView) inflate.findViewById(C15879a.h.f123675X2);
        this.f64293j.setLayoutManager(new c(getContext(), i11, false, i11));
        this.f64293j.setTag(f64282r);
        r rVar = new r(contextThemeWrapper, this.f64287d, this.f64288e, new d());
        this.f64293j.setAdapter(rVar);
        int integer = contextThemeWrapper.getResources().getInteger(C15879a.i.f123902v);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(C15879a.h.f123697a3);
        this.f64292i = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f64292i.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f64292i.setAdapter(new z(this));
            this.f64292i.addItemDecoration(q());
        }
        if (inflate.findViewById(C15879a.h.f123605N2) != null) {
            p(inflate, rVar);
        }
        if (!com.google.android.material.datepicker.l.C(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.f64293j);
        }
        this.f64293j.scrollToPosition(rVar.j(this.f64289f));
        return inflate;
    }

    @Override
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f64286c);
        bundle.putParcelable(f64278n, this.f64287d);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f64288e);
        bundle.putParcelable(f64280p, this.f64289f);
    }

    public final void p(@NonNull View view, @NonNull r rVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(C15879a.h.f123605N2);
        materialButton.setTag(f64285u);
        ViewCompat.setAccessibilityDelegate(materialButton, new f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(C15879a.h.f123619P2);
        materialButton2.setTag(f64283s);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(C15879a.h.f123612O2);
        materialButton3.setTag(f64284t);
        this.f64294k = view.findViewById(C15879a.h.f123697a3);
        this.f64295l = view.findViewById(C15879a.h.f123647T2);
        z(EnumC0963k.DAY);
        materialButton.setText(this.f64289f.t(view.getContext()));
        this.f64293j.addOnScrollListener(new g(rVar, materialButton));
        materialButton.setOnClickListener(new h());
        materialButton3.setOnClickListener(new i(rVar));
        materialButton2.setOnClickListener(new j(rVar));
    }

    @NonNull
    public final RecyclerView.ItemDecoration q() {
        return new e();
    }

    @Nullable
    public com.google.android.material.datepicker.a r() {
        return this.f64288e;
    }

    public com.google.android.material.datepicker.c s() {
        return this.f64291h;
    }

    @Nullable
    public p t() {
        return this.f64289f;
    }

    @NonNull
    public LinearLayoutManager v() {
        return (LinearLayoutManager) this.f64293j.getLayoutManager();
    }

    public final void x(int i10) {
        this.f64293j.post(new a(i10));
    }

    public void y(p pVar) {
        r rVar = (r) this.f64293j.getAdapter();
        int j10 = rVar.j(pVar);
        int j11 = j10 - rVar.j(this.f64289f);
        boolean z10 = Math.abs(j11) > 3;
        boolean z11 = j11 > 0;
        this.f64289f = pVar;
        if (z10 && z11) {
            this.f64293j.scrollToPosition(j10 - 3);
            x(j10);
        } else if (!z10) {
            x(j10);
        } else {
            this.f64293j.scrollToPosition(j10 + 3);
            x(j10);
        }
    }

    public void z(EnumC0963k enumC0963k) {
        this.f64290g = enumC0963k;
        if (enumC0963k == EnumC0963k.YEAR) {
            this.f64292i.getLayoutManager().scrollToPosition(((z) this.f64292i.getAdapter()).i(this.f64289f.f64366d));
            this.f64294k.setVisibility(0);
            this.f64295l.setVisibility(8);
        } else if (enumC0963k == EnumC0963k.DAY) {
            this.f64294k.setVisibility(8);
            this.f64295l.setVisibility(0);
            y(this.f64289f);
        }
    }
}
