.class public final Lcom/android/tools/r8/internal/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/T5;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:[Lcom/android/tools/r8/internal/W5;

.field public final b:[Lcom/android/tools/r8/internal/W5;

.field public final c:Lcom/android/tools/r8/internal/W5;

.field public final d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fB;I)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/dt;->e:Z

    sget-boolean v1, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    if-nez v1, :cond_3

    if-eq p2, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->n()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/W5;

    iget-object v3, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/dt;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/tools/r8/internal/dt;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v3, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v2, :cond_9

    add-int/2addr v3, v4

    new-array p2, v3, [Lcom/android/tools/r8/internal/W5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result p2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    move v2, v0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    aput-object v3, v5, v2

    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/W5;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    iget-object v3, p0, Lcom/android/tools/r8/internal/dt;->c:Lcom/android/tools/r8/internal/W5;

    aput-object v3, v1, v2

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/tools/r8/internal/dt;->d:I

    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->a(I)V

    goto :goto_5

    :cond_9
    add-int/lit8 p2, v3, 0x1

    new-array v2, p2, [Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/XB;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/W5;

    iput-object v1, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/dt;->c:Lcom/android/tools/r8/internal/W5;

    aput-object v2, v1, v3

    iput p2, p0, Lcom/android/tools/r8/internal/dt;->d:I

    :goto_5
    move p2, v0

    :goto_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    array-length v2, v1

    if-ge p2, v2, :cond_a

    aget-object v1, v1, p2

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/W5;->d(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_a
    array-length p2, v1

    new-array p2, p2, [Lcom/android/tools/r8/internal/W5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    aget-object v1, v1, v0

    aput-object v1, p2, v0

    move p2, v4

    :cond_b
    if-eqz p2, :cond_15

    move p2, v0

    move v1, v4

    :goto_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    array-length v3, v2

    if-ge v1, v3, :cond_b

    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v5, -0x1

    move v6, v0

    :goto_8
    if-nez v3, :cond_d

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    iget-object v8, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v9

    aget-object v8, v8, v9

    if-eqz v8, :cond_c

    move v5, v6

    move-object v3, v7

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    move v6, v0

    :goto_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_13

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    if-ne v6, v5, :cond_e

    goto :goto_c

    :cond_e
    iget-object v8, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v9

    aget-object v8, v8, v9

    if-eqz v8, :cond_12

    :cond_f
    if-eq v7, v3, :cond_11

    :goto_a
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v9

    if-le v8, v9, :cond_10

    iget-object v8, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v7

    aget-object v7, v8, v7

    goto :goto_a

    :cond_10
    :goto_b
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v9

    if-le v8, v9, :cond_f

    iget-object v8, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v3

    aget-object v3, v8, v3

    goto :goto_b

    :cond_11
    move-object v3, v7

    :cond_12
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    iget-object v5, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v6

    aget-object v5, v5, v6

    if-eq v5, v3, :cond_14

    iget-object p2, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v2

    aput-object v3, p2, v2

    move p2, v4

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_15
    sget-boolean p2, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez p2, :cond_16

    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/dt;)V

    goto :goto_d

    :cond_16
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)Ljava/lang/Iterable;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/ct;->b:Lcom/android/tools/r8/internal/ct;

    .line 12
    sget-boolean v1, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/c91;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/internal/c91;-><init>(Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/ct;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/android/tools/r8/internal/dt;->d:I

    if-ge v0, v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    aget-object v1, v1, v0

    .line 10
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/ct;)Ljava/util/Iterator;
    .locals 2

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/bt;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/bt;-><init>(Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/internal/W5;)V

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/ct;->b:Lcom/android/tools/r8/internal/ct;

    if-ne p2, v1, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bt;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    .line 17
    sget-boolean v1, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v1, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    if-nez v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/dt;->c:Lcom/android/tools/r8/internal/W5;

    if-ne p1, v0, :cond_5

    goto :goto_3

    .line 4
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/dt;->f:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/dt;->e:Z

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result p1

    aget-object p1, v0, p1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v3

    if-ge v0, v3, :cond_8

    return v2

    :cond_8
    if-ne p1, p2, :cond_5

    return v1

    :cond_9
    :goto_3
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dominators\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/dt;->a:[Lcom/android/tools/r8/internal/W5;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/tools/r8/internal/dt;->b:[Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v4

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
