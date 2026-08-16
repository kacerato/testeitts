.class public final enum Lcom/google/protobuf/i0$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/i0$d;",
        ">;",
        "Lcom/google/protobuf/B1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/i0$d;

.field public static final enum TYPE_BOOL:Lcom/google/protobuf/i0$d;

.field public static final TYPE_BOOL_VALUE:I = 0x8

.field public static final enum TYPE_BYTES:Lcom/google/protobuf/i0$d;

.field public static final TYPE_BYTES_VALUE:I = 0xc

.field public static final enum TYPE_DOUBLE:Lcom/google/protobuf/i0$d;

.field public static final TYPE_DOUBLE_VALUE:I = 0x1

.field public static final enum TYPE_ENUM:Lcom/google/protobuf/i0$d;

.field public static final TYPE_ENUM_VALUE:I = 0xe

.field public static final enum TYPE_FIXED32:Lcom/google/protobuf/i0$d;

.field public static final TYPE_FIXED32_VALUE:I = 0x7

.field public static final enum TYPE_FIXED64:Lcom/google/protobuf/i0$d;

.field public static final TYPE_FIXED64_VALUE:I = 0x6

.field public static final enum TYPE_FLOAT:Lcom/google/protobuf/i0$d;

.field public static final TYPE_FLOAT_VALUE:I = 0x2

.field public static final enum TYPE_GROUP:Lcom/google/protobuf/i0$d;

.field public static final TYPE_GROUP_VALUE:I = 0xa

.field public static final enum TYPE_INT32:Lcom/google/protobuf/i0$d;

.field public static final TYPE_INT32_VALUE:I = 0x5

.field public static final enum TYPE_INT64:Lcom/google/protobuf/i0$d;

.field public static final TYPE_INT64_VALUE:I = 0x3

.field public static final enum TYPE_MESSAGE:Lcom/google/protobuf/i0$d;

.field public static final TYPE_MESSAGE_VALUE:I = 0xb

.field public static final enum TYPE_SFIXED32:Lcom/google/protobuf/i0$d;

.field public static final TYPE_SFIXED32_VALUE:I = 0xf

.field public static final enum TYPE_SFIXED64:Lcom/google/protobuf/i0$d;

.field public static final TYPE_SFIXED64_VALUE:I = 0x10

.field public static final enum TYPE_SINT32:Lcom/google/protobuf/i0$d;

.field public static final TYPE_SINT32_VALUE:I = 0x11

.field public static final enum TYPE_SINT64:Lcom/google/protobuf/i0$d;

.field public static final TYPE_SINT64_VALUE:I = 0x12

.field public static final enum TYPE_STRING:Lcom/google/protobuf/i0$d;

.field public static final TYPE_STRING_VALUE:I = 0x9

.field public static final enum TYPE_UINT32:Lcom/google/protobuf/i0$d;

.field public static final TYPE_UINT32_VALUE:I = 0xd

.field public static final enum TYPE_UINT64:Lcom/google/protobuf/i0$d;

.field public static final TYPE_UINT64_VALUE:I = 0x4

.field public static final enum TYPE_UNKNOWN:Lcom/google/protobuf/i0$d;

.field public static final TYPE_UNKNOWN_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/protobuf/i0$d;

