package B3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;

public class a extends v {

    public class C0026a implements u {
        @Override
        public String a(String text) {
            return D3.b.i();
        }
    }

    public a() {
        super("scene.children", "Lists only the root-level scene objects, without a parent.", new C0026a());
        z();
        A(g.LEVEL_EDITION);
    }
}
