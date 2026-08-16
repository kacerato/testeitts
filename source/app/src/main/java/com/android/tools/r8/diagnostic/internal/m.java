package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.MissingDefinitionInfo;
import com.android.tools.r8.diagnostic.MissingDefinitionsDiagnostic;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

public class m implements MissingDefinitionsDiagnostic {

    public static final boolean f36009c = true;

    public final AbstractC7552hC f36010b;

    public m(AbstractC7552hC abstractC7552hC) {
        if (!f36009c && abstractC7552hC.isEmpty()) {
            throw new AssertionError();
        }
        this.f36010b = abstractC7552hC;
    }

    public static void a(StringBuilder sb2, MissingDefinitionInfo missingDefinitionInfo) {
        sb2.append(System.lineSeparator());
        k.a(sb2, missingDefinitionInfo);
    }

    @Override
    public final String getDiagnosticMessage() {
        final StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = new ArrayList(this.f36010b);
        arrayList.sort(k.f36006a);
        Iterator it = arrayList.iterator();
        if (!f36009c && !it.hasNext()) {
            throw new AssertionError();
        }
        k.a(sb2, (MissingDefinitionInfo) it.next());
        it.forEachRemaining(new Consumer() {
            @Override
            public final void accept(Object obj) {
                m.a(StringBuilder.this, (MissingDefinitionInfo) obj);
            }
        });
        return sb2.toString();
    }

    @Override
    public final Collection getMissingDefinitions() {
        ArrayList arrayList = new ArrayList(this.f36010b);
        arrayList.sort(k.f36006a);
        return arrayList;
    }

    @Override
    public final Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public final Position getPosition() {
        return Position.UNKNOWN;
    }
}
