package e6;

import android.bluetooth.BluetoothClass;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.DragPanelView;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import e6.I;
import e7.AbstractC13043b;
import e7.C13042a;
import java.util.List;
import java.util.Locale;
import ma.C14205b;
import r4.C15147a;

public class I extends EditorPanel {

    public final X f85213X;

    public final List<c> f85214Y;

    public FloatingPanelArea f85215Z;

    public EditText f85216a0;

    public RecyclerView f85217b0;

    public C13042a<c, d> f85218c0;

    public TextView f85219d0;

    public DragPanelView f85220e0;

    public class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable s10) {
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            I.this.y1(s10 == null ? "" : s10.toString());
        }
    }

    public class b implements C13042a.InterfaceC1584a<c, d> {
        public b() {
        }

        @Override
        public void a(d holder, final c entry, int position) {
            if (holder.f85228b != null) {
                holder.f85228b.setText(entry.f85224b == null ? "" : entry.f85224b);
            }
            if (holder.f85229c != null) {
                holder.f85229c.setText(entry.f85223a != null ? entry.f85223a : "");
            }
            holder.a().setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    I.b.this.e(entry, view);
                }
            });
        }

        public final void e(c cVar, View view) {
            if (I.this.f85213X != null) {
                if (cVar.f85226d != null) {
                    I.this.f85213X.r(cVar.f85226d);
                } else if (cVar.f85227e != null) {
                    I.this.f85213X.q(cVar.f85227e);
                }
            }
            I.this.R0();
        }

        @Override
        public d b(LayoutInflater inflater, ViewGroup parent) {
            return new d(inflater.inflate(R.layout.nocode_search_panel_item, parent, false), null);
        }
    }

    public static final class c {

        public final String f85223a;

        public final String f85224b;

        public final String f85225c;

        public final ga.p f85226d;

        public final NoCodeNode f85227e;

        public c(String str, String str2, String str3, ga.p pVar, NoCodeNode noCodeNode, a aVar) {
            this(str, str2, str3, pVar, noCodeNode);
        }

        public c(String title, String group, String extraSearchText, ga.p nodeInterface, NoCodeNode node) {
            this.f85223a = title;
            this.f85224b = group;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(title == null ? "" : title);
            sb2.append(" ");
            sb2.append(group == null ? "" : group);
            sb2.append(" ");
            sb2.append(extraSearchText == null ? "" : extraSearchText);
            this.f85225c = sb2.toString().toLowerCase(Locale.US);
            this.f85226d = nodeInterface;
            this.f85227e = node;
        }
    }

    public static final class d extends AbstractC13043b {

        public TextView f85228b;

        public TextView f85229c;

        public d(View view, a aVar) {
            this(view);
        }

        @Override
        public void b(View root) {
            this.f85228b = (TextView) root.findViewById(R.id.searchGroup);
            this.f85229c = (TextView) root.findViewById(R.id.searchTitle);
        }

        public d(View root) {
            super(root);
        }
    }

    public I(X graphView) {
        super(null, "Search");
        this.f85214Y = new SteppedArrayList();
        this.f85213X = graphView;
        super.e1(false);
    }

    public static FloatingPanelArea A1(X graphView) {
        I i10 = new I(graphView);
        FloatingPanelArea m10 = C15147a.m(i10, N7.c.g(BluetoothClass.Device.PHONE_CORDLESS), N7.c.f(380));
        i10.z1(m10);
        m10.T();
        m10.N1(false);
        m10.F1(false);
        m10.E1(true);
        m10.O1(true);
        return m10;
    }

    public static boolean u1(View view, MotionEvent motionEvent) {
        return true;
    }

    public void v1(View view) {
        R0();
    }

    private void z1(FloatingPanelArea floatingPanelArea) {
        DragPanelView dragPanelView;
        this.f85215Z = floatingPanelArea;
        if (floatingPanelArea == null || (dragPanelView = this.f85220e0) == null) {
            return;
        }
        floatingPanelArea.H1(dragPanelView);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.nocode_search_panel, (ViewGroup) null);
        if (inflate == null) {
            return new FrameLayout(M());
        }
        inflate.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean u12;
                u12 = I.u1(view, motionEvent);
                return u12;
            }
        });
        this.f85216a0 = (EditText) inflate.findViewById(R.id.searchView);
        this.f85217b0 = (RecyclerView) inflate.findViewById(R.id.resultsRecycler);
        this.f85219d0 = (TextView) inflate.findViewById(R.id.emptyState);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.closeBtn);
        DragPanelView dragPanelView = (DragPanelView) inflate.findViewById(R.id.moveBtn);
        this.f85220e0 = dragPanelView;
        FloatingPanelArea floatingPanelArea = this.f85215Z;
        if (floatingPanelArea != null && dragPanelView != null) {
            floatingPanelArea.H1(dragPanelView);
        }
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    I.this.v1(view);
                }
            });
        }
        EditText editText = this.f85216a0;
        String str = "";
        if (editText != null) {
            editText.setText("");
            this.f85216a0.addTextChangedListener(new a());
            this.f85216a0.requestFocus();
        }
        RecyclerView recyclerView = this.f85217b0;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(M()));
            this.f85217b0.setAdapter(t1());
        }
        x1();
        EditText editText2 = this.f85216a0;
        if (editText2 != null && editText2.getText() != null) {
            str = String.valueOf(this.f85216a0.getText());
        }
        y1(str);
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new I(this.f85213X);
    }

    public final C13042a<c, d> t1() {
        C13042a<c, d> c13042a = this.f85218c0;
        if (c13042a != null) {
            return c13042a;
        }
        C13042a<c, d> c13042a2 = new C13042a<>(M(), new b());
        this.f85218c0 = c13042a2;
        return c13042a2;
    }

    public final String w1(String group) {
        return group == null ? "" : group.trim();
    }

    public final void x1() {
        this.f85214Y.clear();
        X x10 = this.f85213X;
        NoCodeData graphData = x10 != null ? x10.getGraphData() : null;
        if (graphData == null) {
            return;
        }
        ga.q.a();
        for (int i10 = 0; i10 < ga.o.b(); i10++) {
            ga.p e10 = ga.o.e(i10);
            if (e10 != null && e10.g()) {
                String f10 = e10.f();
                NoCodeNode a10 = e10.a();
                if (a10 != null) {
                    f10 = (EditorSettings.a() == null || !EditorSettings.a().translateNoCodeV2) ? a10.N(graphData) : a10.x(graphData);
                }
                this.f85214Y.add(new c(f10, w1(e10.e()), e10.c(), e10, null, null));
            }
        }
        List<C14205b.c> c10 = C14205b.c();
        for (int i11 = 0; i11 < c10.size(); i11++) {
            C14205b.c cVar = c10.get(i11);
            if (cVar != null) {
                this.f85214Y.add(new c(cVar.f96917c, w1("Actions/Component/" + cVar.f96915a + "/" + cVar.f96916b), cVar.f96915a + " " + cVar.f96916b + " " + cVar.f96920f, null, cVar.a(), null));
            }
        }
    }

    public final void y1(String query) {
        if (this.f85217b0 == null) {
            return;
        }
        String lowerCase = query == null ? "" : query.trim().toLowerCase(Locale.US);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f85214Y.size(); i10++) {
            c cVar = this.f85214Y.get(i10);
            if (cVar != null && (lowerCase.isEmpty() || cVar.f85225c.contains(lowerCase))) {
                steppedArrayList.add(cVar);
            }
        }
        if (!steppedArrayList.isEmpty()) {
            TextView textView = this.f85219d0;
            if (textView != null) {
                textView.setVisibility(8);
            }
            this.f85217b0.setVisibility(0);
            t1().t(steppedArrayList);
            return;
        }
        TextView textView2 = this.f85219d0;
        if (textView2 != null) {
            textView2.setVisibility(0);
            TextView textView3 = this.f85219d0;
            X x10 = this.f85213X;
            textView3.setText((x10 == null || x10.getGraphData() == null) ? "No graph loaded." : "No nodes found.");
        }
        t1().t(new SteppedArrayList());
        this.f85217b0.setVisibility(8);
    }
}
