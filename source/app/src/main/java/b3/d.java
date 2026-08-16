package B3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;

public class d extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            return D3.b.g();
        }
    }

    public d() {
        super("scene.objects", "Lists every scene object with its name and SINGLE_GUID.", new a());
        z();
        A(g.LEVEL_EDITION);
    }
}
