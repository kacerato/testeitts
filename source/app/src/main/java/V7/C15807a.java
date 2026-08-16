package v7;

import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import s7.C15235a;
import s7.c;

public class C15807a extends c<C15235a> {

    public class C2067a extends AbstractViewOnClickListenerC12733a {
        public C2067a() {
        }

        @Override
        public void click(View view) {
            C15807a.this.t();
        }
    }

    public C15807a(String tag) {
        super(tag);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.stage_multi_level_exemple_a, (ViewGroup) null);
        inflate.findViewById(R.id.button1).setOnClickListener(new C2067a());
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
