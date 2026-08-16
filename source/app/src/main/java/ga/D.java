package ga;

import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;

public interface D {
    default NoCodeData a() {
        return null;
    }

    H b(NoCodeNode node, int inputIndex);
}
