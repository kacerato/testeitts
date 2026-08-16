package com.google.protobuf;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.Descriptors;

public final class Z1 {

    public static final Descriptors.b f69029a;

    public static final AbstractC12722w0.h f69030b;

    public static final Descriptors.b f69031c;

    public static final AbstractC12722w0.h f69032d;

    public static final Descriptors.b f69033e;

    public static final AbstractC12722w0.h f69034f;

    public static final Descriptors.b f69035g;

    public static final AbstractC12722w0.h f69036h;

    public static Descriptors.g f69037i = Descriptors.g.B(new String[]{"\n\u001cgoogle/protobuf/struct.proto\u0012\u000fgoogle.protobuf\"\u0098\u0001\n\u0006Struct\u0012;\n\u0006fields\u0018\u0001 \u0003(\u000b2#.google.protobuf.Struct.FieldsEntryR\u0006fields\u001aQ\n\u000bFieldsEntry\u0012\u0010\n\u0003key\u0018\u0001 \u0001(\tR\u0003key\u0012,\n\u0005value\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.ValueR\u0005value:\u00028\u0001\"\u00b2\u0002\n\u0005Value\u0012;\n\nnull_value\u0018\u0001 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000R\tnullValue\u0012#\n\fnumber_value\u0018\u0002 \u0001(\u0001H\u0000R\u000bnumberValue\u0012#\n\fstring_value\u0018\u0003 \u0001(\tH\u0000R\u000bstringValue\u0012\u001f\n\nbool_value\u0018\u0004 \u0001(\bH\u0000R\tboolValue\u0012<\n\fstruct_value\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.StructH\u0000R\u000bstructValue\u0012;\n\nlist_value\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.ListValueH\u0000R\tlistValueB\u0006\n\u0004kind\";\n\tListValue\u0012.\n\u0006values\u0018\u0001 \u0003(\u000b2\u0016.google.protobuf.ValueR\u0006values*\u001b\n\tNullValue\u0012\u000e\n\nNULL_VALUE\u0010\u0000B\u007f\n\u0013com.google.protobufB\u000bStructProtoP\u0001Z/google.golang.org/protobuf/types/known/structpb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"}, new Descriptors.g[0]);

    static {
        Descriptors.b bVar = a().u().get(0);
        f69029a = bVar;
        f69030b = new AbstractC12722w0.h(bVar, new String[]{"Fields"});
        Descriptors.b bVar2 = bVar.u().get(0);
        f69031c = bVar2;
        f69032d = new AbstractC12722w0.h(bVar2, new String[]{XMLExporter.ELEMENT_KEY, XMLExporter.ELEMENT_VALUE});
        Descriptors.b bVar3 = a().u().get(1);
        f69033e = bVar3;
        f69034f = new AbstractC12722w0.h(bVar3, new String[]{"NullValue", "NumberValue", "StringValue", "BoolValue", "StructValue", "ListValue", "Kind"});
        Descriptors.b bVar4 = a().u().get(2);
        f69035g = bVar4;
        f69036h = new AbstractC12722w0.h(bVar4, new String[]{"Values"});
    }

    public static Descriptors.g a() {
        return f69037i;
    }

    public static void b(C12658b0 registry) {
        c(registry);
    }

    public static void c(C12666d0 registry) {
    }
}
