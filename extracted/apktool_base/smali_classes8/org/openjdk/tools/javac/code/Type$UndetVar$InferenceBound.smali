.class public abstract enum Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type$UndetVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "InferenceBound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

.field public static final enum EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

.field public static final enum LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

.field public static final enum UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound$1;

    const-string v1, "LOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound$2;

    const-string v3, "EQ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    new-instance v3, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound$3;

    const-string v5, "UPPER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->$VALUES:[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->$VALUES:[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    return-object v0
.end method


# virtual methods
.method public abstract complement()Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;
.end method

.method public lessThan(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/code/Type$5;->$SwitchMap$com$sun$tools$javac$code$Type$UndetVar$InferenceBound:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const-string p1, "Cannot get here!"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    return v0

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-eq p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method
