package Z3;

import C5.b;
import D5.h;
import F5.c;
import android.content.Context;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.World.Settings.PhysicsSettings;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;

public class b extends com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.a {

    public class a implements h {

        public final PhysicsSettings f30755a;

        public a(final PhysicsSettings val$settings) {
            this.f30755a = val$settings;
        }

        @Override
        public Variable get() {
            return new Variable("", this.f30755a.c() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f30755a.f(variable.int_value);
            }
        }
    }

    public b() {
        super("Physics");
    }

    @Override
    public List<C5.b> y(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world == null) {
            return steppedArrayList;
        }
        PhysicsSettings r10 = world.r();
        steppedArrayList.add(c.L("Gravity", r10.b(), new Vector3(0.0f, -9.81f, 0.0f)));
        steppedArrayList.add(new C5.b(new a(r10), "Max num iterations", b.a.SLInt));
        return steppedArrayList;
    }
}
