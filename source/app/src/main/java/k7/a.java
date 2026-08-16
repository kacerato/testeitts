package K7;

import U5.a;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;
import org.apache.commons.lang3.ArrayUtils;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f10921f0 = "FilterSearchView";

    public TextView f10922X;

    public RadioGroup f10923Y;

    public int f10924Z;

    public final U5.a f10925a0;

    public f f10926b0;

    public Z5.b f10927c0;

    public Z5.b f10928d0;

    public final List<Ac.b> f10929e0 = new C0363a();

    public class C0363a extends SteppedArrayList<Ac.b> {
        public C0363a() {
            add(new Ac.b(Lang.j(Lang.T.STORE_FILTER_DOWNLOADS_LH)));
            add(new Ac.b(Lang.j(Lang.T.STORE_FILTER_DOWNLOADS_HL)));
            add(new Ac.b(Lang.j(Lang.T.STORE_FILTER_PRICE_LH)));
            add(new Ac.b(Lang.j(Lang.T.STORE_FILTER_PRICE_HL)));
            add(new Ac.b(Lang.j(Lang.T.STORE_FILTER_DATE_OF)));
            add(new Ac.b(Lang.j(Lang.T.STORE_FILTER_DATE_FO)));
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class c implements RadioGroup.OnCheckedChangeListener {
        public c() {
        }

        @Override
        public void onCheckedChanged(RadioGroup radioGroup, int i10) {
            a.this.f10924Z = i10;
            a.this.f10925a0.r(a.EnumC0713a.values()[a.this.f10924Z]);
            a.this.f10926b0.a();
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View v10) {
            if (a.this.f10927c0.c()) {
                a.this.f10928d0.d(false);
            }
            a.this.f10925a0.p(a.this.f10927c0.c());
            a.this.f10925a0.q(a.this.f10928d0.c());
            a.this.f10926b0.a();
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View v10) {
            if (a.this.f10928d0.c()) {
                a.this.f10927c0.d(false);
            }
            a.this.f10925a0.p(a.this.f10927c0.c());
            a.this.f10925a0.q(a.this.f10928d0.c());
            a.this.f10926b0.a();
        }
    }

    public interface f {
        void a();
    }

    public a(U5.a options, f listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        this.f10925a0 = options;
        this.f10926b0 = listener;
    }

    public static FloatingPanelArea w1(U5.a filter, View anchor, C15147a.e anchorSide, f listener) {
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        FloatingPanelArea g10 = C15147a.g(anchor, new a(filter, listener), anchorSide, N7.c.g(250), N7.c.f(250));
        g10.T();
        g10.F1(true);
        g10.E1(true);
        return g10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.marketplace_filter_search_view_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        TextView textView = (TextView) inflate.findViewById(R.id.filter_tittle);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.sort_by_group);
        TextView textView2 = (TextView) inflate.findViewById(R.id.sort_by_tittle);
        textView.setText(Lang.l(Lang.T.STORE_FILTER));
        textView2.setText(Lang.l(Lang.T.STORE_SORT_BY));
        this.f10923Y = new RadioGroup(M());
        this.f10923Y.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        for (int i10 = 0; i10 < this.f10929e0.size(); i10++) {
            LinearLayout linearLayout2 = (LinearLayout) this.f70908j.inflate(R.layout.marketplace_filter_sortby_element, (ViewGroup) null).getRootView();
            RadioButton radioButton = (RadioButton) linearLayout2.getChildAt(0);
            radioButton.setText(this.f10929e0.get(i10).toString());
            radioButton.setId(i10);
            linearLayout2.removeView(radioButton);
            this.f10923Y.addView(radioButton);
        }
        linearLayout.addView(this.f10923Y);
        int indexOf = ArrayUtils.indexOf(a.EnumC0713a.values(), this.f10925a0.f());
        if (indexOf >= 0 && indexOf < this.f10923Y.getChildCount()) {
            this.f10923Y.check(indexOf);
        }
        this.f10923Y.setOnCheckedChangeListener(new c());
        this.f10927c0 = new Z5.b((LinearLayout) inflate.findViewById(R.id.onlyFreeFilter));
        this.f10928d0 = new Z5.b((LinearLayout) inflate.findViewById(R.id.onlyPaidFilter));
        this.f10927c0.e(new d());
        this.f10927c0.d(this.f10925a0.k());
        this.f10928d0.e(new e());
        this.f10928d0.d(this.f10925a0.l());
        return inflate;
    }

    @Deprecated
    public final void v1() {
    }
}
