package B3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;

public class b extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            return D3.b.h(text);
        }
    }

    public b() {
        super("scene.object.children", "Lists the direct children of a scene object identified by SINGLE_GUID.", new a());
        b("single_guid", "SINGLE_GUID of the parent scene object.", true);
        B("single_guid");
        A(g.LEVEL_EDITION);
    }
}
