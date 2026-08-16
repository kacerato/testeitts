.class Lorg/openjdk/tools/javac/jvm/Gen$2;
.super Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/jvm/Gen;->visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Gen;

.field final synthetic val$oldEnv:Lorg/openjdk/tools/javac/comp/Env;

.field final synthetic val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

.field final synthetic val$tryEnv:Lorg/openjdk/tools/javac/comp/Env;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Gen;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCTry;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->this$0:Lorg/openjdk/tools/javac/jvm/Gen;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$tryEnv:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    iput-object p4, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$oldEnv:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;-><init>(Lorg/openjdk/tools/javac/jvm/Gen;)V

    return-void
.end method


# virtual methods
.method public gen()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$tryEnv:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$tryEnv:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->this$0:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Gen;->access$100(Lorg/openjdk/tools/javac/jvm/Gen;)Lorg/openjdk/tools/javac/jvm/Code;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Gen$2;->genLast()V

    return-void
.end method

.method public genLast()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->this$0:Lorg/openjdk/tools/javac/jvm/Gen;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$oldEnv:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    :cond_0
    return-void
.end method

.method public hasFinalizer()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$2;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
