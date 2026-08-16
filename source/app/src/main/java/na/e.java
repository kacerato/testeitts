package Na;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.ObjectRelated.BaseObjectSpeedEventNode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.o;
import ga.p;

public class e extends BaseObjectSpeedEventNode {

    public static final String f15870s = "OnMovementSpeed";

    public class a implements p {
        @Override
        public NoCodeNode a() {
            return new e();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return e.class;
        }

        @Override
        public String c() {
            return e.f15870s;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, e.class);
        }

        @Override
        public String e() {
            return "Events/Object/Movement";
        }

        @Override
        public String f() {
            return "On Movement Speed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new a());
    }

    public e() {
        this.serializedNodeType = f15870s;
    }

    @Override
    public float K0(GameObject target, Vector3 movementDelta, float deltaTime) {
        return movementDelta.lengthF() / deltaTime;
    }

    @Override
    public String N0() {
        return "On Movement Speed";
    }

    @Override
    public String x(NoCodeData graphData) {
        return Lang.l(Lang.T.NOCODE_ON_MOVEMENT_SPEED);
    }
}
