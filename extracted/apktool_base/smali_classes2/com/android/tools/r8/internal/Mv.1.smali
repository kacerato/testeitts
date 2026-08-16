.class public abstract Lcom/android/tools/r8/internal/Mv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/dH;Lcom/android/tools/r8/internal/bI;)Lcom/android/tools/r8/internal/SG;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aH;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/WG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    const/4 v0, 0x0

    move-object v2, v0

    .line 3
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/RG;

    .line 5
    invoke-interface {v3}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v4

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-interface {p1, v4, v5}, Lcom/android/tools/r8/internal/bI;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_1

    if-ne v6, v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/dH;

    .line 9
    iget v5, p0, Lcom/android/tools/r8/internal/dH;->h:I

    .line 10
    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v5

    new-instance v7, Lcom/android/tools/r8/internal/XM0;

    invoke-direct {v7, v2}, Lcom/android/tools/r8/internal/XM0;-><init>(Lcom/android/tools/r8/internal/SG;)V

    .line 12
    invoke-static {v5, v7, v3}, Lcom/android/tools/r8/internal/Ye;->a(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_1
    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {v2, v4, v6}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WG;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/RG;)V
    .locals 1

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
