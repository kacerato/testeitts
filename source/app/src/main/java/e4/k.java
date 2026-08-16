package E4;

import E4.k;
import JAVARuntime.AOnTouchListener;
import JAVARuntime.ClassCategory;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
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
import java.util.Comparator;
import java.util.List;
import r4.C15147a;

public class k extends EditorPanel {

    public static final String f5490c0 = "ClassesPanel";

    public FloatingPanelArea f5491X;

    public RecyclerView f5492Y;

    public C13042a<e8.c, g> f5493Z;

    public String f5494a0;

    public List<e8.c> f5495b0;

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
            k.this.R0();
        }
    }

    public class c implements C13042a.InterfaceC1584a<e8.c, g> {
        public c() {
        }

        public void e(e8.c cVar, View view) {
            k.this.u1(cVar);
        }

        @Override
        public void a(g holder, final e8.c officialClass, int position) {
            holder.f5466b.setText(officialClass.d());
            holder.f5467c.setVisibility(8);
            k.this.v1(holder, officialClass.d());
            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    k.c.this.e(officialClass, view);
                }
            });
        }

        @Override
        public g b(LayoutInflater inflater, ViewGroup parent) {
            return new g(inflater.inflate(R.layout.class_item, parent, false));
        }
    }

    public k(K8.a engine) {
        super(engine);
        this.f5495b0 = new SteppedArrayList();
    }

    public static int s1(e8.c cVar, e8.c cVar2) {
        return cVar.d().compareToIgnoreCase(cVar2.d());
    }

    public void u1(e8.c officialClass) {
        E4.a.a(officialClass);
    }

    public void v1(g holder, String category) {
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

    public static FloatingPanelArea w1(String category) {
        k kVar = new k();
        kVar.f5494a0 = category;
        FloatingPanelArea m10 = C15147a.m(kVar, N7.c.g(T6.a.f24083g0), N7.c.f(400));
        m10.T();
        kVar.f5491X = m10;
        return m10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.classes_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        inflate.findViewById(R.id.closeX).setOnClickListener(new b());
        this.f5491X.H1((DragPanelView) inflate.findViewById(R.id.dragPanel));
        ((TextView) inflate.findViewById(R.id.tittle)).setText(this.f5494a0);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f5492Y = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(M()));
        t1();
        return inflate;
    }

    public final void t1() {
        ClassCategory classCategory;
        int i10;
        this.f5495b0.clear();
        if (this.f5494a0.equals(d.f5451d0)) {
            for (int i11 = 0; i11 < d8.j.k0(); i11++) {
                e8.c j02 = d8.j.j0(i11);
                if (j02 != null && j02.a() != null) {
                    ClassCategory classCategory2 = (ClassCategory) j02.a().getAnnotation(ClassCategory.class);
                    if (classCategory2 != null && classCategory2.cat() != null) {
                        for (String str : classCategory2.cat()) {
                            i10 = (str == null || str.isEmpty()) ? i10 + 1 : 0;
                        }
                    }
                    this.f5495b0.add(j02);
                }
            }
        } else {
            for (int i12 = 0; i12 < d8.j.k0(); i12++) {
                e8.c j03 = d8.j.j0(i12);
                if (j03 != null && j03.a() != null && (classCategory = (ClassCategory) j03.a().getAnnotation(ClassCategory.class)) != null && classCategory.cat() != null) {
                    String[] cat = classCategory.cat();
                    int length = cat.length;
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length) {
                            break;
                        }
                        if (cat[i13].equals(this.f5494a0)) {
                            this.f5495b0.add(j03);
                            break;
                        }
                        i13++;
                    }
                }
            }
        }
        this.f5495b0.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int s12;
                s12 = k.s1((e8.c) obj, (e8.c) obj2);
                return s12;
            }
        });
        C13042a<e8.c, g> c13042a = new C13042a<>(M(), new c());
        this.f5493Z = c13042a;
        c13042a.t(this.f5495b0);
        this.f5492Y.setAdapter(this.f5493Z);
    }

    public k() {
        super(null, "Classes in Category", f5490c0);
        this.f5495b0 = new SteppedArrayList();
        super.e1(false);
    }
}
