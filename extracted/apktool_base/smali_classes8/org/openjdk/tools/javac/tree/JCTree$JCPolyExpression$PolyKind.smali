.class public final enum Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolyKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

.field public static final enum POLY:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

.field public static final enum STANDALONE:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    const-string v1, "STANDALONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->STANDALONE:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    new-instance v1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    const-string v2, "POLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->POLY:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->$VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->$VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    return-object v0
.end method
