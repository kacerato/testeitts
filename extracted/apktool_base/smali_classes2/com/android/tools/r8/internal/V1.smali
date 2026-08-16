.class public final Lcom/android/tools/r8/internal/V1;
.super Lcom/android/tools/r8/internal/X1;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Z

.field public final b:Lcom/android/tools/r8/internal/Cq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/tools/r8/internal/X1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/V1;->b:Lcom/android/tools/r8/internal/Cq;

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/V1;->a:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/V1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/F2;Ljava/util/Set;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/V1;->b:Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Lcom/android/tools/r8/internal/zY0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/zY0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Cq;->a(Lcom/android/tools/r8/graph/F2;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/V1;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/V1;->b:Lcom/android/tools/r8/internal/Cq;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Cq;->a(Lcom/android/tools/r8/graph/F2;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/V1;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/V1;->a:Z

    iget-boolean v1, p1, Lcom/android/tools/r8/internal/V1;->a:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/V1;->a:Z

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/V1;->b:Lcom/android/tools/r8/internal/Cq;

    new-instance v0, Lcom/android/tools/r8/internal/BY0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/BY0;-><init>(Lcom/android/tools/r8/internal/V1;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Cq;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/V1;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/V1;->b:Lcom/android/tools/r8/internal/Cq;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/internal/Cq;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Lcom/android/tools/r8/internal/AY0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/AY0;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method
