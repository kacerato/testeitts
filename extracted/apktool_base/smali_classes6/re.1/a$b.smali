.class public Lre/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->y(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/m;",
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

    check-cast p2, LUm/m;

    invoke-virtual {p0, p1, p2}, Lre/a$b;->b(Lqe/m;LUm/m;)V

    return-void
.end method

.method public b(Lqe/m;LUm/m;)V
    .locals 4
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, Lqe/m;->q(LUm/v;)V

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    sget-object v1, Lre/b;->d:Lqe/s;

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v2

    invoke-virtual {p2}, LUm/m;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, Lqe/m;->n(LUm/v;I)V

    invoke-interface {p1, p2}, Lqe/m;->C(LUm/v;)V

    return-void
.end method
