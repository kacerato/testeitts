package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class o extends AbstractC16290a {

    public static final String f130917p = "GetSideSpeed";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new o();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return o.class;
        }

        @Override
        public String c() {
            return o.f130917p;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, o.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Movement";
        }

        @Override
        public String f() {
            return "Get Side Speed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public o() {
        this.serializedNodeType = f130917p;
    }

    @Override
    public float G0(GameObject target, Vector3 movementDelta, float deltaTime) {
        return movementDelta.dot(J0(target)) / deltaTime;
    }

    @Override
    public String I0() {
        return "Get Side Speed";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_SIDE_SPEED);
    }
}
