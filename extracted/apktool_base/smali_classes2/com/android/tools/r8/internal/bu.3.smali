.class public final Lcom/android/tools/r8/internal/bu;
.super Lcom/android/tools/r8/internal/mr0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/graph/A2;

.field public final e:I

.field public final f:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Ljava/util/LinkedHashMap;ILcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p6, p1}, Lcom/android/tools/r8/internal/mr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/bu;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/bu;->f:Ljava/util/LinkedHashMap;

    iput p5, p0, Lcom/android/tools/r8/internal/bu;->e:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/G9$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 2
    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 8

    if-eqz p3, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/i9;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p3, v3

    .line 5
    new-instance v6, Lcom/android/tools/r8/internal/pa;

    invoke-static {v5}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    invoke-direct {v6, v5, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 6
    :cond_1
    iget p3, p0, Lcom/android/tools/r8/internal/bu;->e:I

    if-eq p3, v2, :cond_a

    iget-object p3, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    iget-object p3, p3, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p3

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_4

    .line 10
    :cond_2
    sget-boolean p3, Lcom/android/tools/r8/internal/bu;->g:Z

    if-nez p3, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/bu;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->l6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p3, :cond_6

    .line 13
    iget-object p3, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_6
    :goto_2
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    const/16 v0, 0xb9

    invoke-direct {p3, v0, p2, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    if-nez p3, :cond_9

    .line 17
    iget-object p3, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_3

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_9
    :goto_3
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    const/16 v0, 0xb6

    invoke-direct {p3, v0, p2, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 21
    :cond_a
    :goto_4
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    const/16 v0, 0xb8

    invoke-direct {p3, v0, p2, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_5
    iget-object p3, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p3

    if-nez p3, :cond_c

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    goto :goto_6

    :cond_b
    sget-object p2, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    .line 24
    :goto_6
    new-instance p3, Lcom/android/tools/r8/internal/kb;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 13

    iget-object v0, p0, Lcom/android/tools/r8/internal/bu;->c:Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/tools/r8/internal/bu;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v3, [Lcom/android/tools/r8/internal/ka;

    move v6, v1

    :goto_0
    if-ge v6, v3, :cond_0

    new-instance v7, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ka;-><init>()V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v3

    invoke-static {v0}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v3

    new-instance v6, Lcom/android/tools/r8/internal/j61;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/internal/j61;-><init>(Lcom/android/tools/r8/internal/bu;)V

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/G9$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v3

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/V9;

    iget-object v7, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    aget-object v9, v5, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    iget-object v7, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v7, v7, v1

    int-to-char v7, v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/i9;

    iget-object v7, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v7, v6

    move v8, v1

    move v9, v4

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v10, v6, v8

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    invoke-static {v10}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v10

    add-int/lit8 v12, v9, 0x1

    invoke-direct {v11, v10, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v9, v12

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/android/tools/r8/internal/ga;

    iget-object v7, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    const/16 v8, 0xb9

    invoke-direct {v6, v8, v7, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/android/tools/r8/internal/ab;

    iget-object v6, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/bu;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    add-int/lit8 v8, v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    iget-object v9, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v9, v9, v1

    int-to-char v9, v9

    invoke-static {v9}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v9

    invoke-direct {v6, v9, v1}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/V9;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v9}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v9, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v10, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    aget-object v11, v5, v8

    invoke-direct {v6, v9, v10, v11}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    iget-object v9, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v9, v9, v1

    int-to-char v9, v9

    invoke-static {v9}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v9

    invoke-direct {v6, v9, v1}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/tools/r8/internal/bu;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V

    iget-object v6, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    new-instance v6, Lcom/android/tools/r8/internal/ab;

    iget-object v7, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move v6, v8

    goto/16 :goto_3

    :cond_4
    aget-object v4, v5, v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/G9;

    iget-object v5, v3, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object v3, v3, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-direct {v4, v5, v3}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte v0, v0, v1

    int-to-char v0, v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/bu;->c:Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/bu;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/ab;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bu;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
