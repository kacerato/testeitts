package Aa;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Characterbody;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

public final class a {
    public static boolean a(NoCodeNode node, NoCodeData graphData, NoCodeSlot objectInput) {
        Characterbody characterbody;
        GameObject b10 = b.b(node, graphData, objectInput);
        return C13317e.J(b10) && (characterbody = (Characterbody) b10.d0(Characterbody.class)) != null && characterbody.isGrounded();
    }
}
