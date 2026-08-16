.class public Lqe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqe/m;LUm/v;)V
    .locals 0
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->p()V

    return-void
.end method

.method public b(Lqe/m;LUm/v;)V
    .locals 0
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, Lqe/m;->x(LUm/v;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lqe/m;->p()V

    invoke-interface {p1}, Lqe/m;->F()V

    :cond_0
    return-void
.end method
