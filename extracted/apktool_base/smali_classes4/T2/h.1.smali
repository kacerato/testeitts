.class public interface abstract LT2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, LT2/F;->b(Ljava/lang/Class;)LT2/F;

    move-result-object p1

    invoke-interface {p0, p1}, LT2/h;->j(LT2/F;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Class;)La3/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "La3/b<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {p1}, LT2/F;->b(Ljava/lang/Class;)LT2/F;

    move-result-object p1

    invoke-interface {p0, p1}, LT2/h;->i(LT2/F;)La3/b;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LT2/F;->b(Ljava/lang/Class;)LT2/F;

    move-result-object p1

    invoke-interface {p0, p1}, LT2/h;->g(LT2/F;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract e(LT2/F;)La3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;)",
            "La3/a<",
            "TT;>;"
        }
    .end annotation
.end method

.method public f(Ljava/lang/Class;)La3/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "La3/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LT2/F;->b(Ljava/lang/Class;)LT2/F;

    move-result-object p1

    invoke-interface {p0, p1}, LT2/h;->h(LT2/F;)La3/b;

    move-result-object p1

    return-object p1
.end method

.method public g(LT2/F;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0, p1}, LT2/h;->i(LT2/F;)La3/b;

    move-result-object p1

    invoke-interface {p1}, La3/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public abstract h(LT2/F;)La3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;)",
            "La3/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract i(LT2/F;)La3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;)",
            "La3/b<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public j(LT2/F;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0, p1}, LT2/h;->h(LT2/F;)La3/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, La3/b;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Class;)La3/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "La3/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LT2/F;->b(Ljava/lang/Class;)LT2/F;

    move-result-object p1

    invoke-interface {p0, p1}, LT2/h;->e(LT2/F;)La3/a;

    move-result-object p1

    return-object p1
.end method
