package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class r extends AbstractC16290a {

    public static final String f130924p = "GetVerticalSpeed";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new r();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return r.class;
        }

        @Override
        public String c() {
            return r.f130924p;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, r.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Movement";
        }

        @Override
        public String f() {
            return "Get Vertical Speed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public r() {
        this.serializedNodeType = f130924p;
    }

    @Override
    public float G0(GameObject target, Vector3 movementDelta, float deltaTime) {
        return movementDelta.getY() / deltaTime;
    }

    @Override
    public String I0() {
        return "Get Vertical Speed";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_VERTICAL_SPEED);
    }
}
