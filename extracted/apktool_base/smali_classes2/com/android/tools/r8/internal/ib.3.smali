.class public abstract Lcom/android/tools/r8/internal/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Lcom/android/tools/r8/internal/ka;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/tools/r8/internal/ka;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
