.class final enum Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind$2;
.super Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/comp/Flow$1;)V

    return-void
.end method


# virtual methods
.method public getTarget(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p1
.end method
