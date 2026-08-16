package u7;

import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import s7.C15235a;
import s7.c;
import v7.C15807a;
import v7.C15808b;

public class C15578a extends c<C15235a> {

    public class C2032a extends AbstractViewOnClickListenerC12733a {
        public C2032a() {
        }

        @Override
        public void click(View view) {
            C15578a.this.n("S_A");
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            C15578a.this.n("S_B");
        }
    }

    public C15578a() {
        super.a(new C15807a("S_A"));
        super.a(new C15808b("S_B"));
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.stage_multi_level_exemple_1, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.button1);
        View findViewById2 = inflate.findViewById(R.id.button2);
        findViewById.setOnClickListener(new C2032a());
        findViewById2.setOnClickListener(new b());
        return inflate;
    }

    @Override
    public void q() {
        super.q();
    }

    @Override
    public void y() {
        super.y();
    }
}
