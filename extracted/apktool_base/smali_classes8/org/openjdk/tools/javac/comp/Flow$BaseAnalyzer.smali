.class abstract Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;,
        Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;",
        ">",
        "Lorg/openjdk/tools/javac/tree/TreeScanner;"
    }
.end annotation


# instance fields
.field pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method

.method private resolveJump(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TP;>;",
            "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v3, p3, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->treeTag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p3, v2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->getTarget(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->resolveJump()V

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method public abstract markDead()V
.end method

.method public recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->markDead()V

    return-void
.end method

.method public resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "TP;>;)Z"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->BREAK:Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveJump(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;)Z

    move-result p1

    return p1
.end method

.method public resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    sget-object v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;->CONTINUE:Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveJump(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$JumpKind;)Z

    move-result p1

    return p1
.end method

.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->stuckType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_1
    return-void
.end method

.method public visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 0

    return-void
.end method
