.class public final Lcom/android/tools/r8/internal/St0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/qL;Lcom/android/tools/r8/internal/dL;)V
    .locals 4

    if-eqz p1, :cond_b

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/fL;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/jL;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/jL;

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/jL;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jL;->i()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qL;->a(Ljava/lang/Number;)V

    return-void

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jL;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qL;->a(Z)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jL;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qL;->d(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Primitive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    instance-of v0, p1, Lcom/android/tools/r8/internal/bL;

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->d()V

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/dL;

    .line 15
    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/St0;->a(Lcom/android/tools/r8/internal/qL;Lcom/android/tools/r8/internal/dL;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->f()V

    return-void

    .line 17
    :cond_6
    instance-of v0, p1, Lcom/android/tools/r8/internal/gL;

    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->e()V

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/tools/r8/internal/AS;

    .line 22
    iget-object p1, p1, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 24
    iget v1, p1, Lcom/android/tools/r8/internal/FS;->f:I

    .line 25
    :goto_1
    iget-object v2, p1, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v0, v2, :cond_9

    if-eq v0, v2, :cond_8

    .line 26
    iget v2, p1, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v2, v1, :cond_7

    .line 27
    iget-object v2, v0, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 28
    iget-object v3, v0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 29
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    .line 30
    iget-object v0, v0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 31
    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/St0;->a(Lcom/android/tools/r8/internal/qL;Lcom/android/tools/r8/internal/dL;)V

    move-object v0, v2

    goto :goto_1

    .line 32
    :cond_7
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 33
    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 34
    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->g()V

    return-void

    .line 35
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 14

    .line 38
    instance-of v0, p1, Lcom/android/tools/r8/internal/pL;

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    .line 39
    check-cast p1, Lcom/android/tools/r8/internal/pL;

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pL;->y()V

    return-object v0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when reading a JsonElement."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    .line 45
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->d()V

    .line 47
    new-instance v3, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/gL;-><init>()V

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 49
    new-instance v3, Lcom/android/tools/r8/internal/bL;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/bL;-><init>()V

    :goto_0
    const-string v5, "Unexpected token: "

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    if-nez v3, :cond_8

    .line 50
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    if-eq v1, v2, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_5

    if-ne v1, v6, :cond_4

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    .line 52
    sget-object p1, Lcom/android/tools/r8/internal/fL;->b:Lcom/android/tools/r8/internal/fL;

    return-object p1

    .line 53
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->m()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 55
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/android/tools/r8/internal/jL;

    new-instance v1, Lcom/android/tools/r8/internal/rR;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/rR;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 57
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 58
    :cond_8
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 59
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->k()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 60
    instance-of v9, v3, Lcom/android/tools/r8/internal/gL;

    if-eqz v9, :cond_a

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->q()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_a
    move-object v9, v4

    .line 62
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v10

    .line 63
    invoke-static {v10}, Lcom/android/tools/r8/c;->b(I)I

    move-result v11

    if-eqz v11, :cond_c

    if-eq v11, v1, :cond_b

    move-object v11, v4

    goto :goto_3

    .line 64
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->d()V

    .line 65
    new-instance v11, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/gL;-><init>()V

    goto :goto_3

    .line 66
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 67
    new-instance v11, Lcom/android/tools/r8/internal/bL;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/bL;-><init>()V

    :goto_3
    if-eqz v11, :cond_d

    const/4 v12, 0x1

    goto :goto_4

    :cond_d
    const/4 v12, 0x0

    :goto_4
    if-nez v11, :cond_11

    .line 68
    invoke-static {v10}, Lcom/android/tools/r8/c;->b(I)I

    move-result v11

    if-eq v11, v2, :cond_12

    if-eq v11, v8, :cond_10

    if-eq v11, v7, :cond_f

    if-ne v11, v6, :cond_e

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    .line 70
    sget-object v10, Lcom/android/tools/r8/internal/fL;->b:Lcom/android/tools/r8/internal/fL;

    goto :goto_5

    .line 71
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v10}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_f
    new-instance v10, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->m()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 73
    :cond_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object v10

    .line 74
    new-instance v11, Lcom/android/tools/r8/internal/jL;

    new-instance v13, Lcom/android/tools/r8/internal/rR;

    invoke-direct {v13, v10}, Lcom/android/tools/r8/internal/rR;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/Number;)V

    :cond_11
    move-object v10, v11

    goto :goto_5

    .line 75
    :cond_12
    new-instance v10, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    .line 76
    :goto_5
    instance-of v11, v3, Lcom/android/tools/r8/internal/bL;

    if-eqz v11, :cond_13

    .line 77
    move-object v9, v3

    check-cast v9, Lcom/android/tools/r8/internal/bL;

    .line 78
    iget-object v9, v9, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 80
    :cond_13
    move-object v11, v3

    check-cast v11, Lcom/android/tools/r8/internal/gL;

    invoke-virtual {v11, v9, v10}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/dL;)V

    :goto_6
    if-eqz v12, :cond_9

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v3, v10

    goto/16 :goto_1

    .line 82
    :cond_14
    instance-of v9, v3, Lcom/android/tools/r8/internal/bL;

    if-eqz v9, :cond_15

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->g()V

    goto :goto_7

    .line 84
    :cond_15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->h()V

    .line 85
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_16

    return-object v3

    .line 86
    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    goto/16 :goto_1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/android/tools/r8/internal/dL;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/St0;->a(Lcom/android/tools/r8/internal/qL;Lcom/android/tools/r8/internal/dL;)V

    return-void
.end method
