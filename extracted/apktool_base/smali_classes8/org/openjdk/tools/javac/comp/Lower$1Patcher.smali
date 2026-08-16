.class Lorg/openjdk/tools/javac/comp/Lower$1Patcher;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Lower;->patchTargets(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Patcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Lower;

.field final synthetic val$dest:Lorg/openjdk/tools/javac/tree/JCTree;

.field final synthetic val$src:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;->val$src:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;->val$dest:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;->val$src:Lorg/openjdk/tools/javac/tree/JCTree;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;->val$dest:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_0
    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    return-void
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;->val$src:Lorg/openjdk/tools/javac/tree/JCTree;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;->val$dest:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_0
    return-void
.end method
