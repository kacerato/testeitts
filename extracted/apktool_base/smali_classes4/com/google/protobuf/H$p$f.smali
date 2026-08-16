.class public final enum Lcom/google/protobuf/H$p$f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/H$p$f;",
        ">;",
        "Lcom/google/protobuf/B1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/H$p$f;

.field public static final enum TARGET_TYPE_ENUM:Lcom/google/protobuf/H$p$f;

.field public static final enum TARGET_TYPE_ENUM_ENTRY:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_ENUM_ENTRY_VALUE:I = 0x7

.field public static final TARGET_TYPE_ENUM_VALUE:I = 0x6

.field public static final enum TARGET_TYPE_EXTENSION_RANGE:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_EXTENSION_RANGE_VALUE:I = 0x2

.field public static final enum TARGET_TYPE_FIELD:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_FIELD_VALUE:I = 0x4

.field public static final enum TARGET_TYPE_FILE:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_FILE_VALUE:I = 0x1

.field public static final enum TARGET_TYPE_MESSAGE:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_MESSAGE_VALUE:I = 0x3

.field public static final enum TARGET_TYPE_METHOD:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_METHOD_VALUE:I = 0x9

.field public static final enum TARGET_TYPE_ONEOF:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_ONEOF_VALUE:I = 0x5

.field public static final enum TARGET_TYPE_SERVICE:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_SERVICE_VALUE:I = 0x8

.field public static final enum TARGET_TYPE_UNKNOWN:Lcom/google/protobuf/H$p$f;

.field public static final TARGET_TYPE_UNKNOWN_VALUE:I

.field private static final VALUES:[Lcom/google/protobuf/H$p$f;

.field private static final internalValueMap:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "Lcom/google/protobuf/H$p$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/protobuf/H$p$f;

    const-string v1, "TARGET_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_UNKNOWN:Lcom/google/protobuf/H$p$f;

    new-instance v1, Lcom/google/protobuf/H$p$f;

    const-string v2, "TARGET_TYPE_FILE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_FILE:Lcom/google/protobuf/H$p$f;

    new-instance v2, Lcom/google/protobuf/H$p$f;

    const-string v3, "TARGET_TYPE_EXTENSION_RANGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_EXTENSION_RANGE:Lcom/google/protobuf/H$p$f;

    new-instance v3, Lcom/google/protobuf/H$p$f;

    const-string v4, "TARGET_TYPE_MESSAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_MESSAGE:Lcom/google/protobuf/H$p$f;

    new-instance v4, Lcom/google/protobuf/H$p$f;

    const-string v5, "TARGET_TYPE_FIELD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_FIELD:Lcom/google/protobuf/H$p$f;

    new-instance v5, Lcom/google/protobuf/H$p$f;

    const-string v6, "TARGET_TYPE_ONEOF"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_ONEOF:Lcom/google/protobuf/H$p$f;

    new-instance v6, Lcom/google/protobuf/H$p$f;

    const-string v7, "TARGET_TYPE_ENUM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_ENUM:Lcom/google/protobuf/H$p$f;

    new-instance v7, Lcom/google/protobuf/H$p$f;

    const-string v8, "TARGET_TYPE_ENUM_ENTRY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_ENUM_ENTRY:Lcom/google/protobuf/H$p$f;

    new-instance v8, Lcom/google/protobuf/H$p$f;

    const-string v9, "TARGET_TYPE_SERVICE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_SERVICE:Lcom/google/protobuf/H$p$f;

    new-instance v9, Lcom/google/protobuf/H$p$f;

    const-string v10, "TARGET_TYPE_METHOD"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/google/protobuf/H$p$f;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_METHOD:Lcom/google/protobuf/H$p$f;

    filled-new-array/range {v0 .. v9}, [Lcom/google/protobuf/H$p$f;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/H$p$f;->$VALUES:[Lcom/google/protobuf/H$p$f;

    new-instance v0, Lcom/google/protobuf/H$p$f$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$p$f$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$p$f;->internalValueMap:Lcom/google/protobuf/D0$d;

    invoke-static {}, Lcom/google/protobuf/H$p$f;->values()[Lcom/google/protobuf/H$p$f;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/H$p$f;->VALUES:[Lcom/google/protobuf/H$p$f;

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

    iput p3, p0, Lcom/google/protobuf/H$p$f;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/protobuf/H$p$f;
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
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_METHOD:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_SERVICE:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_ENUM_ENTRY:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_ENUM:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_ONEOF:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_FIELD:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_MESSAGE:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_EXTENSION_RANGE:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_FILE:Lcom/google/protobuf/H$p$f;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/protobuf/H$p$f;->TARGET_TYPE_UNKNOWN:Lcom/google/protobuf/H$p$f;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    invoke-static {}, Lcom/google/protobuf/H$p;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

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
            "Lcom/google/protobuf/H$p$f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$p$f;->internalValueMap:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public static e(I)Lcom/google/protobuf/H$p$f;
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

    invoke-static {p0}, Lcom/google/protobuf/H$p$f;->a(I)Lcom/google/protobuf/H$p$f;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/protobuf/Descriptors$e;)Lcom/google/protobuf/H$p$f;
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

    invoke-static {}, Lcom/google/protobuf/H$p$f;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/protobuf/H$p$f;->VALUES:[Lcom/google/protobuf/H$p$f;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/H$p$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/H$p$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$p$f;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/H$p$f;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$p$f;->$VALUES:[Lcom/google/protobuf/H$p$f;

    invoke-virtual {v0}, [Lcom/google/protobuf/H$p$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/H$p$f;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$p$f;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$p$f;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$p$f;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->t()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0
.end method
