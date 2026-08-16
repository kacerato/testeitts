.class public final Lcom/android/tools/r8/ir/optimize/B0;
.super Lcom/android/tools/r8/internal/Tj;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/IH;

.field public final synthetic g:Lcom/android/tools/r8/ir/optimize/C0;

.field public final synthetic h:Lcom/android/tools/r8/ir/optimize/H0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/ir/optimize/C0;Lcom/android/tools/r8/ir/optimize/H0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/B0;->f:Lcom/android/tools/r8/internal/IH;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/B0;->g:Lcom/android/tools/r8/ir/optimize/C0;

    iput-object p3, p0, Lcom/android/tools/r8/ir/optimize/B0;->h:Lcom/android/tools/r8/ir/optimize/H0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Tj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Rj;Ljava/util/List;)Lcom/android/tools/r8/internal/Ys0;
    .locals 5

    .line 24
    iget-object v0, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 25
    check-cast v0, Lcom/android/tools/r8/ir/optimize/F0;

    .line 26
    iget v1, v0, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    invoke-static {v1}, Lcom/android/tools/r8/ir/optimize/E0;->a(I)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_10

    .line 27
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/F0;->c:Z

    if-nez v1, :cond_1

    iget v0, v0, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/ir/optimize/E0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 29
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Rj;

    .line 30
    iget-object v3, v3, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 31
    check-cast v3, Lcom/android/tools/r8/ir/optimize/F0;

    .line 32
    sget-boolean v4, Lcom/android/tools/r8/ir/optimize/F0;->c:Z

    if-nez v4, :cond_5

    iget v4, v3, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    invoke-static {v4}, Lcom/android/tools/r8/ir/optimize/E0;->a(I)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_5
    :goto_3
    iget v3, v3, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    .line 34
    invoke-static {v0}, Lcom/android/tools/r8/ir/optimize/E0;->b(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/android/tools/r8/ir/optimize/E0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 35
    :cond_6
    invoke-static {v0}, Lcom/android/tools/r8/ir/optimize/E0;->a(I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v3}, Lcom/android/tools/r8/ir/optimize/E0;->b(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    if-ne v0, v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    move v0, v3

    goto :goto_2

    .line 36
    :cond_a
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/F0;->c:Z

    if-nez v1, :cond_c

    invoke-static {v0}, Lcom/android/tools/r8/ir/optimize/E0;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_c
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {v0}, Lcom/android/tools/r8/ir/optimize/E0;->b(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Rj;

    .line 40
    iget-object v4, v3, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 41
    check-cast v4, Lcom/android/tools/r8/ir/optimize/F0;

    iget v4, v4, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    if-ne v4, v2, :cond_e

    .line 42
    iget-object v3, v3, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 43
    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 44
    :cond_e
    invoke-static {v4}, Lcom/android/tools/r8/ir/optimize/E0;->b(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 45
    iget-object v3, v3, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 46
    check-cast v3, Lcom/android/tools/r8/ir/optimize/F0;

    iget-object v3, v3, Lcom/android/tools/r8/ir/optimize/F0;->b:Ljava/util/AbstractCollection;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 47
    :cond_f
    new-instance p2, Lcom/android/tools/r8/ir/optimize/F0;

    invoke-direct {p2, v0, v1}, Lcom/android/tools/r8/ir/optimize/F0;-><init>(ILjava/util/List;)V

    move-object v0, p2

    goto :goto_8

    .line 48
    :cond_10
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/B0;->i:Z

    if-nez v1, :cond_14

    iget v3, v0, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    if-eqz v3, :cond_13

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    goto :goto_7

    :cond_11
    if-ne v3, v2, :cond_12

    goto :goto_7

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    const/4 p1, 0x0

    throw p1

    :cond_14
    :goto_7
    if-nez v1, :cond_16

    .line 49
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_8

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_16
    :goto_8
    iput-object v0, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 51
    new-instance p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Rj;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/B0;->f:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v3

    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/B0;->g:Lcom/android/tools/r8/ir/optimize/C0;

    invoke-interface {v5}, Lcom/android/tools/r8/ir/optimize/C0;->a()I

    move-result v5

    if-le v3, v5, :cond_0

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/B0;->g:Lcom/android/tools/r8/ir/optimize/C0;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/ir/optimize/C0;->a(Lcom/android/tools/r8/internal/zE;)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/B0;->h:Lcom/android/tools/r8/ir/optimize/H0;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/H0;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v3

    :cond_3
    if-ne v2, v1, :cond_5

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/B0;->g:Lcom/android/tools/r8/ir/optimize/C0;

    .line 10
    iget-object v3, p1, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 11
    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v0, v3}, Lcom/android/tools/r8/ir/optimize/C0;->a(Lcom/android/tools/r8/internal/W5;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 13
    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Rj;

    .line 14
    iget-object v3, v3, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 15
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 16
    :cond_5
    new-instance p2, Lcom/android/tools/r8/ir/optimize/F0;

    .line 17
    invoke-static {v2}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_8

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/D0;->a:Z

    const/4 v4, 0x3

    if-nez v0, :cond_8

    if-ne v2, v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    const/4 v4, 0x4

    .line 19
    :cond_8
    :goto_1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 20
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 21
    invoke-direct {p2, v4, v0}, Lcom/android/tools/r8/ir/optimize/F0;-><init>(ILjava/util/List;)V

    .line 22
    iput-object p2, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    .line 23
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method
