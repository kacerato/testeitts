package com.android.tools.r8.tracereferences;

import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;
import com.bumptech.glide.load.engine.GlideException;
import java.util.List;
import org.openjdk.tools.doclint.DocLint;

public final class C11625b extends AbstractC11624a {

    public final boolean f58447c;

    public C11625b(boolean z10) {
        this.f58447c = z10;
    }

    @Override
    public final void a(List list) {
        if (list.isEmpty()) {
            return;
        }
        this.f58443a.append("-keeppackagenames " + C10656zq0.a(DocLint.SEPARATOR, (Iterable) list) + System.lineSeparator());
    }

    @Override
    public final void b(TraceReferencesConsumer.TracedClass tracedClass) {
        String str;
        if (tracedClass.isMissingDefinition()) {
            this.f58443a.append(C10656zq0.b("# Missing class: " + tracedClass.getReference().getTypeName()));
            return;
        }
        if (this.f58447c && (!((TraceReferencesConsumer.ClassAccessFlags) tracedClass.getAccessFlags()).isEnum() || System.getProperty("com.android.tools.r8.tracereferences.obfuscateAllEnums") != null)) {
            str = "-keep,allowobfuscation";
        } else {
            str = "-keep";
        }
        this.f58443a.append(str);
        if (((TraceReferencesConsumer.ClassAccessFlags) tracedClass.getAccessFlags()).isInterface()) {
            String str2 = ((TraceReferencesConsumer.ClassAccessFlags) tracedClass.getAccessFlags()).isAnnotation() ? "@" : "";
            this.f58443a.append(C10656zq0.b(" " + str2 + "interface " + tracedClass.getReference().getTypeName() + " {"));
            return;
        }
        if (((TraceReferencesConsumer.ClassAccessFlags) tracedClass.getAccessFlags()).isEnum()) {
            this.f58443a.append(C10656zq0.b(" enum " + tracedClass.getReference().getTypeName() + " {"));
            return;
        }
        this.f58443a.append(C10656zq0.b(" class " + tracedClass.getReference().getTypeName() + " {"));
    }

    @Override
    public final void b(TraceReferencesConsumer.TracedField tracedField) {
        this.f58443a.append(GlideException.a.f59088e + tracedField.getReference().getFieldType().getTypeName() + " " + tracedField.getReference().getFieldName() + ";" + System.lineSeparator());
    }
}
