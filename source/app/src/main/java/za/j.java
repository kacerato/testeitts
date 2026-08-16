package za;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class j extends AbstractC16290a {

    public static final String f130896p = "GetMovementSpeed";

    public class a implements ga.p {
        @Override
        public NoCodeNode a() {
            return new j();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return j.class;
        }

        @Override
        public String c() {
            return j.f130896p;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, j.class);
        }

        @Override
        public String e() {
            return "Actions/Object/Movement";
        }

        @Override
        public String f() {
            return "Get Movement Speed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        ga.o.a(new a());
    }

    public j() {
        this.serializedNodeType = f130896p;
    }

    @Override
    public float G0(GameObject target, Vector3 movementDelta, float deltaTime) {
        return movementDelta.lengthF() / deltaTime;
    }

    @Override
    public String I0() {
        return "Get Movement Speed";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_GET_MOVEMENT_SPEED);
    }
}
