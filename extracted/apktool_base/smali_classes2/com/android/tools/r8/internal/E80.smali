.class public abstract Lcom/android/tools/r8/internal/E80;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/uj0;Lcom/android/tools/r8/internal/Tf0;)Lcom/android/tools/r8/internal/nl0;
    .locals 5

    const-string v0, "node"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/tools/r8/internal/uj0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uj0;->a()Lcom/android/tools/r8/internal/oj0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/oj0;->e:Ljava/util/List;

    const-string v2, "node.element.attributeList"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    sget-object v0, Lcom/android/tools/r8/internal/z80;->b:Lcom/android/tools/r8/internal/z80;

    new-instance v3, Lcom/android/tools/r8/internal/cx;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    sget-object v0, Lcom/android/tools/r8/internal/A80;->b:Lcom/android/tools/r8/internal/A80;

    new-instance v2, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v2, v3, v0}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    sget-object v0, Lcom/android/tools/r8/internal/B80;->b:Lcom/android/tools/r8/internal/B80;

    new-instance v3, Lcom/android/tools/r8/internal/cx;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    sget-object v0, Lcom/android/tools/r8/internal/C80;->b:Lcom/android/tools/r8/internal/C80;

    new-instance v2, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v2, v3, v0}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    new-instance v0, Lcom/android/tools/r8/internal/D80;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/D80;-><init>(Lcom/android/tools/r8/internal/Tf0;)V

    new-instance v3, Lcom/android/tools/r8/internal/Ax;

    sget-object v4, Lcom/android/tools/r8/internal/ul0;->h:Lcom/android/tools/r8/internal/ul0;

    invoke-direct {v3, v2, v0, v4}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    new-instance v0, Lcom/android/tools/r8/internal/zx;

    invoke-direct {v0, v3}, Lcom/android/tools/r8/internal/zx;-><init>(Lcom/android/tools/r8/internal/Ax;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zx;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zx;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ng0;

    invoke-static {v2}, Lcom/android/tools/r8/internal/pg0;->a(Lcom/android/tools/r8/internal/ng0;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uj0;->a()Lcom/android/tools/r8/internal/oj0;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/oj0;->f:Ljava/util/List;

    const-string v0, "node.element.childList"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/uj0;

    const-string v4, "it"

    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/E80;->a(Lcom/android/tools/r8/internal/uj0;Lcom/android/tools/r8/internal/Tf0;)Lcom/android/tools/r8/internal/nl0;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/tools/r8/internal/nl0;

    const/4 v0, 0x0

    aput-object v3, p1, v0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/android/tools/r8/internal/pl0;->a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/pl0;->b(Lcom/android/tools/r8/internal/nl0;)Lcom/android/tools/r8/internal/Ax;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    return-object p0
.end method
