.class public final Lcom/android/tools/r8/shaking/H3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/G3;

.field public final b:Lcom/android/tools/r8/graph/E0;

.field public final c:Lcom/android/tools/r8/internal/Un;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/Un;->d:Lcom/android/tools/r8/internal/Sn;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/shaking/H3;->a:Lcom/android/tools/r8/shaking/G3;

    .line 8
    iput-object p2, p0, Lcom/android/tools/r8/shaking/H3;->b:Lcom/android/tools/r8/graph/E0;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/shaking/H3;->c:Lcom/android/tools/r8/internal/Un;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Tn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/shaking/H3;->a:Lcom/android/tools/r8/shaking/G3;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/shaking/H3;->b:Lcom/android/tools/r8/graph/E0;

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/shaking/H3;->c:Lcom/android/tools/r8/internal/Un;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/A4;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H3;->b:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H3;->c:Lcom/android/tools/r8/internal/Un;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H0;

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/shaking/H3;->d:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v2, v1, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 11
    sget-object v3, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/H1;->r()Lcom/android/tools/r8/shaking/H1;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/H1;->u()Lcom/android/tools/r8/shaking/H1;

    goto :goto_0

    .line 17
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/shaking/H3;->d:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/shaking/H3;->c:Lcom/android/tools/r8/internal/Un;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Vn;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/g6;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/g6;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/A4;)V
    .locals 2

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/shaking/H3;->a:Lcom/android/tools/r8/shaking/G3;

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/v3;->x()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/shaking/H3;->b:Lcom/android/tools/r8/graph/E0;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p2, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/shaking/H3;->b:Lcom/android/tools/r8/graph/E0;

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 26
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->p()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->q()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->v()Lcom/android/tools/r8/shaking/k1;

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/H3;->a(Lcom/android/tools/r8/shaking/A4;)V

    :cond_0
    return-void
.end method
