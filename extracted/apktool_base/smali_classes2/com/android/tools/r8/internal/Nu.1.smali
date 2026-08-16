.class public final Lcom/android/tools/r8/internal/Nu;
.super Lcom/android/tools/r8/internal/mZ;
.source "SourceFile"


# static fields
.field public static final synthetic t:Z = true


# instance fields
.field public final p:Lcom/android/tools/r8/internal/G1;

.field public final q:Lcom/android/tools/r8/internal/nC;

.field public final r:Lcom/android/tools/r8/internal/nu;

.field public final s:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;Lcom/android/tools/r8/internal/q6;Lcom/android/tools/r8/internal/n6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/nC;Ljava/util/Set;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/mZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/s6;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/o6;Lcom/android/tools/r8/internal/q6;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/Nu;->t:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nu;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nu;->p:Lcom/android/tools/r8/internal/G1;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Nu;->q:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Nu;->s:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;
    .locals 5

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 54
    iget-object p2, p1, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 55
    iget-object v0, p2, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    .line 59
    iget-object v3, v1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 60
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/l1;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/tools/r8/internal/Nu;->p:Lcom/android/tools/r8/internal/G1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    .line 62
    iget-object v1, v1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 63
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/l1;)I

    move-result v1

    int-to-long v3, v1

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v1

    .line 64
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eq v1, v0, :cond_2

    .line 65
    invoke-static {}, Lcom/android/tools/r8/graph/proto/k;->d()Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v0

    .line 66
    iget-object v2, p2, Lcom/android/tools/r8/graph/proto/k;->b:Lcom/android/tools/r8/graph/M2;

    .line 67
    iput-object v2, v0, Lcom/android/tools/r8/graph/proto/k$a;->a:Lcom/android/tools/r8/graph/M2;

    .line 68
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/proto/k$a;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object v0

    .line 69
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/proto/k$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;

    move-result-object p2

    .line 70
    iput-object v1, p2, Lcom/android/tools/r8/graph/proto/k$a;->d:Lcom/android/tools/r8/internal/Pm0;

    .line 71
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/k$a;->a()Lcom/android/tools/r8/graph/proto/k;

    move-result-object p2

    .line 72
    iget-object v0, p1, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    new-instance v0, Lcom/android/tools/r8/graph/proto/j;

    iget-object v1, p1, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    invoke-direct {v0, v1, p2, p1}, Lcom/android/tools/r8/graph/proto/j;-><init>(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)V

    move-object p1, v0

    .line 74
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Nu;->q:Lcom/android/tools/r8/internal/nC;

    .line 75
    sget-object v0, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 76
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    move-object v0, p2

    .line 77
    :cond_3
    check-cast v0, Lcom/android/tools/r8/graph/proto/j;

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/proto/j;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    if-ne p0, p5, :cond_0

    .line 2
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 3
    sget-object v5, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 4
    new-instance p2, Lcom/android/tools/r8/internal/NW;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 5
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 6
    invoke-interface {p6, p1}, Lcom/android/tools/r8/internal/Gz;->a(Lcom/android/tools/r8/internal/NW;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Gz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 6

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/Nu;->t:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 15
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/Nu;->g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 16
    iget-object p3, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    if-eqz p3, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_3
    :goto_1
    iget-object p3, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 19
    sget-object v1, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    if-ne p3, v1, :cond_9

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 22
    iget-object p3, p0, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 25
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 26
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 27
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 31
    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 32
    :cond_6
    iget-object p3, p0, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    :goto_3
    move-object v1, p2

    goto :goto_4

    .line 33
    :cond_7
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 34
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/internal/lZ;->g:Ljava/util/function/Function;

    .line 35
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 36
    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    goto :goto_3

    .line 37
    :cond_9
    iget-object p2, p0, Lcom/android/tools/r8/internal/lZ;->g:Ljava/util/function/Function;

    .line 38
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 39
    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    goto :goto_3

    :goto_4
    if-nez v1, :cond_a

    .line 40
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1

    .line 41
    :cond_a
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 42
    sget-object p2, Lcom/android/tools/r8/graph/proto/j;->d:Lcom/android/tools/r8/graph/proto/j;

    .line 43
    iget-object p2, p1, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 44
    iget-object p3, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 45
    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 46
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/tools/r8/internal/Nu;->a(Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v5

    .line 47
    iget-object p2, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 48
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 50
    invoke-virtual {p0, v1, v1, p2, p1}, Lcom/android/tools/r8/internal/Nu;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;

    move-result-object v4

    .line 51
    new-instance p1, Lcom/android/tools/r8/internal/NW;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NW;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NW;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Nu;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;
    .locals 1

    .line 79
    iget-object p2, p0, Lcom/android/tools/r8/internal/lZ;->h:Lcom/android/tools/r8/internal/k6;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 80
    sget-boolean p2, Lcom/android/tools/r8/internal/Nu;->t:Z

    if-nez p2, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object p1

    :cond_2
    return-object p4
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/internal/nu;->b:Lcom/android/tools/r8/internal/nC;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 12
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Nu;->t:Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/Hz;->g(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    if-nez v1, :cond_4

    iget-object p2, p0, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return v0
.end method
