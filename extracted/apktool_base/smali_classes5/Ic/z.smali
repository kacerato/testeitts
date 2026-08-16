.class public LIc/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, LIc/z;->a:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LIc/z;->c:I

    .line 4
    iput v0, p0, LIc/z;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "MAX_TRYIES"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, LIc/z;->c:I

    .line 12
    iput v0, p0, LIc/z;->d:I

    .line 13
    iput p1, p0, LIc/z;->a:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debug"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 6
    iput v0, p0, LIc/z;->a:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, LIc/z;->c:I

    .line 8
    iput v0, p0, LIc/z;->d:I

    .line 9
    iput-boolean p1, p0, LIc/z;->b:Z

    return-void
.end method

.method public static synthetic a(LIc/z;LIc/t;[ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LIc/z;->h(LIc/t;[ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(LIc/z;Ljava/lang/Object;LIc/G;[ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LIc/z;->i(Ljava/lang/Object;LIc/G;[ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "index",
            "tryies"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-boolean v1, p0, LIc/z;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ListInterator: Interate Exception();"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, LIc/z;->a:I

    if-ge p3, v1, :cond_2

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, LIc/z;->c(Ljava/util/List;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public d(Ljava/util/List;LIc/L;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, p1, v1, v0}, LIc/z;->c(Ljava/util/List;II)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2, v1}, LIc/L;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_0
    invoke-interface {p2, v1}, LIc/L;->a(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/util/List;LIc/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, p1, v1, v0}, LIc/z;->c(Ljava/util/List;II)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2, v1}, LIc/g;->b(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_0
    invoke-interface {p2, v1}, LIc/g;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public f(Ljava/util/List;LIc/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, p1, v1, v0}, LIc/z;->c(Ljava/util/List;II)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2, v1}, LIc/t;->b(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    invoke-interface {p2, v1}, LIc/t;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Ljava/util/List;Ljava/lang/Object;LIc/G;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "pack",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, p1, v1, v0}, LIc/z;->c(Ljava/util/List;II)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v2, p2, v1}, LIc/G;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, LIc/G;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic h(LIc/t;[ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p2, v0

    invoke-virtual {p0, p3, p1, v1}, LIc/z;->l(Ljava/lang/Object;LIc/t;I)V

    return-void
.end method

.method public final synthetic i(Ljava/lang/Object;LIc/G;[ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p3, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p3, v0

    invoke-virtual {p0, p4, p1, p2, v1}, LIc/z;->m(Ljava/lang/Object;Ljava/lang/Object;LIc/G;I)V

    return-void
.end method

.method public j(Ljava/util/List;LIc/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, LIc/z;->d:I

    iget v1, p0, LIc/z;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LIc/y;

    invoke-direct {v3, p0, p2, v1}, LIc/y;-><init>(LIc/z;LIc/t;[I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    iput v0, p0, LIc/z;->c:I

    iput v0, p0, LIc/z;->d:I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v2, p0, LIc/z;->b:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ListInterator: ConcurrentModificationException();"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    aget v0, v1, v0

    iput v0, p0, LIc/z;->c:I

    iget v0, p0, LIc/z;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LIc/z;->d:I

    invoke-virtual {p0, p1, p2}, LIc/z;->j(Ljava/util/List;LIc/t;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Ljava/util/List;Ljava/lang/Object;LIc/G;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "pack",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget v0, p0, LIc/z;->d:I

    iget v1, p0, LIc/z;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LIc/x;

    invoke-direct {v3, p0, p2, p3, v1}, LIc/x;-><init>(LIc/z;Ljava/lang/Object;LIc/G;[I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    iput v0, p0, LIc/z;->c:I

    iput v0, p0, LIc/z;->d:I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v2, p0, LIc/z;->b:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ListInterator: ConcurrentModificationException();"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    aget v0, v1, v0

    iput v0, p0, LIc/z;->c:I

    iget v0, p0, LIc/z;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LIc/z;->d:I

    invoke-virtual {p0, p1, p2, p3}, LIc/z;->k(Ljava/util/List;Ljava/lang/Object;LIc/G;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/Object;LIc/t;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "o",
            "listener",
            "idx"
        }
    .end annotation

    iget v0, p0, LIc/z;->c:I

    if-lt p3, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p2, p1, v0}, LIc/t;->b(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, LIc/t;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;LIc/G;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "o",
            "pack",
            "listener",
            "idx"
        }
    .end annotation

    iget v0, p0, LIc/z;->c:I

    if-lt p4, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p3, p1, p2, v0}, LIc/G;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, LIc/G;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
