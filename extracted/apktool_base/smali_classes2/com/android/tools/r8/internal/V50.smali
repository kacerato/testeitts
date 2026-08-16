.class public final Lcom/android/tools/r8/internal/V50;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:[Lcom/android/tools/r8/internal/T50;

.field public final c:Z


# direct methods
.method public varargs constructor <init>(Z[Lcom/android/tools/r8/internal/T50;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/V50;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/V50;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v1, p2, v0

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/T50;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/V50;->c:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/V50;->b:[Lcom/android/tools/r8/internal/T50;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jS;)Lcom/android/tools/r8/internal/yV;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/V50;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/CY0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/CY0;-><init>(Lcom/android/tools/r8/internal/EE;)V

    new-instance v1, Lcom/android/tools/r8/internal/DY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/DY0;-><init>(Lcom/android/tools/r8/internal/EE;)V

    new-instance v2, Lcom/android/tools/r8/internal/EY0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/EY0;-><init>(Lcom/android/tools/r8/internal/EE;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/V50;->a(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Lcom/android/tools/r8/internal/yV;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FY0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FY0;-><init>(Lcom/android/tools/r8/internal/EE;)V

    new-instance v1, Lcom/android/tools/r8/internal/GY0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/GY0;-><init>(Lcom/android/tools/r8/internal/EE;)V

    new-instance v2, Lcom/android/tools/r8/internal/HY0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/HY0;-><init>(Lcom/android/tools/r8/internal/EE;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/V50;->a(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Lcom/android/tools/r8/internal/yV;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Lcom/android/tools/r8/internal/yV;
    .locals 10

    .line 4
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    .line 6
    :goto_0
    iget-object v6, p0, Lcom/android/tools/r8/internal/V50;->b:[Lcom/android/tools/r8/internal/T50;

    array-length v7, v6

    if-ge v4, v7, :cond_6

    .line 7
    aget-object v6, v6, v4

    .line 8
    iget-object v7, p0, Lcom/android/tools/r8/internal/V50;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 9
    invoke-interface {v7}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_3

    move v8, v2

    .line 10
    :goto_1
    invoke-interface {v6}, Lcom/android/tools/r8/internal/T50;->c()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 11
    invoke-interface {v6}, Lcom/android/tools/r8/internal/T50;->a()Ljava/util/function/Predicate;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 15
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6}, Lcom/android/tools/r8/internal/T50;->b()I

    move-result v9

    if-lt v8, v9, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Lcom/android/tools/r8/internal/T50;->c()I

    move-result v6

    if-gt v7, v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    and-int/2addr v5, v6

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    move p1, v2

    :goto_5
    if-ge p1, v4, :cond_8

    move p2, v2

    .line 16
    :goto_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/V50;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_7

    .line 17
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    .line 18
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_9
    if-eqz v5, :cond_a

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/yV;

    iget-object p2, p0, Lcom/android/tools/r8/internal/V50;->a:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/yV;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_a
    return-object v1
.end method
