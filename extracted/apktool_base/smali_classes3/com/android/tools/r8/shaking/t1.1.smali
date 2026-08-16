.class public abstract Lcom/android/tools/r8/shaking/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Lcom/android/tools/r8/shaking/i1;

.field public final i:Lcom/android/tools/r8/shaking/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/r1;)V
    .locals 8

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/r1;->b:Z

    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/r1;->c:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/r1;->e()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/r1;->f()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v4

    iget-boolean v5, p1, Lcom/android/tools/r8/shaking/r1;->g:Z

    iget-boolean v6, p1, Lcom/android/tools/r8/shaking/r1;->h:Z

    iget-object v7, p1, Lcom/android/tools/r8/shaking/r1;->i:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {v7}, Lcom/android/tools/r8/shaking/d1;->a()Lcom/android/tools/r8/shaking/i1;

    move-result-object v7

    iget-object p1, p1, Lcom/android/tools/r8/shaking/r1;->j:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/d1;->a()Lcom/android/tools/r8/shaking/i1;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->a:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/shaking/t1;->b:Z

    iput-boolean v2, p0, Lcom/android/tools/r8/shaking/t1;->c:Z

    iput-boolean v3, p0, Lcom/android/tools/r8/shaking/t1;->d:Z

    iput-boolean v4, p0, Lcom/android/tools/r8/shaking/t1;->e:Z

    iput-boolean v5, p0, Lcom/android/tools/r8/shaking/t1;->f:Z

    iput-boolean v6, p0, Lcom/android/tools/r8/shaking/t1;->g:Z

    iput-object v7, p0, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    return-void
.end method

.method public static a(IZ)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    .line 5
    sget-object p0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;
    .locals 3

    .line 9
    new-instance v0, Lcom/android/tools/r8/shaking/cf;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/cf;-><init>()V

    new-instance v1, Lcom/android/tools/r8/shaking/df;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/df;-><init>()V

    new-instance v2, Lcom/android/tools/r8/shaking/ef;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/ef;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/s1;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    .line 7
    sget-object p0, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/s1;
    .locals 0

    .line 3
    sget-object p0, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/q1;->c()Lcom/android/tools/r8/shaking/p1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/shaking/i1;ZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/i1;->a(Lcom/android/tools/r8/graph/r0;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 11
    :cond_1
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->m0()I

    move-result p0

    if-ne p0, v0, :cond_2

    xor-int/lit8 p0, p4, 0x1

    return p0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->m0()I

    move-result p0

    if-nez p0, :cond_3

    xor-int/lit8 p0, p5, 0x1

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/I1;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 3

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/nJ;

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I3;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 17
    :cond_0
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 2

    .line 19
    sget-boolean v0, Lcom/android/tools/r8/shaking/t1;->j:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->a:Z

    .line 22
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->a:Z

    if-ne v0, v1, :cond_4

    .line 23
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->b:Z

    .line 24
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->b:Z

    if-ne v0, v1, :cond_4

    .line 25
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->c:Z

    .line 26
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->c:Z

    if-ne v0, v1, :cond_4

    .line 27
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->d:Z

    .line 28
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->d:Z

    if-ne v0, v1, :cond_4

    .line 29
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->e:Z

    .line 30
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->e:Z

    if-ne v0, v1, :cond_4

    .line 31
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->f:Z

    .line 32
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->f:Z

    if-ne v0, v1, :cond_4

    .line 33
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->g:Z

    .line 34
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/t1;->g:Z

    if-ne v0, v1, :cond_4

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 36
    iget-object v1, p1, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    if-ne v0, v1, :cond_4

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 3

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/shaking/t1;->j:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->a:Z

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/t1;->b:Z

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->c:Z

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    .line 9
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/t1;->d:Z

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->e:Z

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    .line 11
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/t1;->f:Z

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    .line 12
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/t1;->g:Z

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v1, v1, Lcom/android/tools/r8/shaking/h1;

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/shaking/t1;->i:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v0, v0, Lcom/android/tools/r8/shaking/h1;

    const/16 v2, 0x8

    .line 18
    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/nJ;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/t1;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/t1;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/t1;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/nJ;

    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/I3;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/t1;->f:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
