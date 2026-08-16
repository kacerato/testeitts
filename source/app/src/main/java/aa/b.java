package Aa;

import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

public final class b {
    public static GameObject a(NoCodeNode node, NoCodeSlot objectInput) {
        Object Q10 = node.Q(objectInput);
        if (Q10 instanceof GameObject) {
            return (GameObject) Q10;
        }
        return null;
    }

    public static GameObject b(NoCodeNode node, NoCodeData graphData, NoCodeSlot objectInput) {
        GameObject a10 = a(node, objectInput);
        return (C13317e.J(a10) || graphData == null) ? a10 : graphData.h0();
    }

    public static String c(Object value) {
        return value != null ? String.valueOf(value) : "";
    }
}
