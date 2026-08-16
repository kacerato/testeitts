.class public Lre/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->G(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/x;",
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

    check-cast p2, LUm/x;

    invoke-virtual {p0, p1, p2}, Lre/a$e;->b(Lqe/m;LUm/x;)V

    return-void
.end method

.method public b(Lqe/m;LUm/x;)V
    .locals 5
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lre/a;->n(LUm/x;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lqe/m;->q(LUm/v;)V

    :cond_0
    invoke-interface {p1}, Lqe/m;->length()I

    move-result v1

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    sget-object v2, Lre/b;->f:Lqe/s;

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Lqe/m;->n(LUm/v;I)V

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lqe/m;->C(LUm/v;)V

    :cond_1
    return-void
.end method
