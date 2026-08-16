package B3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;

public class c extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            return D3.b.f(text);
        }
    }

    public c() {
        super("scene.object.name", "Returns the name of a scene object identified by SINGLE_GUID.", new a());
        b("single_guid", "SINGLE_GUID of the target scene object.", true);
        B("single_guid");
        A(g.LEVEL_EDITION);
    }
}
