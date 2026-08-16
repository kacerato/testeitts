.class Lorg/openjdk/tools/javac/comp/Resolve$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$6;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Resolve$6;->lambda$loadClass$4(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$6;->lambda$loadClass$2(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$6;->lambda$null$1(Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$6;->lambda$loadClass$3(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$6;->lambda$null$0(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadClass$2(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;
    .locals 0

    new-instance p2, Lorg/openjdk/tools/javac/comp/i2;

    invoke-direct {p2, p0, p1}, Lorg/openjdk/tools/javac/comp/i2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;)V

    return-object p2
.end method

.method private synthetic lambda$loadClass$3(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/util/Name;

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$6;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/code/ClassFinder;->loadClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$loadClass$4(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 1

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$null$0(Lorg/openjdk/tools/javac/util/Name;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$6;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->getClassesForName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$null$1(Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/j2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/j2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$6;)V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Iterators;->createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public loadClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->classCandidates(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$6;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    new-instance v4, Lorg/openjdk/tools/javac/comp/k2;

    invoke-direct {v4, p0, v0}, Lorg/openjdk/tools/javac/comp/k2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;)V

    new-instance v5, Lorg/openjdk/tools/javac/comp/l2;

    invoke-direct {v5, p0, v0}, Lorg/openjdk/tools/javac/comp/l2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$6;Lorg/openjdk/tools/javac/util/List;)V

    new-instance v6, Lorg/openjdk/tools/javac/comp/m2;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/comp/m2;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$6;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Resolve;->access$900(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1000(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method