.field private static final VALUES:[Lcom/google/protobuf/i0$d;

.field private static final internalValueMap:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "Lcom/google/protobuf/i0$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Lcom/google/protobuf/i0$d;

    move-object v0, v1

    const-string v2, "TYPE_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/i0$d;->TYPE_UNKNOWN:Lcom/google/protobuf/i0$d;

    new-instance v2, Lcom/google/protobuf/i0$d;

    move-object v1, v2

    const-string v3, "TYPE_DOUBLE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/protobuf/i0$d;->TYPE_DOUBLE:Lcom/google/protobuf/i0$d;

    new-instance v3, Lcom/google/protobuf/i0$d;

    move-object v2, v3

    const-string v4, "TYPE_FLOAT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/protobuf/i0$d;->TYPE_FLOAT:Lcom/google/protobuf/i0$d;

    new-instance v4, Lcom/google/protobuf/i0$d;

    move-object v3, v4

    const-string v5, "TYPE_INT64"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/protobuf/i0$d;->TYPE_INT64:Lcom/google/protobuf/i0$d;

    new-instance v5, Lcom/google/protobuf/i0$d;

    move-object v4, v5

    const-string v6, "TYPE_UINT64"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/protobuf/i0$d;->TYPE_UINT64:Lcom/google/protobuf/i0$d;

    new-instance v6, Lcom/google/protobuf/i0$d;

    move-object v5, v6

    const-string v7, "TYPE_INT32"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/protobuf/i0$d;->TYPE_INT32:Lcom/google/protobuf/i0$d;

    new-instance v7, Lcom/google/protobuf/i0$d;

    move-object v6, v7

    const-string v8, "TYPE_FIXED64"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/protobuf/i0$d;->TYPE_FIXED64:Lcom/google/protobuf/i0$d;

    new-instance v8, Lcom/google/protobuf/i0$d;

    move-object v7, v8

    const-string v9, "TYPE_FIXED32"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/protobuf/i0$d;->TYPE_FIXED32:Lcom/google/protobuf/i0$d;

    new-instance v9, Lcom/google/protobuf/i0$d;

    move-object v8, v9

    const-string v10, "TYPE_BOOL"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/protobuf/i0$d;->TYPE_BOOL:Lcom/google/protobuf/i0$d;

    new-instance v10, Lcom/google/protobuf/i0$d;

    move-object v9, v10

    const-string v11, "TYPE_STRING"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/protobuf/i0$d;->TYPE_STRING:Lcom/google/protobuf/i0$d;

    new-instance v11, Lcom/google/protobuf/i0$d;

    move-object v10, v11

    const-string v12, "TYPE_GROUP"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/protobuf/i0$d;->TYPE_GROUP:Lcom/google/protobuf/i0$d;

    new-instance v12, Lcom/google/protobuf/i0$d;

    move-object v11, v12

    const-string v13, "TYPE_MESSAGE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/protobuf/i0$d;->TYPE_MESSAGE:Lcom/google/protobuf/i0$d;

    new-instance v13, Lcom/google/protobuf/i0$d;

    move-object v12, v13

    const-string v14, "TYPE_BYTES"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/protobuf/i0$d;->TYPE_BYTES:Lcom/google/protobuf/i0$d;

    new-instance v14, Lcom/google/protobuf/i0$d;

    move-object v13, v14

    const-string v15, "TYPE_UINT32"

    move-object/from16 v20, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/protobuf/i0$d;->TYPE_UINT32:Lcom/google/protobuf/i0$d;

    new-instance v0, Lcom/google/protobuf/i0$d;

    move-object v14, v0

    const-string v15, "TYPE_ENUM"

    move-object/from16 v21, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/i0$d;->TYPE_ENUM:Lcom/google/protobuf/i0$d;

    new-instance v0, Lcom/google/protobuf/i0$d;

    move-object v15, v0

    const-string v1, "TYPE_SFIXED32"

    move-object/from16 v22, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/i0$d;->TYPE_SFIXED32:Lcom/google/protobuf/i0$d;

    new-instance v0, Lcom/google/protobuf/i0$d;

    move-object/from16 v16, v0

    const-string v1, "TYPE_SFIXED64"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/i0$d;->TYPE_SFIXED64:Lcom/google/protobuf/i0$d;

    new-instance v0, Lcom/google/protobuf/i0$d;

    move-object/from16 v17, v0

    const-string v1, "TYPE_SINT32"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/i0$d;->TYPE_SINT32:Lcom/google/protobuf/i0$d;

    new-instance v0, Lcom/google/protobuf/i0$d;

    move-object/from16 v18, v0

    const-string v1, "TYPE_SINT64"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/i0$d;->TYPE_SINT64:Lcom/google/protobuf/i0$d;

    new-instance v0, Lcom/google/protobuf/i0$d;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const/4 v2, -0x1

    move-object/from16 v23, v3

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/i0$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/i0$d;->UNRECOGNIZED:Lcom/google/protobuf/i0$d;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    filled-new-array/range {v0 .. v19}, [Lcom/google/protobuf/i0$d;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/i0$d;->$VALUES:[Lcom/google/protobuf/i0$d;

    new-instance v0, Lcom/google/protobuf/i0$d$a;

    invoke-direct {v0}, Lcom/google/protobuf/i0$d$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/i0$d;->internalValueMap:Lcom/google/protobuf/D0$d;

    invoke-static {}, Lcom/google/protobuf/i0$d;->values()[Lcom/google/protobuf/i0$d;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/i0$d;->VALUES:[Lcom/google/protobuf/i0$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/i0$d;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/protobuf/i0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_SINT64:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_SINT32:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_SFIXED64:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_SFIXED32:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_ENUM:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_UINT32:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_BYTES:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_MESSAGE:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_GROUP:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_STRING:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_BOOL:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_FIXED32:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_FIXED64:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_INT32:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_UINT64:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_INT64:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_FLOAT:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_DOUBLE:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/google/protobuf/i0$d;->TYPE_UNKNOWN:Lcom/google/protobuf/i0$d;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/i0;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static c()Lcom/google/protobuf/D0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/D0$d<",
            "Lcom/google/protobuf/i0$d;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/i0$d;->internalValueMap:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public static e(I)Lcom/google/protobuf/i0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/i0$d;->a(I)Lcom/google/protobuf/i0$d;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/protobuf/Descriptors$e;)Lcom/google/protobuf/i0$d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->i()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/i0$d;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/google/protobuf/i0$d;->UNRECOGNIZED:Lcom/google/protobuf/i0$d;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/protobuf/i0$d;->VALUES:[Lcom/google/protobuf/i0$d;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/i0$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/i0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/i0$d;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/i0$d;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i0$d;->$VALUES:[Lcom/google/protobuf/i0$d;

    invoke-virtual {v0}, [Lcom/google/protobuf/i0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/i0$d;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/i0$d;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/google/protobuf/i0$d;->UNRECOGNIZED:Lcom/google/protobuf/i0$d;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/i0$d;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    sget-object v0, Lcom/google/protobuf/i0$d;->UNRECOGNIZED:Lcom/google/protobuf/i0$d;

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/i0$d;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->t()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
