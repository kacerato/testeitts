.class abstract enum Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "JumpKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

.field public static final enum BREAK:Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

.field public static final enum CONTINUE:Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;


# instance fields
.field final treeTag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind$1;

    const/4 v1, 0x0

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BREAK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v3, "BREAK"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind$1;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->BREAK:Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind$2;

    const/4 v3, 0x1

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CONTINUE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const-string v5, "CONTINUE"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind$2;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->CONTINUE:Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->treeTag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/comp/Flow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    return-object v0
.end method


# virtual methods
.method public abstract getTarget(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
.end method
