package N3;

import C5.b;
import C5.n;
import F7.h;
import F7.k;
import F7.l;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import java.util.List;

public class a extends EditorPanel {

    public List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f15486X;

    public LinearLayout f15487Y;

    public l<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f15488Z;

    public TextView f15489a0;

    public String f15490b0;

    public class ViewOnTouchListenerC0435a implements View.OnTouchListener {
        public ViewOnTouchListenerC0435a() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public class b implements k<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> {
        public b() {
        }

        @Override
        public void a() {
        }

        @Override
        public List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> c() {
            return a.this.f15486X;
        }

        @Override
        public List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> f(com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a element) {
            List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> x10 = element.x();
            for (int i10 = 0; i10 < x10.size(); i10++) {
                com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a aVar = x10.get(i10);
                aVar.r(!aVar.x().isEmpty());
                aVar.q(element.e() + 1);
            }
            return x10;
        }

        @Override
        public void b(com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a element, View v10) {
        }

        @Override
        public void d(com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a element, boolean open) {
        }

        @Override
        public void e(com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a element) {
            a.this.t1(element);
        }
    }

    public class c implements N3.b {

        public final com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a f15493a;

        public c(final com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a val$element) {
            this.f15493a = val$element;
        }

        @Override
        public void a() {
            a.this.t1(this.f15493a);
        }
    }

    public class d implements n {

        public final List f15495a;

        public d(final List val$entries) {
            this.f15495a = val$entries;
        }

        @Override
        public void refresh(int position) {
            a.this.v1(this.f15495a);
        }
    }

    public a(String title) {
        super(null, title);
        super.e1(false);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.editor_settings_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0435a());
        this.f15489a0 = (TextView) inflate.findViewById(R.id.selectedTittle);
        this.f15487Y = (LinearLayout) inflate.findViewById(R.id.contentView);
        this.f15488Z = new l<>((RecyclerView) inflate.findViewById(R.id.leftPanelRecycler), new b());
        return inflate;
    }

    @Override
    public void n1() {
        super.n1();
        if (this.f15490b0 == null || this.f15488Z == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= this.f15488Z.k()) {
                break;
            }
            com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a j10 = this.f15488Z.j(i10);
            if (j10.g().equalsIgnoreCase(this.f15490b0)) {
                this.f15488Z.D(j10);
                break;
            }
            i10++;
        }
        this.f15490b0 = null;
    }

    public void s1(String jumpTo) {
        this.f15490b0 = jumpTo;
    }

    public final void t1(com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a element) {
        this.f15489a0.setText(element.g());
        List<C5.b> y10 = element.y(M());
        if (y10 != null) {
            v1(y10);
        } else {
            this.f15487Y.removeAllViews();
            if (!element.x().isEmpty()) {
                this.f15488Z.D(element.x().get(0));
            }
        }
        h hVar = element.f6684f;
        if (hVar != null && !hVar.f6678c) {
            this.f15488Z.z(element);
        }
        element.C(new c(element));
    }

    public void u1(List<com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a> settingsPages) {
        this.f15486X = settingsPages;
        for (int i10 = 0; i10 < settingsPages.size(); i10++) {
            com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a aVar = settingsPages.get(i10);
            aVar.r(!aVar.x().isEmpty());
            aVar.q(0);
            aVar.f6684f.f6678c = true;
        }
    }

    public final void v1(List<C5.b> entries) {
        this.f15487Y.removeAllViews();
        if (entries != null) {
            for (int i10 = 0; i10 < entries.size(); i10++) {
                C5.b bVar = entries.get(i10);
                b.a aVar = bVar.f2079n;
                if (aVar == b.a.Vector) {
                    C5.h.y(this.f15487Y, this.f70908j, bVar, 0, M());
                } else if (aVar == b.a.Component) {
                    C5.h.w(this.f15487Y, this.f70908j, bVar, 0, M(), new d(entries));
                } else {
                    C5.h.x(this.f15487Y, this.f70908j, bVar, 0, true, M());
                }
            }
        }
    }
}
