package ta;

import com.itsmagic.engine.Engines.Engine.Animation.d;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import java.util.List;

public final class C15388a {
    public static void a(GameObject target, String animationName, List<d> out) {
        d findAnimation;
        if (!C13317e.J(target) || out == null) {
            return;
        }
        List<Component> n02 = target.n0(Component.e.AnimationPlayer);
        for (int i10 = 0; i10 < n02.size(); i10++) {
            Component component = n02.get(i10);
            if ((component instanceof AnimationPlayer) && (findAnimation = ((AnimationPlayer) component).findAnimation(animationName)) != null && !out.contains(findAnimation)) {
                out.add(findAnimation);
            }
        }
    }
}
