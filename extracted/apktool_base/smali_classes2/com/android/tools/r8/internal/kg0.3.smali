.class public abstract Lcom/android/tools/r8/internal/kg0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/zh0;Lcom/android/tools/r8/internal/Vi0;Lcom/android/tools/r8/internal/Ug0;)I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/tools/r8/internal/zh0;->b:Lcom/android/tools/r8/internal/Ch0;

    if-nez p0, :cond_0

    .line 47
    sget-object p0, Lcom/android/tools/r8/internal/Ch0;->d:Lcom/android/tools/r8/internal/Ch0;

    .line 48
    :cond_0
    iget p0, p0, Lcom/android/tools/r8/internal/Ch0;->b:I

    shl-int/lit8 p0, p0, 0x18

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vi0;->b:Lcom/android/tools/r8/internal/Yi0;

    if-nez p1, :cond_1

    .line 50
    sget-object p1, Lcom/android/tools/r8/internal/Yi0;->d:Lcom/android/tools/r8/internal/Yi0;

    .line 51
    :cond_1
    iget p1, p1, Lcom/android/tools/r8/internal/Yi0;->b:I

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    .line 52
    iget-object p1, p2, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    if-nez p1, :cond_2

    .line 53
    sget-object p1, Lcom/android/tools/r8/internal/Xg0;->d:Lcom/android/tools/r8/internal/Xg0;

    .line 54
    :cond_2
    iget p1, p1, Lcom/android/tools/r8/internal/Xg0;->b:I

    or-int/2addr p0, p1

    return p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/ci0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/ci0;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, -0x1

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    ushr-int/lit8 v7, v6, 0x18

    const/high16 v8, 0xff0000

    and-int/2addr v8, v6

    shr-int/lit8 v8, v8, 0x10

    const v9, 0xffff

    and-int/2addr v6, v9

    if-eq v7, v4, :cond_1

    .line 7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v3

    move v4, v7

    :cond_1
    if-eq v8, v5, :cond_2

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v8

    .line 11
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ci0;->a()Lcom/android/tools/r8/internal/bi0;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->d()Lcom/android/tools/r8/internal/Af0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Af0;->f()Lcom/android/tools/r8/internal/xf0;

    move-result-object p1

    .line 14
    const-string v1, "tableBuilder.packageBuilderList"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/yh0;

    .line 16
    iget-object v2, v1, Lcom/android/tools/r8/internal/yh0;->c:Lcom/android/tools/r8/internal/Ch0;

    if-nez v2, :cond_5

    .line 17
    sget-object v2, Lcom/android/tools/r8/internal/Ch0;->d:Lcom/android/tools/r8/internal/Ch0;

    .line 18
    :cond_5
    iget v2, v2, Lcom/android/tools/r8/internal/Ch0;->b:I

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yh0;->c()Lcom/android/tools/r8/internal/Af0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->f()Lcom/android/tools/r8/internal/xf0;

    move-result-object v1

    .line 21
    const-string v3, "it.typeBuilderList"

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ui0;

    .line 23
    iget-object v4, v3, Lcom/android/tools/r8/internal/Ui0;->c:Lcom/android/tools/r8/internal/Yi0;

    if-nez v4, :cond_7

    .line 24
    sget-object v4, Lcom/android/tools/r8/internal/Yi0;->d:Lcom/android/tools/r8/internal/Yi0;

    .line 25
    :cond_7
    iget v4, v4, Lcom/android/tools/r8/internal/Yi0;->b:I

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_6

    .line 27
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ui0;->c()Lcom/android/tools/r8/internal/Af0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Af0;->f()Lcom/android/tools/r8/internal/xf0;

    move-result-object v3

    .line 28
    const-string v5, "type.entryBuilderList"

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Tg0;

    .line 30
    iget-object v6, v5, Lcom/android/tools/r8/internal/Tg0;->c:Lcom/android/tools/r8/internal/Xg0;

    if-nez v6, :cond_9

    .line 31
    sget-object v6, Lcom/android/tools/r8/internal/Xg0;->d:Lcom/android/tools/r8/internal/Xg0;

    .line 32
    :cond_9
    iget v6, v6, Lcom/android/tools/r8/internal/Xg0;->b:I

    .line 33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 34
    iget-object v6, v5, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v6, :cond_a

    .line 35
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v6, v5, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    .line 36
    iget v6, v5, Lcom/android/tools/r8/internal/Tg0;->b:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Lcom/android/tools/r8/internal/Tg0;->b:I

    .line 37
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_2

    .line 38
    :cond_a
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Af0;->c()V

    :goto_2
    if-eqz p2, :cond_b

    .line 39
    sget-object v6, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    .line 40
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Ug0;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/tools/r8/internal/Tg0;->d:Ljava/lang/String;

    .line 41
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 42
    :cond_b
    iget-object v6, v5, Lcom/android/tools/r8/internal/Tg0;->g:Lcom/android/tools/r8/internal/wh0;

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    .line 43
    iput-object v6, v5, Lcom/android/tools/r8/internal/Tg0;->g:Lcom/android/tools/r8/internal/wh0;

    .line 44
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_1

    .line 45
    :cond_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bi0;->b()Lcom/android/tools/r8/internal/ci0;

    move-result-object p0

    return-object p0
.end method
