.class abstract Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/JavacTaskImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Filter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/api/JavacTaskImpl;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;->this$0:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract process(Lorg/openjdk/tools/javac/comp/Env;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation
.end method

.method public run(Ljava/util/Queue;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/Element;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PACKAGEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;->process(Lorg/openjdk/tools/javac/comp/Env;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
