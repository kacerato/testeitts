.class final enum Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LambdaSymbolKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

.field public static final enum CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

.field public static final enum CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

.field public static final enum CAPTURED_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

.field public static final enum LOCAL_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

.field public static final enum PARAM:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

.field public static final enum TYPE_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    const-string v1, "PARAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->PARAM:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    const-string v2, "LOCAL_VAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->LOCAL_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    const-string v3, "CAPTURED_VAR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    const-string v4, "CAPTURED_THIS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    const-string v5, "CAPTURED_OUTER_THIS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    new-instance v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    const-string v6, "TYPE_VAR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->TYPE_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    filled-new-array/range {v0 .. v5}, [Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    return-object v0
.end method


# virtual methods
.method public propagateAnnotations()Z
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$comp$LambdaToMethod$LambdaSymbolKind:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
