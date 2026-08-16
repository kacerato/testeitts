package la;

import JAVARuntime.Component;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.C13308d;
import gb.C13317e;

public final class C14063a {
    public static NoCodeNodeConnection a(NoCodeNode node, NoCodeData graphData, NoCodeSlot inputSlot) {
        NoCodeSlot[] F10;
        String str;
        if (node == null || graphData == null || inputSlot == null || (F10 = node.F()) == null) {
            return null;
        }
        for (int i10 = 0; i10 < F10.length; i10++) {
            NoCodeSlot noCodeSlot = F10[i10];
            if (noCodeSlot == inputSlot) {
                return graphData.Q(node.B(), i10);
            }
            if (noCodeSlot != null && (str = inputSlot.name) != null && str.equals(noCodeSlot.name) && inputSlot.type == noCodeSlot.type) {
                return graphData.Q(node.B(), i10);
            }
        }
        return null;
    }

    public static Component b(NoCodeData graphData, NoCodeNodeConnection connection, NoCodeSlot inputSlot) {
        NoCodeNode V10;
        NoCodeSlot[] J10;
        int i10;
        if (graphData == null || connection == null || inputSlot == null || (V10 = graphData.V(connection.fromNodeId)) == null || (J10 = V10.J()) == null || (i10 = connection.fromSlot) < 0 || i10 >= J10.length) {
            return null;
        }
        Object b10 = C13308d.b(V10.Q(J10[i10]), inputSlot.type);
        if (b10 instanceof Component) {
            return (Component) b10;
        }
        return null;
    }

    public static GameObject c(Component component) {
        if (component == null || component.getEngineComponent() == null) {
            return null;
        }
        GameObject gameObject = component.getEngineComponent().f79250n;
        if (C13317e.J(gameObject)) {
            return gameObject;
        }
        return null;
    }

    public static Component d(NoCodeNode node, NoCodeData graphData, NoCodeSlot componentInput) {
        NoCodeNodeConnection a10 = a(node, graphData, componentInput);
        if (a10 != null) {
            return b(graphData, a10, componentInput);
        }
        Object b10 = C13308d.b(node.Q(componentInput), componentInput.type);
        if (b10 instanceof Component) {
            return (Component) b10;
        }
        if (graphData == null) {
            return null;
        }
        return C13308d.e(graphData.h0(), componentInput.type);
    }
}
