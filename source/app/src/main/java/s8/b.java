package S8;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.Bone;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class b {

    public final Vector3 f22996a;

    public final Quaternion f22997b;

    public final Vector3 f22998c;

    public b(Bone bone) {
        this.f22996a = new Vector3(bone != null ? bone.e() : new Vector3());
        this.f22997b = new Quaternion(bone != null ? bone.f() : new Quaternion());
        this.f22998c = new Vector3(bone != null ? bone.g() : new Vector3(1.0f));
    }
}
