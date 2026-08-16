.class public abstract Lcom/android/tools/r8/graph/b1;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public b:Lcom/android/tools/r8/graph/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/b1;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Should use DexAnnotationSet.THE_EMPTY_ANNOTATIONS_SET"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/b1;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->m0()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/Bc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Bc;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/Cc;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Cc;-><init>(Ljava/util/function/Function;)V

    .line 6
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Function;Lcom/android/tools/r8/graph/b1;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->o0()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/Dc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Dc;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/Ec;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Ec;-><init>(Ljava/util/function/Function;)V

    .line 2
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public S()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->l0()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->n0()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/p0;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/graph/p0;

    move-result-object v0

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    return-object p1
.end method

.method public a(Ljava/util/function/BiFunction;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Fc;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Fc;-><init>(Lcom/android/tools/r8/graph/b1;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-void
.end method

.method public d0()Lcom/android/tools/r8/graph/H2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getAccessFlags()Lcom/android/tools/r8/graph/g;
.end method

.method public abstract getReference()Lcom/android/tools/r8/graph/J2;
.end method

.method public k0()Lcom/android/tools/r8/graph/u0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-object v0
.end method

.method public l0()Lcom/android/tools/r8/graph/E0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m0()Lcom/android/tools/r8/graph/g1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n0()Lcom/android/tools/r8/graph/h1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o0()Lcom/android/tools/r8/graph/j1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p0()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-void
.end method

.method public final q0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public r0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->q0()Z

    move-result v0

    return v0
.end method

.method public s0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/g1;

    return v0
.end method

.method public u0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract w0()Z
.end method

.method public abstract x0()Z
.end method

.method public y()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    return-void
.end method
