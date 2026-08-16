.class public final Lcom/android/tools/r8/internal/Vp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/graph/q2;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vp0;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Vp0;->c:Lcom/android/tools/r8/graph/q2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->j:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->i:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/q2;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;
    .locals 3

    .line 95
    new-instance v0, Lcom/android/tools/r8/internal/If;

    .line 96
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String concatenation desugaring error (method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/H5;)Ljava/lang/String;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "const arg referenced from `recipe` is not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ha;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/HZ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/HZ0;-><init>(Lcom/android/tools/r8/internal/Vp0;Lcom/android/tools/r8/internal/ha;)V

    .line 14
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of p1, p2, Lcom/android/tools/r8/internal/ha;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object p2

    .line 6
    iget-object v0, p2, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p2, p2, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->q6:Lcom/android/tools/r8/graph/r2;

    iget-object v1, v0, Lcom/android/tools/r8/graph/r2;->a:Lcom/android/tools/r8/graph/A2;

    if-ne p2, v1, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/internal/ha;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/graph/r2;->b:Lcom/android/tools/r8/graph/A2;

    if-ne p2, v0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Vp0;->b(Lcom/android/tools/r8/internal/ha;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 18
    new-instance p2, Lcom/android/tools/r8/internal/Tp0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Tp0;-><init>(Lcom/android/tools/r8/internal/Vp0;)V

    .line 19
    array-length p5, p1

    const/4 p6, 0x0

    :goto_0
    if-ge p6, p5, :cond_2

    aget-object p7, p1, p6

    .line 20
    invoke-static {p7}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p8

    .line 21
    new-instance p9, Lcom/android/tools/r8/internal/Rp0;

    iget-object p10, p0, Lcom/android/tools/r8/internal/Vp0;->d:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vp0;->c:Lcom/android/tools/r8/graph/q2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    .line 22
    invoke-interface {p10, p7, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/android/tools/r8/graph/A2;

    .line 23
    invoke-virtual {p8}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p8

    invoke-interface {p3, p8}, Lcom/android/tools/r8/internal/ky;->a(I)I

    move-result p8

    invoke-direct {p9, p8, p7}, Lcom/android/tools/r8/internal/Rp0;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 24
    iget-object p7, p2, Lcom/android/tools/r8/internal/Tp0;->a:Ljava/util/ArrayList;

    invoke-virtual {p7, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget p7, p2, Lcom/android/tools/r8/internal/Tp0;->d:I

    invoke-virtual {p9}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p8

    invoke-virtual {p8}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p8

    add-int/2addr p8, p7

    iput p8, p2, Lcom/android/tools/r8/internal/Tp0;->d:I

    .line 26
    iget-object p7, p2, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    if-eqz p7, :cond_0

    .line 27
    invoke-virtual {p9}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p7

    iget-object p8, p2, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    .line 28
    invoke-virtual {p8}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p8

    invoke-virtual {p8}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p8

    if-le p7, p8, :cond_1

    .line 29
    :cond_0
    iput-object p9, p2, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/Tp0;->a(Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/graph/H5;)Ljava/util/Collection;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v2

    .line 32
    iget-object v3, v2, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    .line 34
    iget-object v2, v2, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 35
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    .line 36
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 37
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    move v8, v7

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 40
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 41
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/Tp0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Tp0;-><init>(Lcom/android/tools/r8/internal/Vp0;)V

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    .line 44
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 45
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v4

    :goto_1
    if-ge v12, v9, :cond_9

    .line 46
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v7, :cond_5

    .line 47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 48
    iget-object v13, v0, Lcom/android/tools/r8/internal/Vp0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 49
    new-instance v14, Lcom/android/tools/r8/internal/Up0;

    iget-object v15, v0, Lcom/android/tools/r8/internal/Vp0;->d:Ljava/util/IdentityHashMap;

    iget-object v7, v0, Lcom/android/tools/r8/internal/Vp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    .line 50
    invoke-virtual {v15, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v14, v13, v7}, Lcom/android/tools/r8/internal/Up0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)V

    .line 51
    iget-object v7, v2, Lcom/android/tools/r8/internal/Tp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v7, v2, Lcom/android/tools/r8/internal/Tp0;->c:Lcom/android/tools/r8/internal/Up0;

    if-nez v7, :cond_1

    .line 53
    iput-object v14, v2, Lcom/android/tools/r8/internal/Tp0;->c:Lcom/android/tools/r8/internal/Up0;

    .line 54
    :cond_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 55
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 56
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    .line 57
    invoke-static {v7}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v13

    .line 58
    new-instance v14, Lcom/android/tools/r8/internal/Rp0;

    iget-object v15, v0, Lcom/android/tools/r8/internal/Vp0;->d:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Vp0;->c:Lcom/android/tools/r8/graph/q2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    .line 59
    invoke-interface {v15, v7, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 60
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v7

    move-object/from16 v15, p2

    invoke-interface {v15, v7}, Lcom/android/tools/r8/internal/ky;->a(I)I

    move-result v7

    invoke-direct {v14, v7, v4}, Lcom/android/tools/r8/internal/Rp0;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 61
    iget-object v4, v2, Lcom/android/tools/r8/internal/Tp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget v4, v2, Lcom/android/tools/r8/internal/Tp0;->d:I

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v7

    add-int/2addr v7, v4

    iput v7, v2, Lcom/android/tools/r8/internal/Tp0;->d:I

    .line 63
    iget-object v4, v2, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    if-eqz v4, :cond_3

    .line 64
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v4

    iget-object v7, v2, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    .line 65
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Sp0;->c()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v7

    if-le v4, v7, :cond_8

    .line 66
    :cond_3
    iput-object v14, v2, Lcom/android/tools/r8/internal/Tp0;->b:Lcom/android/tools/r8/internal/Rp0;

    goto :goto_2

    .line 67
    :cond_4
    const-string v2, "too many argument references in `recipe`"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;

    move-result-object v1

    throw v1

    :cond_5
    move-object/from16 v15, p2

    const/4 v4, 0x2

    if-ne v13, v4, :cond_7

    .line 68
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 69
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/R2;

    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/H5;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 70
    :cond_6
    const-string v2, "too many constant references in `recipe`"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;

    move-result-object v1

    throw v1

    .line 71
    :cond_7
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 72
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ", referenced: "

    if-nez v4, :cond_c

    .line 73
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 75
    iget-object v1, v0, Lcom/android/tools/r8/internal/Vp0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 76
    new-instance v3, Lcom/android/tools/r8/internal/Up0;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Vp0;->d:Ljava/util/IdentityHashMap;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Vp0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    .line 77
    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v3, v1, v4}, Lcom/android/tools/r8/internal/Up0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)V

    .line 78
    iget-object v1, v2, Lcom/android/tools/r8/internal/Tp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, v2, Lcom/android/tools/r8/internal/Tp0;->c:Lcom/android/tools/r8/internal/Up0;

    if-nez v1, :cond_a

    .line 80
    iput-object v3, v2, Lcom/android/tools/r8/internal/Tp0;->c:Lcom/android/tools/r8/internal/Up0;

    :cond_a
    move-object/from16 v1, p3

    .line 81
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Tp0;->a(Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 82
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 83
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 84
    invoke-static {v10}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/Iterator;)I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too few constant references in `recipe`, expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;

    move-result-object v1

    throw v1

    .line 86
    :cond_c
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v2

    .line 87
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v3

    invoke-static {v11}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/Iterator;)I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "too few argument references in `recipe`, expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;

    move-result-object v1

    throw v1

    .line 89
    :cond_d
    const-string v2, "bootstrap method argument `recipe` must be a string"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;

    move-result-object v1

    throw v1

    .line 90
    :cond_e
    const-string v2, "bootstrap method misses `recipe` argument"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/graph/H5;Ljava/lang/String;)Lcom/android/tools/r8/internal/If;

    move-result-object v1

    throw v1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xba

    .line 1
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/ha;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/GZ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/GZ0;-><init>(Lcom/android/tools/r8/internal/Vp0;Lcom/android/tools/r8/internal/ha;)V

    .line 2
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p3, p4, p7}, Lcom/android/tools/r8/internal/Vp0;->a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/graph/H5;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
