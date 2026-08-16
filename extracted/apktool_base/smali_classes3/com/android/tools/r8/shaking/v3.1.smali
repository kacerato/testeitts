.class public abstract Lcom/android/tools/r8/shaking/v3;
.super Lcom/android/tools/r8/shaking/f3;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z = true


# instance fields
.field public o:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/tools/r8/shaking/f3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/v3;->o:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/v3;->p:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/R3;)Ljava/lang/Iterable;
    .locals 0

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/R3;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/shaking/i4;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/i4;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/i4;->d()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract A()Ljava/lang/String;
.end method

.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;
    .locals 6

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/c3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 29
    invoke-static {v2, p1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/shaking/i4;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v3

    goto :goto_1

    .line 32
    :cond_1
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 33
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/shaking/uf;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/shaking/uf;-><init>(Ljava/util/function/Predicate;)V

    .line 35
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;

    move-result-object p1

    goto :goto_2

    .line 36
    :cond_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    const/4 v4, 0x5

    .line 37
    new-array v4, v4, [Ljava/lang/Iterable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    .line 38
    invoke-static {v4}, Lcom/android/tools/r8/internal/Vx;->a([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/c3;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/c3;->c()Ljava/util/Set;

    move-result-object p2

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v0, v0, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v0, :cond_8

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/i4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/internal/nx0;->d:Z

    if-nez v1, :cond_2

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    .line 13
    invoke-interface {v1, p3}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    .line 15
    invoke-interface {v0, p3}, Lcom/android/tools/r8/internal/m6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 17
    sget-boolean v1, Lcom/android/tools/r8/shaking/v3;->q:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_4
    :goto_1
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/Y5;->g(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 19
    invoke-static {p3}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p3

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {v0}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p2

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/Y5;->g(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p2

    .line 22
    :goto_2
    sget-boolean p3, Lcom/android/tools/r8/shaking/v3;->q:Z

    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_7
    :goto_3
    new-instance p3, Lcom/android/tools/r8/shaking/u3;

    invoke-direct {p3, p0, p1, p4}, Lcom/android/tools/r8/shaking/u3;-><init>(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;)V

    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/H2;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/shaking/u3;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p3
.end method

.method public a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 40
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    const/16 v0, 0x20

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/f3;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/shaking/v3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/shaking/v3;

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/v3;->o:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/v3;->o:Z

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/v3;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/v3;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/f3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/v3;->o:Z

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/v3;->z()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-super {p0}, Lcom/android/tools/r8/shaking/f3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public l()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/shaking/w;

    return v0
.end method

.method public m()Lcom/android/tools/r8/shaking/s;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/android/tools/r8/shaking/r2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/android/tools/r8/shaking/a3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/android/tools/r8/shaking/G3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lcom/android/tools/r8/shaking/K3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Lcom/android/tools/r8/shaking/t4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lcom/android/tools/r8/shaking/v4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/v3;->p:Z

    return-void
.end method

.method public final u()Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/ta;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/ta;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/shaking/r4;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/v3;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/U6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->c()Lcom/android/tools/r8/shaking/c3;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/shaking/sf;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/shaking/sf;-><init>(Lcom/android/tools/r8/internal/U6;)V

    new-instance v4, Lcom/android/tools/r8/shaking/tf;

    invoke-direct {v4}, Lcom/android/tools/r8/shaking/tf;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/shaking/c3;->a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->a()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/shaking/S2;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->h()Lcom/android/tools/r8/shaking/S2;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/shaking/S2;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/f3;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->d()Lcom/android/tools/r8/shaking/l3;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->e()Lcom/android/tools/r8/shaking/i4;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/v3;->o:Z

    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
