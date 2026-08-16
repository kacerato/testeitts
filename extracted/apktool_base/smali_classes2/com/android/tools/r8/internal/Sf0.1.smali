.class public abstract Lcom/android/tools/r8/internal/Sf0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/ig0;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x2f

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;[CI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Qf0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Qf0;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x2e

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/Iq0;->c(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/tools/r8/internal/Wx;->b:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    const-string v2, "getRelatedResourceTypes(folderType)"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/tools/r8/internal/lg0;

    sget-object v6, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v5, v0

    check-cast v6, Lcom/android/tools/r8/internal/lg0;

    const-string v7, "it"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, p1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v3

    :cond_6
    if-ge p1, p0, :cond_7

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr p1, v0

    check-cast v2, Lcom/android/tools/r8/internal/ng0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ng0;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_7
    return v3
.end method
