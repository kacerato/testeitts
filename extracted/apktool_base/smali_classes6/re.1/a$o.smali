.class public Lre/a$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->D(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lqe/m;LUm/v;)V
    .locals 0
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, LUm/u;

    invoke-virtual {p0, p1, p2}, Lre/a$o;->b(Lqe/m;LUm/u;)V

    return-void
.end method

.method public b(Lqe/m;LUm/u;)V
    .locals 6
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    invoke-virtual {p2}, LUm/b;->p()LUm/b;

    move-result-object v1

    instance-of v2, v1, LUm/w;

    if-eqz v2, :cond_0

    check-cast v1, LUm/w;

    invoke-virtual {v1}, LUm/w;->t()I

    move-result v2

    sget-object v3, Lre/b;->a:Lqe/s;

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v4

    sget-object v5, Lre/b$a;->ORDERED:Lre/b$a;

    invoke-virtual {v3, v4, v5}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    sget-object v3, Lre/b;->c:Lqe/s;

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    invoke-virtual {v1}, LUm/w;->t()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, LUm/w;->v(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lre/b;->a:Lqe/s;

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v2

    sget-object v3, Lre/b$a;->BULLET:Lre/b$a;

    invoke-virtual {v1, v2, v3}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    sget-object v1, Lre/b;->b:Lqe/s;

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v2

    invoke-static {p2}, Lre/a;->m(LUm/v;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    :goto_0
    invoke-interface {p1, p2, v0}, Lqe/m;->n(LUm/v;I)V

    invoke-interface {p1, p2}, Lqe/m;->x(LUm/v;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lqe/m;->p()V

    :cond_1
    return-void
.end method
