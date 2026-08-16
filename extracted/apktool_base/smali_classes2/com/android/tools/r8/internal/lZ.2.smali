.class public Lcom/android/tools/r8/internal/lZ;
.super Lcom/android/tools/r8/internal/Hj;
.source "SourceFile"


# static fields
.field public static final j:Lcom/android/tools/r8/internal/Jt;

.field public static final k:Lcom/android/tools/r8/internal/Jt;

.field public static final l:Lcom/android/tools/r8/internal/Jt;

.field public static final synthetic m:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/o6;

.field public final g:Ljava/util/function/Function;

.field public final h:Lcom/android/tools/r8/internal/k6;

.field public final i:Lcom/android/tools/r8/internal/k6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/lZ;->j:Lcom/android/tools/r8/internal/Jt;

    new-instance v0, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/lZ;->k:Lcom/android/tools/r8/internal/Jt;

    new-instance v0, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/lZ;->l:Lcom/android/tools/r8/internal/Jt;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/k6;)V
    .locals 1

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/Ni1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/Ni1;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Hj;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    iput-object v0, p0, Lcom/android/tools/r8/internal/lZ;->g:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/android/tools/r8/internal/lZ;->h:Lcom/android/tools/r8/internal/k6;

    iput-object p5, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    sget-boolean p1, Lcom/android/tools/r8/internal/lZ;->m:Z

    if-nez p1, :cond_1

    invoke-interface {p4}, Lcom/android/tools/r8/internal/j6;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/j6;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lZ;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 0

    .line 1
    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/lZ;->g:Ljava/util/function/Function;

    .line 5
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/v2;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 7
    :goto_0
    move-object v2, p2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 8
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 9
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    if-ne p2, p3, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 10
    :cond_1
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 12
    invoke-virtual {v2, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    move-object v1, p2

    .line 13
    :goto_1
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 14
    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 15
    iget-object p2, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 16
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 17
    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/tools/r8/internal/lZ;->a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v5

    .line 19
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 20
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 22
    invoke-virtual {p0, v1, v2, p2, p1}, Lcom/android/tools/r8/internal/lZ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;

    move-result-object v4

    .line 23
    new-instance p1, Lcom/android/tools/r8/internal/NW;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/lZ;->g:Ljava/util/function/Function;

    .line 26
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 27
    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    if-nez p2, :cond_3

    .line 28
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 29
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    :cond_3
    move-object v1, p2

    .line 30
    iget-object p2, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 31
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 32
    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 33
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/tools/r8/internal/lZ;->a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v5

    .line 34
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    if-ne v1, p2, :cond_4

    .line 35
    iget-object p3, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    if-ne v5, p3, :cond_4

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 37
    :cond_4
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 38
    sget-object p3, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 39
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 40
    iget-object p1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 41
    invoke-virtual {p0, v1, v1, p2, p1}, Lcom/android/tools/r8/internal/lZ;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;

    move-result-object v4

    .line 42
    new-instance p1, Lcom/android/tools/r8/internal/NW;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 43
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;
    .locals 0

    .line 2
    return-object p4
.end method

.method public b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, p1, p1}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/iw;)Lcom/android/tools/r8/internal/iw;
    .locals 5

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    .line 6
    iget-object v1, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 7
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 8
    :cond_0
    check-cast v1, Lcom/android/tools/r8/graph/v2;

    .line 9
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 11
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 12
    iget-object v2, p1, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    .line 13
    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 15
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/l1;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    .line 19
    instance-of v4, p0, Lcom/android/tools/r8/internal/cx0;

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->b:Lcom/android/tools/r8/graph/y;

    invoke-interface {v0, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    sget-boolean v2, Lcom/android/tools/r8/internal/lZ;->m:Z

    if-nez v2, :cond_3

    move-object v2, p0

    check-cast v2, Lcom/android/tools/r8/internal/cx0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 23
    iget-object v2, v2, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/l1;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    .line 29
    :cond_4
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/Pi1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Pi1;-><init>(Lcom/android/tools/r8/internal/lZ;)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/iw;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/Pi1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Pi1;-><init>(Lcom/android/tools/r8/internal/lZ;)V

    .line 31
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/iw;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 32
    new-instance v2, Lcom/android/tools/r8/internal/iw;

    invoke-direct {v2, v3, v1, v0, p1}, Lcom/android/tools/r8/internal/iw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-object v2

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    .line 34
    iget-object v1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    invoke-interface {v0, v1, v1}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/v2;

    .line 35
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 36
    new-instance v1, Lcom/android/tools/r8/internal/Pi1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Pi1;-><init>(Lcom/android/tools/r8/internal/lZ;)V

    .line 37
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/iw;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Pi1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Pi1;-><init>(Lcom/android/tools/r8/internal/lZ;)V

    .line 38
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/iw;->b(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 39
    new-instance v2, Lcom/android/tools/r8/internal/iw;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/android/tools/r8/internal/iw;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-object v2
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lZ;->g(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/Oi1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Oi1;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    .line 5
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 6
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 3
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    return-object p1
.end method

.method public d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    .line 5
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 6
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1
.end method

.method public d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->h:Lcom/android/tools/r8/internal/k6;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 3
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lZ;->h:Lcom/android/tools/r8/internal/k6;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/k6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 3
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/lZ;->a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/android/tools/r8/graph/M2;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lZ;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/lZ;->m:Z

    if-nez v0, :cond_1

    if-eq p1, p0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public n()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/HI;

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
