.class public final enum Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/CompileStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompileState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum ATTR:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum ENTER:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum GENERATE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum INIT:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum LOWER:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum PARSE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum PROCESS:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum TRANSTYPES:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public static final enum UNLAMBDA:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->INIT:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v2, "PARSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->PARSE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v2, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v3, "ENTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->ENTER:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v3, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v4, "PROCESS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->PROCESS:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v4, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v5, "ATTR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->ATTR:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v5, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v6, "FLOW"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v6, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v7, "TRANSTYPES"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->TRANSTYPES:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v7, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v8, "UNLAMBDA"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->UNLAMBDA:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v8, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v9, "LOWER"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->LOWER:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    new-instance v9, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    const-string v10, "GENERATE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->GENERATE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    filled-new-array/range {v0 .. v9}, [Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->$VALUES:[Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

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

    iput p3, p0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->value:I

    return-void
.end method

.method public static max(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->value:I

    iget v1, p1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->value:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->$VALUES:[Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    return-object v0
.end method


# virtual methods
.method public isAfter(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->value:I

    iget p1, p1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->value:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
