.class public final enum Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/ConfigurationOuterClass$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Hdr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;",
        ">;",
        "Lcom/google/protobuf/B1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

.field public static final enum HDR_HIGHDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

.field public static final HDR_HIGHDR_VALUE:I = 0x1

.field public static final enum HDR_LOWDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

.field public static final HDR_LOWDR_VALUE:I = 0x2

.field public static final enum HDR_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

.field public static final HDR_UNSET_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

.field private static final VALUES:[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

.field private static final internalValueMap:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 4

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    sget-object v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_HIGHDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    sget-object v2, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_LOWDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    sget-object v3, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    const-string v1, "HDR_UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    const-string v1, "HDR_HIGHDR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_HIGHDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    const-string v1, "HDR_LOWDR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_LOWDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->$values()[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->$VALUES:[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    new-instance v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr$1;

    invoke-direct {v0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr$1;-><init>()V

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->internalValueMap:Lcom/google/protobuf/D0$d;

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->values()[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    move-result-object v0

    sput-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->VALUES:[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

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

    iput p3, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_LOWDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_HIGHDR:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->HDR_UNSET:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

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
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->internalValueMap:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->i()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->VALUES:[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 1

    .line 1
    const-class v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    return-object p0
.end method

.method public static values()[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;
    .locals 1

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->$VALUES:[Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    invoke-virtual {v0}, [Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    sget-object v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->UNRECOGNIZED:Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Hdr;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

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
