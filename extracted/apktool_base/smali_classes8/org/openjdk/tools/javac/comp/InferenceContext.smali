.class public Lorg/openjdk/tools/javac/comp/InferenceContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;
    }
.end annotation


# instance fields
.field captureTypeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field freeTypeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field infer:Lorg/openjdk/tools/javac/comp/Infer;

.field inferencevars:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field types:Lorg/openjdk/tools/javac/code/Types;

.field undetvars:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Infer;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Infer;->fromTypeVarFun:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Infer;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeTypeListeners:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->captureTypeCache:Ljava/util/Map;

    .line 5
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    .line 6
    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    .line 7
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    .line 8
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->lambda$min$5(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->lambda$min$4(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->lambda$boundedVars$2(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->lambda$dupTo$3(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->lambda$instvars$1(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->lambda$min$6(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method private filterVars(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-interface {p1, v2}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->lambda$restvars$0(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$boundedVars$2(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getDeclaredBounds()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v1, v2}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$dupTo$3(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    return-void
.end method

.method private static synthetic lambda$instvars$1(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$min$4(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$min$5(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p4, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setInst(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {v0, p4, p2}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->minMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    return-void
.end method

.method private synthetic lambda$min$6(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    return-void
.end method

.method private static synthetic lambda$restvars$0(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private solve(Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0, p2}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    .line 2
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->solve(Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;)V

    return-void
.end method

.method private solveBasic(Ljava/util/EnumSet;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solveBasic(Lorg/openjdk/tools/javac/util/List;Ljava/util/EnumSet;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeTypeListeners:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeVarsIn(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer;->fromTypeVarFun:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;->apply(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->instTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public asInstTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public final asUndetVars(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final boundedVars()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/q0;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/q0;-><init>()V

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->filterVars(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cachedCapture(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->captureTypeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-nez p3, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->captureTypeCache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public dupTo(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->dupTo(Lorg/openjdk/tools/javac/comp/InferenceContext;Z)V

    return-void
.end method

.method public dupTo(Lorg/openjdk/tools/javac/comp/InferenceContext;Z)V
    .locals 3

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->save()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    .line 4
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    .line 5
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    .line 6
    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeTypeListeners:Ljava/util/Map;

    new-instance v2, Lorg/openjdk/tools/javac/comp/v0;

    invoke-direct {v2, p0}, Lorg/openjdk/tools/javac/comp/v0;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final free(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    return p1
.end method

.method public final free(Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    .line 3
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final freeVarsIn(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferenceVars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    .line 3
    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final freeVarsIn(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 7
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 8
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeVarsIn(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 10
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 11
    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public inferenceVars()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public instTypes()Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    :goto_1
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public instvars()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/p0;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/p0;-><init>()V

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->filterVars(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public min(Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/InferenceContext;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;Z",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->min:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    if-ne p1, v1, :cond_1

    return-object p0

    :cond_1
    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->min:Ljava/util/Set;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    invoke-static {v5}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->dup(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type$UndetVar;

    move-result-object v5

    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    filled-new-array {v9}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/openjdk/tools/javac/comp/r0;

    invoke-direct {v11, v1}, Lorg/openjdk/tools/javac/comp/r0;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->collector()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5, v9, v10}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/util/List;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v3, v4, p1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    iget-object v2, v3, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    new-instance v6, Lorg/openjdk/tools/javac/comp/s0;

    invoke-direct {v6, p0, v4, p3, v0}, Lorg/openjdk/tools/javac/comp/s0;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;)V

    invoke-virtual {v3, v5, v6}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    iget-object p2, v0, Lorg/openjdk/tools/javac/comp/InferenceContext$ReachabilityVisitor;->equiv:Ljava/util/Set;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    new-instance v0, Lorg/openjdk/tools/javac/comp/t0;

    invoke-direct {v0, p0, p2, p3}, Lorg/openjdk/tools/javac/comp/t0;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    invoke-virtual {v3, p1, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    :cond_5
    return-object v3
.end method

.method public notifyChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public notifyChange(Lorg/openjdk/tools/javac/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeTypeListeners:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, p1}, Lorg/openjdk/tools/javac/util/List;->diff(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;

    invoke-interface {v3, p0}, Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;->typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    .line 5
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->freeTypeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    throw v1
.end method

.method public restvars()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/u0;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/u0;-><init>()V

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->filterVars(Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rollback(Lorg/openjdk/tools/javac/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v4, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, v4, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    if-ne v5, v6, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v3, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->dupTo(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Types;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    iget-object v2, v3, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public save()Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->dup(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type$UndetVar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/comp/InferenceContext$2;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1, p1, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext$2;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;Lorg/openjdk/tools/javac/util/Warner;)V

    return-void
.end method

.method public solve(Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 2

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/comp/InferenceContext$1;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext$1;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Infer;)V

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;Lorg/openjdk/tools/javac/util/Warner;)V

    return-void
.end method

.method public solveAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/InferenceContext$3;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/List;->intersect(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext$3;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;Lorg/openjdk/tools/javac/util/Warner;)V

    return-void
.end method

.method public solveBasic(Lorg/openjdk/tools/javac/util/List;Ljava/util/EnumSet;)Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/List;->intersect(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 4
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    .line 5
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    .line 6
    invoke-virtual {v3, v1, p0}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->accepts(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3, v1, p0}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setInst(Lorg/openjdk/tools/javac/code/Type;)V

    .line 8
    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public solveLegacy(ZLorg/openjdk/tools/javac/util/Warner;Ljava/util/EnumSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/openjdk/tools/javac/util/Warner;",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solveBasic(Ljava/util/EnumSet;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-virtual {p1, p3, p0}, Lorg/openjdk/tools/javac/comp/Infer;->instantiateAsUninferredVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0, v3, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->substBounds(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Types;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inference vars: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "Undet vars: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undetVars()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public update(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    return-object p1
.end method
