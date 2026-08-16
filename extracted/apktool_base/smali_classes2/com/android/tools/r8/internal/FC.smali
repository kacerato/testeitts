.class public final Lcom/android/tools/r8/internal/FC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/FC;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Db0;)Lcom/android/tools/r8/internal/FC;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xi;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    const-string v1, "range must not be empty, but was %s"

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/U60;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/FC;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/FC;)Lcom/android/tools/r8/internal/FC;
    .locals 3

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/FC;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/Db0;

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/FC;->a(Lcom/android/tools/r8/internal/Db0;)Lcom/android/tools/r8/internal/FC;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/GC;
    .locals 10

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/FC;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/FC;->a:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/tools/r8/internal/Db0;->d:Lcom/android/tools/r8/internal/Db0;

    sget-object v2, Lcom/android/tools/r8/internal/Cb0;->b:Lcom/android/tools/r8/internal/Cb0;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/FC;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/android/tools/r8/internal/IK;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 14
    check-cast v1, Lcom/android/tools/r8/internal/IK;

    :goto_0
    move v2, v3

    goto :goto_1

    .line 15
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/IK;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/IK;-><init>(Ljava/util/Iterator;)V

    move-object v1, v2

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IK;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IK;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Db0;

    .line 18
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IK;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 19
    iget-boolean v6, v1, Lcom/android/tools/r8/internal/IK;->c:Z

    if-nez v6, :cond_1

    .line 20
    iget-object v6, v1, Lcom/android/tools/r8/internal/IK;->b:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lcom/android/tools/r8/internal/IK;->d:Ljava/lang/Object;

    .line 21
    iput-boolean v5, v1, Lcom/android/tools/r8/internal/IK;->c:Z

    .line 22
    :cond_1
    iget-object v6, v1, Lcom/android/tools/r8/internal/IK;->d:Ljava/lang/Object;

    .line 23
    check-cast v6, Lcom/android/tools/r8/internal/Db0;

    .line 24
    iget-object v7, v4, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    .line 25
    iget-object v8, v6, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v7

    if-gtz v7, :cond_d

    iget-object v7, v6, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    iget-object v8, v4, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    .line 26
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v7

    if-gtz v7, :cond_d

    .line 27
    iget-object v7, v4, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    iget-object v8, v6, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v7

    .line 28
    iget-object v8, v4, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    iget-object v9, v6, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v8

    if-ltz v7, :cond_2

    if-gtz v8, :cond_2

    move-object v9, v4

    goto :goto_6

    :cond_2
    if-gtz v7, :cond_3

    if-ltz v8, :cond_3

    move-object v9, v6

    goto :goto_6

    :cond_3
    if-ltz v7, :cond_4

    .line 29
    iget-object v7, v4, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    goto :goto_3

    :cond_4
    iget-object v7, v6, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    :goto_3
    if-gtz v8, :cond_5

    .line 30
    iget-object v8, v4, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    goto :goto_4

    :cond_5
    iget-object v8, v6, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    .line 31
    :goto_4
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v9

    if-gtz v9, :cond_6

    move v9, v5

    goto :goto_5

    :cond_6
    move v9, v3

    :goto_5
    if-eqz v9, :cond_c

    .line 32
    new-instance v9, Lcom/android/tools/r8/internal/Db0;

    invoke-direct {v9, v7, v8}, Lcom/android/tools/r8/internal/Db0;-><init>(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)V

    .line 33
    :goto_6
    iget-object v7, v9, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    iget-object v8, v9, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xi;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IK;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Db0;

    .line 35
    iget-object v7, v4, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    iget-object v8, v6, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v7

    .line 36
    iget-object v8, v4, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    iget-object v9, v6, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/xi;->a(Lcom/android/tools/r8/internal/xi;)I

    move-result v8

    if-gtz v7, :cond_7

    if-ltz v8, :cond_7

    goto/16 :goto_2

    :cond_7
    if-ltz v7, :cond_8

    if-gtz v8, :cond_8

    :goto_7
    move-object v4, v6

    goto/16 :goto_2

    :cond_8
    if-gtz v7, :cond_9

    .line 37
    iget-object v7, v4, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    goto :goto_8

    :cond_9
    iget-object v7, v6, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    :goto_8
    if-ltz v8, :cond_a

    .line 38
    iget-object v4, v4, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    goto :goto_9

    :cond_a
    iget-object v4, v6, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    .line 39
    :goto_9
    new-instance v6, Lcom/android/tools/r8/internal/Db0;

    invoke-direct {v6, v7, v4}, Lcom/android/tools/r8/internal/Db0;-><init>(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)V

    goto :goto_7

    .line 40
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Overlapping ranges not permitted but found %s overlapping %s"

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "intersection is undefined for disconnected ranges %s and %s"

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v2, 0x1

    .line 43
    array-length v6, v0

    if-ge v6, v5, :cond_e

    .line 44
    array-length v6, v0

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 45
    :cond_e
    aput-object v4, v0, v2

    move v2, v5

    goto/16 :goto_1

    .line 46
    :cond_f
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    sget-object v0, Lcom/android/tools/r8/internal/GC;->c:Lcom/android/tools/r8/internal/GC;

    return-object v0

    .line 49
    :cond_10
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v1, v5, :cond_11

    .line 50
    invoke-static {v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Db0;

    .line 51
    sget-object v2, Lcom/android/tools/r8/internal/Db0;->d:Lcom/android/tools/r8/internal/Db0;

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Db0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 53
    sget-object v0, Lcom/android/tools/r8/internal/GC;->d:Lcom/android/tools/r8/internal/GC;

    return-object v0

    .line 54
    :cond_11
    new-instance v1, Lcom/android/tools/r8/internal/GC;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/GC;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object v1
.end method
