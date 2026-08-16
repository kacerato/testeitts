.class public Lcom/android/tools/r8/internal/Ew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ew;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/android/tools/r8/internal/r8;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/internal/r8;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 29
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 30
    :cond_3
    :goto_1
    iput-object p0, p1, Lcom/android/tools/r8/internal/r8;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/v8$a;Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/Mo0;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/Mo0;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 8
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v5, v4, Lcom/android/tools/r8/internal/C4;

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_4

    .line 14
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v4

    const/4 v5, 0x1

    .line 17
    :goto_1
    iget-object v6, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 19
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-ne v6, v0, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 20
    :cond_5
    sget-boolean v5, Lcom/android/tools/r8/internal/Ew;->b:Z

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-ne v5, v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ew;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v4, v5, p3}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v4

    sget-boolean v5, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz v4, :cond_8

    .line 23
    invoke-interface {v4}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    goto :goto_3

    :cond_8
    move-object v4, v3

    :goto_3
    if-nez v4, :cond_9

    goto :goto_4

    .line 24
    :cond_9
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    move-object v3, v2

    :cond_b
    :goto_4
    if-eqz v3, :cond_d

    .line 25
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_c

    goto :goto_5

    .line 26
    :cond_c
    new-instance p3, Lcom/android/tools/r8/internal/ZD0;

    invoke-direct {p3, v3}, Lcom/android/tools/r8/internal/ZD0;-><init>(Ljava/util/Set;)V

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/v8$a;->a(Lcom/android/tools/r8/internal/hw;Ljava/util/function/Consumer;)V

    :cond_d
    :goto_5
    return-void
.end method
