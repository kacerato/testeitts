package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class MN {

    public static final MN f42283d = new MN(EnumC9583tP.UNKNOWN, IN.f41068a, JN.f41385b);

    public final EnumC9583tP f42284a;

    public final IN f42285b;

    public final JN f42286c;

    public MN(EnumC9583tP enumC9583tP, IN in2, JN jn2) {
        this.f42284a = enumC9583tP;
        this.f42285b = in2;
        this.f42286c = jn2;
    }

    public static MN a(KeepSpecProtos.MetaInfo metaInfo, EnumC9583tP enumC9583tP) {
        IN in2;
        GN gn2 = new GN();
        gn2.f40470a = enumC9583tP;
        if (metaInfo != null) {
            if (metaInfo.hasContext()) {
                KeepSpecProtos.Context context = metaInfo.getContext();
                if (context.hasClassDesc()) {
                    in2 = new HN(context.getClassDesc().getDesc());
                } else if (context.hasMethodDesc()) {
                    KeepSpecProtos.MethodDesc methodDesc = context.getMethodDesc();
                    ArrayList arrayList = new ArrayList(methodDesc.getParameterTypesCount());
                    Iterator<KeepSpecProtos.TypeDesc> it = methodDesc.getParameterTypesList().iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().getDesc());
                    }
                    in2 = new LN(methodDesc.getHolder().getDesc(), methodDesc.getName(), methodDesc.getReturnType().getDesc(), arrayList);
                } else if (context.hasFieldDesc()) {
                    KeepSpecProtos.FieldDesc fieldDesc = context.getFieldDesc();
                    in2 = new KN(fieldDesc.getHolder().getDesc(), fieldDesc.getName(), fieldDesc.getFieldType().getDesc());
                } else {
                    in2 = IN.f41068a;
                }
                gn2.f40471b = in2;
            }
            gn2.a(metaInfo.getDescription());
        }
        return gn2.a();
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList(3);
        EnumC9583tP enumC9583tP = this.f42284a;
        if (enumC9583tP != EnumC9583tP.UNKNOWN) {
            arrayList.add("version=" + ((Object) enumC9583tP));
        }
        IN in2 = IN.f41068a;
        IN in3 = this.f42285b;
        if (in2 != in3) {
            arrayList.add("context=" + in3.a());
        }
        if (!JN.f41385b.equals(this.f42286c)) {
            arrayList.add("description=\"" + AbstractC5626Nk0.c(this.f42286c.f41387a) + JavadocConstants.ANCHOR_PREFIX_END);
        }
        return "MetaInfo{" + String.join(", ", arrayList) + VectorFormat.DEFAULT_SUFFIX;
    }
}
