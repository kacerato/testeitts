.class public final enum Lorg/openjdk/tools/javac/util/Bits$BitsState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Bits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/Bits$BitsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/Bits$BitsState;

.field public static final enum NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

.field public static final enum UNINIT:Lorg/openjdk/tools/javac/util/Bits$BitsState;

.field public static final enum UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Bits$BitsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const-string v2, "UNINIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/util/Bits$BitsState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNINIT:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    new-instance v2, Lorg/openjdk/tools/javac/util/Bits$BitsState;

    const-string v3, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Bits$BitsState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/util/Bits$BitsState;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->$VALUES:[Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getState([IZ)Lorg/openjdk/tools/javac/util/Bits$BitsState;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNKNOWN:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/Bits;->access$000()[I

    move-result-object p1

    if-eq p0, p1, :cond_1

    sget-object p0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->NORMAL:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0

    :cond_1
    sget-object p0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->UNINIT:Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Bits$BitsState;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/Bits$BitsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/Bits$BitsState;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Bits$BitsState;->$VALUES:[Lorg/openjdk/tools/javac/util/Bits$BitsState;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/Bits$BitsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/Bits$BitsState;

    return-object v0
.end method
