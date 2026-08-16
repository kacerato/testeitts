.class public Lre/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->C(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/r;",
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

    check-cast p2, LUm/r;

    invoke-virtual {p0, p1, p2}, Lre/a$f;->b(Lqe/m;LUm/r;)V

    return-void
.end method

.method public b(Lqe/m;LUm/r;)V
    .locals 4
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    invoke-virtual {p2}, LUm/r;->p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lre/b;->e:Lqe/s;

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, Lqe/m;->n(LUm/v;I)V

    return-void
.end method
