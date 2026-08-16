.class public final LN/c;
.super Lcom/bumptech/glide/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/l<",
        "LN/c;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/l;-><init>()V

    return-void
.end method

.method public static l(LW/g;)LN/c;
    .locals 1
    .param p0    # LW/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "LN/c;"
        }
    .end annotation

    new-instance v0, LN/c;

    invoke-direct {v0}, LN/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->f(LW/g;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, LN/c;

    return-object p0
.end method

.method public static m()LN/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LN/c;

    invoke-direct {v0}, LN/c;-><init>()V

    invoke-virtual {v0}, LN/c;->h()LN/c;

    move-result-object v0

    return-object v0
.end method

.method public static n(I)LN/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LN/c;

    invoke-direct {v0}, LN/c;-><init>()V

    invoke-virtual {v0, p0}, LN/c;->i(I)LN/c;

    move-result-object p0

    return-object p0
.end method

.method public static o(LW/c$a;)LN/c;
    .locals 1
    .param p0    # LW/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LN/c;

    invoke-direct {v0}, LN/c;-><init>()V

    invoke-virtual {v0, p0}, LN/c;->j(LW/c$a;)LN/c;

    move-result-object p0

    return-object p0
.end method

.method public static p(LW/c;)LN/c;
    .locals 1
    .param p0    # LW/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LN/c;

    invoke-direct {v0}, LN/c;-><init>()V

    invoke-virtual {v0, p0}, LN/c;->k(LW/c;)LN/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h()LN/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LW/c$a;

    invoke-direct {v0}, LW/c$a;-><init>()V

    invoke-virtual {p0, v0}, LN/c;->j(LW/c$a;)LN/c;

    move-result-object v0

    return-object v0
.end method

.method public i(I)LN/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LW/c$a;

    invoke-direct {v0, p1}, LW/c$a;-><init>(I)V

    invoke-virtual {p0, v0}, LN/c;->j(LW/c$a;)LN/c;

    move-result-object p1

    return-object p1
.end method

.method public j(LW/c$a;)LN/c;
    .locals 0
    .param p1    # LW/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, LW/c$a;->a()LW/c;

    move-result-object p1

    invoke-virtual {p0, p1}, LN/c;->k(LW/c;)LN/c;

    move-result-object p1

    return-object p1
.end method

.method public k(LW/c;)LN/c;
    .locals 0
    .param p1    # LW/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->f(LW/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, LN/c;

    return-object p1
.end method
