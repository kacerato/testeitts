.class public final enum Lcom/android/aapt/Resources$OverlayableItem$Policy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$OverlayableItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
        ">;",
        "Lcom/google/protobuf/B1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final enum ACTOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final ACTOR_VALUE:I = 0x8

.field public static final enum CONFIG_SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final CONFIG_SIGNATURE_VALUE:I = 0x9

.field public static final enum NONE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final NONE_VALUE:I = 0x0

.field public static final enum ODM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final ODM_VALUE:I = 0x6

.field public static final enum OEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final OEM_VALUE:I = 0x7

.field public static final enum PRODUCT:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final PRODUCT_VALUE:I = 0x4

.field public static final enum PUBLIC:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final PUBLIC_VALUE:I = 0x1

.field public static final enum SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final SIGNATURE_VALUE:I = 0x5

.field public static final enum SYSTEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final SYSTEM_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field private static final VALUES:[Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final enum VENDOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

.field public static final VENDOR_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 11

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->NONE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v1, Lcom/android/aapt/Resources$OverlayableItem$Policy;->PUBLIC:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v2, Lcom/android/aapt/Resources$OverlayableItem$Policy;->SYSTEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v3, Lcom/android/aapt/Resources$OverlayableItem$Policy;->VENDOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v4, Lcom/android/aapt/Resources$OverlayableItem$Policy;->PRODUCT:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v5, Lcom/android/aapt/Resources$OverlayableItem$Policy;->SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v6, Lcom/android/aapt/Resources$OverlayableItem$Policy;->ODM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v7, Lcom/android/aapt/Resources$OverlayableItem$Policy;->OEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v8, Lcom/android/aapt/Resources$OverlayableItem$Policy;->ACTOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v9, Lcom/android/aapt/Resources$OverlayableItem$Policy;->CONFIG_SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    sget-object v10, Lcom/android/aapt/Resources$OverlayableItem$Policy;->UNRECOGNIZED:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    filled-new-array/range {v0 .. v10}, [Lcom/android/aapt/Resources$OverlayableItem$Policy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->NONE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "PUBLIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->PUBLIC:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "SYSTEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->SYSTEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "VENDOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->VENDOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "PRODUCT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->PRODUCT:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "SIGNATURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "ODM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->ODM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "OEM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->OEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "ACTOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->ACTOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const-string v1, "CONFIG_SIGNATURE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->CONFIG_SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->UNRECOGNIZED:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->$values()[Lcom/android/aapt/Resources$OverlayableItem$Policy;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->$VALUES:[Lcom/android/aapt/Resources$OverlayableItem$Policy;

    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem$Policy$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$OverlayableItem$Policy$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->internalValueMap:Lcom/google/protobuf/D0$d;

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->values()[Lcom/android/aapt/Resources$OverlayableItem$Policy;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->VALUES:[Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->CONFIG_SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->ACTOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->OEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->ODM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->SIGNATURE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->PRODUCT:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->VENDOR:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->SYSTEM:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->PUBLIC:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->NONE:Lcom/android/aapt/Resources$OverlayableItem$Policy;

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

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/D0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/D0$d<",
            "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->internalValueMap:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->forNumber(I)Lcom/android/aapt/Resources$OverlayableItem$Policy;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->i()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->UNRECOGNIZED:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->VALUES:[Lcom/android/aapt/Resources$OverlayableItem$Policy;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 1

    .line 1
    const-class v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p0
.end method

.method public static values()[Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->$VALUES:[Lcom/android/aapt/Resources$OverlayableItem$Policy;

    invoke-virtual {v0}, [Lcom/android/aapt/Resources$OverlayableItem$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->UNRECOGNIZED:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    sget-object v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;->UNRECOGNIZED:Lcom/android/aapt/Resources$OverlayableItem$Policy;

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

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
