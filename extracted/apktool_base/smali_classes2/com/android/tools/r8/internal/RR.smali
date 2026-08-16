.class public Lcom/android/tools/r8/internal/RR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/d1;

.field public final b:Lcom/android/tools/r8/internal/Hz;

.field public final c:Lcom/android/tools/r8/internal/Hz;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/RR;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 14
    iput-object p2, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    .line 15
    iput-object p3, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/internal/RR;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/RR;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/RR;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RR;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;
    .locals 10

    .line 26
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 29
    iget-object v8, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    .line 31
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/B2;->e()Lcom/android/tools/r8/internal/kK;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    .line 32
    sget-object v7, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v3, v0

    move-object v4, p3

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p3

    .line 34
    iget-object v2, p3, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 35
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 36
    iget-object p2, p3, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 37
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/kK;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/B2;

    move-result-object p2

    move-object p3, v2

    goto :goto_3

    .line 38
    :cond_0
    sget-boolean v3, Lcom/android/tools/r8/internal/RR;->f:Z

    if-nez v3, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 40
    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object v4, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v5, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    .line 41
    invoke-virtual {v4, v6, v5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v6, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 42
    invoke-virtual {p2, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 43
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v3, :cond_4

    .line 44
    iget-object v4, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_4
    :goto_1
    iget-object p3, p3, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 46
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/kK;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/B2;

    move-result-object p3

    if-nez v3, :cond_6

    .line 47
    sget-object v3, Lcom/android/tools/r8/graph/B2;->j:Lcom/android/tools/r8/graph/B2;

    if-eq p3, v3, :cond_6

    sget-object v3, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    if-ne p3, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    goto :goto_3

    :cond_7
    move-object p3, p2

    move-object p2, v8

    :goto_3
    if-ne p2, v8, :cond_8

    if-ne p3, v0, :cond_8

    if-eq v2, p3, :cond_c

    .line 48
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    iget-object v3, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    goto :goto_4

    :cond_9
    iget-boolean p1, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    .line 50
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 51
    invoke-interface {v0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    if-eq v2, p3, :cond_a

    move-object v1, v2

    .line 52
    :cond_a
    invoke-virtual {v0, p2, p3, p1, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/v2;ZLcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p1

    return-object p1

    .line 53
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 54
    iget-object p3, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p3, v0, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    if-eq p3, p2, :cond_c

    .line 55
    iget-object p2, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 56
    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    iget-boolean p1, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    .line 57
    invoke-virtual {p2, v0, p3, p1, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/v2;ZLcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/RR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/nV0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/nV0;-><init>(Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/D0;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D0;)Lcom/android/tools/r8/graph/D0;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/RR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 23
    invoke-interface {v0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/oV0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/oV0;-><init>(Lcom/android/tools/r8/internal/RR;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/RR;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/I2;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;ILcom/android/tools/r8/graph/H5;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/R2;

    .line 7
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_3

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 9
    iget-object v6, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v7, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v6, v7, v5}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    if-eq v6, v5, :cond_1

    .line 10
    new-instance v5, Lcom/android/tools/r8/graph/R2$l;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_2

    :cond_1
    :goto_1
    move-object v5, v4

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v5

    .line 12
    iget-object v6, v5, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v6, Lcom/android/tools/r8/graph/C2;

    .line 13
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v6, p2, v7}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v7

    if-eq v7, v6, :cond_4

    .line 14
    new-instance v5, Lcom/android/tools/r8/graph/X2;

    invoke-direct {v5, v7}, Lcom/android/tools/r8/graph/X2;-><init>(Lcom/android/tools/r8/graph/C2;)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object v5

    .line 16
    iget-object v6, v5, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v6, Lcom/android/tools/r8/graph/I2;

    .line 17
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    if-eq v7, v6, :cond_4

    .line 18
    new-instance v5, Lcom/android/tools/r8/graph/Y2;

    invoke-direct {v5, v7}, Lcom/android/tools/r8/graph/Y2;-><init>(Lcom/android/tools/r8/graph/I2;)V

    :cond_4
    :goto_2
    if-eq v5, v4, :cond_6

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_9

    return-object v0

    :cond_9
    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;
    .locals 13

    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v6:Lcom/android/tools/r8/graph/A2;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v6

    :goto_1
    if-eqz v0, :cond_2

    move v4, v6

    :cond_2
    iget-object v3, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/tools/r8/internal/RR;->a(Ljava/util/List;ILcom/android/tools/r8/graph/H5;)Ljava/util/List;

    move-result-object v3

    if-nez v0, :cond_3

    iget-object p2, p1, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    goto :goto_4

    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/RR;->f:Z

    if-nez v0, :cond_5

    iget-object v4, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/graph/Y2;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v4, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/R2;->A0()Lcom/android/tools/r8/graph/Y2;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v4, Lcom/android/tools/r8/graph/I2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v5, v4, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    iget-object v7, p0, Lcom/android/tools/r8/internal/RR;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    sget-object v10, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    iget-object v11, p0, Lcom/android/tools/r8/internal/RR;->c:Lcom/android/tools/r8/internal/Hz;

    sget-object v12, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual/range {v7 .. v12}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    :goto_4
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    if-ne p2, v0, :cond_9

    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    if-ne v2, v0, :cond_9

    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    return-object p1

    :cond_9
    :goto_5
    new-instance p1, Lcom/android/tools/r8/graph/D0;

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/android/tools/r8/graph/D0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/List;)V

    return-object p1
.end method
