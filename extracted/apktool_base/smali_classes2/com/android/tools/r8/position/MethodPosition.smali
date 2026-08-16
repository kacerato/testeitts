.class public Lcom/android/tools/r8/position/MethodPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/position/Position;


# instance fields
.field private final a:Lcom/android/tools/r8/references/MethodReference;

.field private final b:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->b:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 8
    iput-object p2, p0, Lcom/android/tools/r8/position/MethodPosition;->b:Lcom/android/tools/r8/position/Position;

    return-void
.end method

.method public static create(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/position/MethodPosition;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-static {p0}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/position/MethodPosition;
    .locals 2

    .line 2
    sget-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/G;->l:Lcom/android/tools/r8/position/Position;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/position/Position;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/position/MethodPosition;
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/position/MethodPosition;

    sget-object v1, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/position/Position;)V

    return-object v0
.end method

.method public static create(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/position/Position;)Lcom/android/tools/r8/position/MethodPosition;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/position/MethodPosition;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/position/Position;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/position/MethodPosition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    check-cast p1, Lcom/android/tools/r8/position/MethodPosition;

    iget-object p1, p1, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/references/MethodReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/position/MethodPosition;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/position/a;

    invoke-direct {v1}, Lcom/android/tools/r8/position/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->b:Lcom/android/tools/r8/position/Position;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/MethodPosition;->a:Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
