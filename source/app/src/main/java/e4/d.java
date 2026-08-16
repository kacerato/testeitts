package E4;

import E4.d;
import JAVARuntime.AOnTouchListener;
import JAVARuntime.ClassCategory;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.DragPanelView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import e7.C13042a;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import r4.C15147a;

public class d extends EditorPanel {

    public static final String f5450c0 = "CategoryPanel";

    public static final String f5451d0 = "Uncategorized";

    public RecyclerView f5452X;

    public FloatingPanelArea f5453Y;

    public C13042a<String, g> f5454Z;

    public Map<String, Integer> f5455a0;

    public C13042a<e8.c, g> f5456b0;

    public class a extends AOnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouchEvent(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            d.this.R0();
        }
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (editable.toString().isEmpty()) {
                d.this.z1();
            } else {
                d.this.D1(editable.toString());
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i12, int i22) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i12, int i22) {
        }
    }

    public class C0103d implements C13042a.InterfaceC1584a<e8.c, g> {
        public C0103d() {
        }

        @Override
        public void a(g holder, final e8.c officialClass, int position) {
            holder.f5466b.setText(officialClass.d());
            holder.f5467c.setVisibility(8);
            d.this.E1(holder, officialClass.d());
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    d.C0103d.this.e(officialClass, view);
                }
            });
        }

        public final void e(e8.c cVar, View view) {
            d.this.B1(cVar);
        }

        @Override
        public g b(LayoutInflater inflater, ViewGroup parent) {
            return new g(inflater.inflate(R.layout.class_item, parent, false));
        }
    }

    public class e implements C13042a.InterfaceC1584a<String, g> {
        public e() {
        }

        @Override
        public void a(g holder, final String category, int position) {
            int intValue = ((Integer) d.this.f5455a0.getOrDefault(category, 0)).intValue();
            holder.f5466b.setText(category);
            holder.f5467c.setText("(" + intValue + " classes)");
            d.this.E1(holder, category);
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    d.e.this.e(category, view);
                }
            });
        }

        public final void e(String str, View view) {
            d.this.A1(str);
        }

        @Override
        public g b(LayoutInflater inflater, ViewGroup parent) {
            return new g(inflater.inflate(R.layout.class_item, parent, false));
        }
    }

    public d(K8.a engine) {
        super(engine);
        this.f5455a0 = new HashMap();
    }

    public static FloatingPanelArea F1() {
        d dVar = new d();
        FloatingPanelArea m10 = C15147a.m(dVar, N7.c.g(300), N7.c.f(400));
        m10.T();
        dVar.f5453Y = m10;
        return m10;
    }

    public final void A1(String category) {
        k.w1(category);
    }

    public final void B1(e8.c officialClass) {
        E4.a.a(officialClass);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.class_doc_v2_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        inflate.findViewById(R.id.closeX).setOnClickListener(new b());
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f5452X = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(M()));
        this.f5453Y.H1((DragPanelView) inflate.findViewById(R.id.dragPanel));
        z1();
        ((EditText) inflate.findViewById(R.id.edit_text)).addTextChangedListener(new c());
        return inflate;
    }

    public final int C1(String name, String query) {
        if (name == null) {
            return Integer.MAX_VALUE;
        }
        String lowerCase = name.toLowerCase(Locale.ROOT);
        if (lowerCase.equals(query)) {
            return 0;
        }
        if (lowerCase.startsWith(query)) {
            return 1;
        }
        int indexOf = lowerCase.indexOf(query);
        if (indexOf >= 0) {
            return indexOf + 2;
        }
        return Integer.MAX_VALUE;
    }

    public final void D1(String text) {
        String d10;
        if (text == null) {
            text = "";
        }
        final String lowerCase = text.toLowerCase(Locale.ROOT);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < d8.j.k0(); i10++) {
            e8.c j02 = d8.j.j0(i10);
            if (j02 != null && j02.a() != null && (d10 = j02.d()) != null && d10.toLowerCase(Locale.ROOT).contains(lowerCase)) {
                steppedArrayList.add(j02);
            }
        }
        Collections.sort(steppedArrayList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int y12;
                y12 = d.this.y1(lowerCase, (e8.c) obj, (e8.c) obj2);
                return y12;
            }
        });
        C13042a<e8.c, g> c13042a = new C13042a<>(M(), new C0103d());
        this.f5456b0 = c13042a;
        c13042a.t(steppedArrayList);
        this.f5452X.setAdapter(this.f5456b0);
    }

    public final void E1(g holder, String category) {
        char b10 = F4.a.b(category);
        holder.f5469e.setText(String.valueOf(b10));
        int c10 = F4.a.c(b10);
        holder.f5469e.setTextColor(F4.a.a(c10));
        if (holder.f5470f.getBackground() == null) {
            holder.f5470f.setBackgroundTintList(ColorStateList.valueOf(c10));
            return;
        }
        Drawable wrap = DrawableCompat.wrap(holder.f5470f.getBackground().mutate());
        DrawableCompat.setTint(wrap, c10);
        holder.f5470f.setBackground(wrap);
    }

    public final int x1(String str, String str2) {
        int compare = Integer.compare(this.f5455a0.getOrDefault(str2, 0).intValue(), this.f5455a0.getOrDefault(str, 0).intValue());
        return compare != 0 ? compare : str.compareToIgnoreCase(str2);
    }

    public final int y1(String str, e8.c cVar, e8.c cVar2) {
        String d10 = cVar.d();
        String d11 = cVar2.d();
        int C12 = C1(d10, str);
        int C13 = C1(d11, str);
        return C12 != C13 ? Integer.compare(C12, C13) : d10.compareToIgnoreCase(d11);
    }

    public final void z1() {
        boolean z10;
        this.f5455a0.clear();
        for (int i10 = 0; i10 < d8.j.k0(); i10++) {
            e8.c j02 = d8.j.j0(i10);
            if (j02 != null && j02.a() != null) {
                ClassCategory classCategory = (ClassCategory) j02.a().getAnnotation(ClassCategory.class);
                if (classCategory == null || classCategory.cat() == null) {
                    z10 = true;
                } else {
                    String[] cat = classCategory.cat();
                    int length = cat.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            z10 = true;
                            break;
                        }
                        String str = cat[i11];
                        if (str != null && !str.isEmpty()) {
                            z10 = false;
                            break;
                        }
                        i11++;
                    }
                    if (!z10) {
                        for (String str2 : classCategory.cat()) {
                            if (str2 != null) {
                                String trim = str2.trim();
                                if (!trim.isEmpty()) {
                                    Map<String, Integer> map = this.f5455a0;
                                    map.put(trim, Integer.valueOf(map.getOrDefault(trim, 0).intValue() + 1));
                                }
                            }
                        }
                    }
                }
                if (z10) {
                    Map<String, Integer> map2 = this.f5455a0;
                    map2.put(f5451d0, Integer.valueOf(map2.getOrDefault(f5451d0, 0).intValue() + 1));
                }
            }
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(this.f5455a0.o());
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int x12;
                x12 = d.this.x1((String) obj, (String) obj2);
                return x12;
            }
        });
        if (steppedArrayList.contains(f5451d0)) {
            steppedArrayList.remove(f5451d0);
            steppedArrayList.add(f5451d0);
        }
        C13042a<String, g> c13042a = new C13042a<>(M(), new e());
        this.f5454Z = c13042a;
        c13042a.t(steppedArrayList);
        this.f5452X.setAdapter(this.f5454Z);
    }

    public d() {
        super(null, "Class Categories", f5450c0);
        this.f5455a0 = new HashMap();
        super.e1(false);
    }
}
