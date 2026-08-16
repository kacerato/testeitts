.class public Lcom/android/tools/r8/internal/uf0;
.super Lcom/android/tools/r8/internal/lZ;
.source "SourceFile"


# static fields
.field public static final synthetic p:Z = true


# instance fields
.field public final n:Lcom/android/tools/r8/internal/s6;

.field public final o:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/s6;Lcom/android/tools/r8/internal/s6;Lcom/android/tools/r8/internal/s6;Ljava/util/Map;)V
    .locals 6

    invoke-interface {p3}, Lcom/android/tools/r8/internal/m6;->e()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/lZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/k6;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/uf0;->n:Lcom/android/tools/r8/internal/s6;

    iput-object p5, p0, Lcom/android/tools/r8/internal/uf0;->o:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/uf0;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)Z
    .locals 3

    if-ne p1, p2, :cond_1

    .line 4
    sget-boolean p1, Lcom/android/tools/r8/internal/uf0;->p:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The from and to references should not be equal"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;)Z

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Vu1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Vu1;-><init>(Lcom/android/tools/r8/internal/uf0;)V

    new-instance v1, Lcom/android/tools/r8/internal/Wu1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Wu1;-><init>(Lcom/android/tools/r8/internal/uf0;)V

    new-instance v2, Lcom/android/tools/r8/internal/Xu1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Xu1;-><init>(Lcom/android/tools/r8/internal/uf0;)V

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    if-eq p1, p2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/uf0;->n:Lcom/android/tools/r8/internal/s6;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/m6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/v2;)Z
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/uf0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Uu1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Uu1;-><init>(Lcom/android/tools/r8/internal/uf0;)V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 11
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 13
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object p2

    .line 14
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/qK;->a(Ljava/util/function/BiPredicate;Lcom/android/tools/r8/internal/sK;Lcom/android/tools/r8/internal/sK;)Z

    move-result p1

    return p1
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
