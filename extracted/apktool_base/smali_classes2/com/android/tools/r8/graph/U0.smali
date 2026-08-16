.class public Lcom/android/tools/r8/graph/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j1;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public d:Ljava/util/ArrayList;

.field public e:Lcom/android/tools/r8/internal/Q;

.field public f:Lcom/android/tools/r8/internal/Q;

.field public g:Lcom/android/tools/r8/internal/B60;

.field public h:Z

.field public i:I

.field public j:Lcom/android/tools/r8/internal/B60;

.field public k:Lcom/android/tools/r8/internal/Q;

.field public final l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/U0;->f:Lcom/android/tools/r8/internal/Q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/graph/U0;->h:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/graph/U0;->i:I

    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/graph/U0;->j:Lcom/android/tools/r8/internal/B60;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/U0;->m:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/tools/r8/graph/U0;->n:I

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/U0;->a:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/graph/U0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/graph/U0;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$j;->a:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/x0;->g()Lcom/android/tools/r8/naming/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/U0;->l:Z

    return-void
.end method

.method public static a(IILjava/util/List;Lcom/android/tools/r8/graph/u1;)V
    .locals 2

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x4

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 23
    :cond_0
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/u1;->a(I)Lcom/android/tools/r8/graph/N0;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 24
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/graph/O0$b;->e:Z

    add-int/lit8 p0, p0, 0xe

    mul-int/lit8 v0, p1, 0xf

    add-int/2addr v0, p0

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 25
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/u1;->b(I)Lcom/android/tools/r8/graph/O0$a;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move p0, v0

    .line 26
    :goto_0
    sget-boolean p1, Lcom/android/tools/r8/graph/U0;->o:Z

    if-nez p1, :cond_4

    const/16 v0, 0xa

    if-lt p0, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-nez p1, :cond_6

    if-gt p0, v1, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_6
    :goto_2
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/u1;->c(I)Lcom/android/tools/r8/graph/O0$b;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/B60;ILcom/android/tools/r8/internal/B60;Ljava/util/List;Lcom/android/tools/r8/graph/u1;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/tools/r8/internal/B60;",
            "I",
            "Lcom/android/tools/r8/internal/B60;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/O0;",
            ">;",
            "Lcom/android/tools/r8/graph/u1;",
            "Z)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/U0;->o:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    sub-int/2addr p2, p0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p0

    if-ltz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_5
    :goto_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    move p0, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_3
    if-nez v0, :cond_8

    if-ltz p2, :cond_7

    goto :goto_4

    .line 5
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 6
    :cond_8
    :goto_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->e()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->e()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    if-eq v2, v3, :cond_9

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->e()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/O0$c;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v0, :cond_b

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-nez v0, :cond_b

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-nez v0, :cond_b

    .line 10
    iget-object v0, p3, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v2, :cond_b

    if-eqz p6, :cond_a

    goto :goto_5

    .line 11
    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_b
    :goto_5
    iget-object p6, p3, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    iget-object v0, p1, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    const/4 v2, 0x1

    if-ne p6, v0, :cond_d

    .line 13
    iget-object p6, p3, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    if-eq p6, v0, :cond_c

    goto :goto_6

    :cond_c
    move p6, v1

    goto :goto_7

    :cond_d
    :goto_6
    move p6, v2

    .line 14
    :goto_7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v0

    .line 15
    instance-of v3, p3, Lcom/android/tools/r8/internal/y60;

    if-eqz v3, :cond_f

    .line 16
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->i()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/B60;->j()Lcom/android/tools/r8/internal/AH;

    move-result-object v4

    .line 18
    iget-object v4, v4, Lcom/android/tools/r8/internal/AH;->b:[I

    .line 19
    array-length v4, v4

    if-nez v4, :cond_e

    goto :goto_8

    :cond_e
    move v4, v2

    goto :goto_9

    :cond_f
    :goto_8
    move v4, v1

    .line 20
    :goto_9
    instance-of p1, p1, Lcom/android/tools/r8/internal/y60;

    if-eqz p1, :cond_10

    if-nez v3, :cond_10

    move v1, v2

    :cond_10
    if-nez p6, :cond_11

    if-nez v0, :cond_11

    if-nez v4, :cond_11

    if-eqz v1, :cond_12

    .line 21
    :cond_11
    invoke-virtual {p5, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/graph/S0;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_12
    invoke-static {p0, p2, p4, p5}, Lcom/android/tools/r8/graph/U0;->a(IILjava/util/List;Lcom/android/tools/r8/graph/u1;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;)V
    .locals 6

    .line 29
    sget v0, Lcom/android/tools/r8/graph/j0;->e:I

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DG;-><init>()V

    .line 31
    invoke-interface {p0}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/RG;

    .line 32
    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    .line 34
    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_0

    .line 35
    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/DG;-><init>()V

    .line 37
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/RG;

    .line 38
    invoke-interface {v2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v3

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j0;

    .line 40
    invoke-interface {p0, v3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_2

    .line 41
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/graph/U0;->o:Z

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DG;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 43
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/nG;

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/qG;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 45
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p1

    .line 48
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/DG;->a(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 49
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/HG;->remove(I)Ljava/lang/Object;

    .line 50
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/graph/u1;->d(I)Lcom/android/tools/r8/graph/P0;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 51
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/nG;

    .line 52
    new-instance v0, Lcom/android/tools/r8/internal/qG;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 53
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 54
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    .line 55
    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v1

    .line 56
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j0;

    .line 57
    invoke-interface {p0, v1, p1}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {p2, v1}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_8

    .line 59
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/graph/u1;->e(I)Lcom/android/tools/r8/graph/Q0;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 60
    :cond_8
    new-instance v2, Lcom/android/tools/r8/graph/O0$d;

    .line 61
    iget-object v3, p1, Lcom/android/tools/r8/graph/j0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/j0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/j0;->d:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/tools/r8/graph/O0$d;-><init>(ILcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 62
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {p2, v1, p1}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    return-void
.end method
