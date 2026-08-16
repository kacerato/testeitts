.class public abstract Lcom/android/tools/r8/internal/rx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/XY;)Lcom/android/tools/r8/internal/Y6;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Y6;

    new-instance v1, Lcom/android/tools/r8/internal/ux;

    sget-object v2, Lcom/android/tools/r8/internal/yx;->b:Lcom/android/tools/r8/internal/vx;

    const-string v3, "HAS_ANNOTATIONS"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/ux;-><init>(Lcom/android/tools/r8/internal/xx;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Y6;-><init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/ux;)V

    return-object v0
.end method

.method public static final b(Lcom/android/tools/r8/internal/XY;)Lcom/android/tools/r8/internal/pu;
    .locals 5

    sget-object v0, Lcom/android/tools/r8/internal/yx;->d:Lcom/android/tools/r8/internal/wx;

    const-string v1, "MODALITY"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/tools/r8/internal/HX;->c:Lcom/android/tools/r8/internal/ou;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lcom/android/tools/r8/internal/f0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/f0;-><init>(Lcom/android/tools/r8/internal/i0;)V

    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f0;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f0;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/HX;

    iget-object v4, v4, Lcom/android/tools/r8/internal/HX;->b:Lcom/android/tools/r8/internal/ux;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/pu;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/tools/r8/internal/pu;-><init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/wx;Lcom/android/tools/r8/internal/ou;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public static final c(Lcom/android/tools/r8/internal/XY;)Lcom/android/tools/r8/internal/pu;
    .locals 5

    sget-object v0, Lcom/android/tools/r8/internal/yx;->c:Lcom/android/tools/r8/internal/wx;

    const-string v1, "VISIBILITY"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/tools/r8/internal/Ax0;->c:Lcom/android/tools/r8/internal/ou;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lcom/android/tools/r8/internal/f0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/f0;-><init>(Lcom/android/tools/r8/internal/i0;)V

    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f0;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f0;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ax0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Ax0;->b:Lcom/android/tools/r8/internal/ux;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/pu;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/tools/r8/internal/pu;-><init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/wx;Lcom/android/tools/r8/internal/ou;Ljava/util/ArrayList;)V

    return-object v3
.end method
