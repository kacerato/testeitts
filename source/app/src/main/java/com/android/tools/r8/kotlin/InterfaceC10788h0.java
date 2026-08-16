package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public interface InterfaceC10788h0 extends G, InterfaceC10764d0 {
    @Override
    default boolean a() {
        return true;
    }

    boolean a(Consumer consumer, C4460g1 c4460g1, C4516j1 c4516j1, C4516j1 c4516j12, C4516j1 c4516j13, C4798y c4798y);

    boolean a(Consumer consumer, C4798y c4798y);

    @Override
    default InterfaceC10788h0 b() {
        return this;
    }

    default InterfaceC10788h0 getReference() {
        return this;
    }

    default int s() {
        return 4;
    }
}
