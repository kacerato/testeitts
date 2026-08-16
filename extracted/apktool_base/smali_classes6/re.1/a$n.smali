.class public Lre/a$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->z(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/p;",
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

    check-cast p2, LUm/p;

    invoke-virtual {p0, p1, p2}, Lre/a$n;->b(Lqe/m;LUm/p;)V

    return-void
.end method

.method public b(Lqe/m;LUm/p;)V
    .locals 6
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->o()Lqe/g;

    move-result-object v0

    invoke-virtual {v0}, Lqe/g;->f()Lqe/k;

    move-result-object v0

    const-class v1, LUm/p;

    invoke-interface {v0, v1}, Lqe/k;->a(Ljava/lang/Class;)Lqe/y;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lqe/m;->length()I

    move-result v1

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lqe/m;->w()Lqe/z;

    move-result-object v2

    const v3, 0xfffc

    invoke-virtual {v2, v3}, Lqe/z;->a(C)Lqe/z;

    :cond_1
    invoke-interface {p1}, Lqe/m;->o()Lqe/g;

    move-result-object v2

    invoke-virtual {p2}, LUm/v;->h()LUm/v;

    move-result-object v3

    instance-of v3, v3, LUm/r;

    invoke-virtual {v2}, Lqe/g;->c()Lwe/a;

    move-result-object v4

    invoke-virtual {p2}, LUm/p;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lwe/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lqe/m;->h()Lqe/v;

    move-result-object v4

    sget-object v5, Lve/g;->a:Lqe/s;

    invoke-virtual {v5, v4, p2}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    sget-object p2, Lve/g;->b:Lqe/s;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    sget-object p2, Lve/g;->c:Lqe/s;

    const/4 v3, 0x0

    invoke-virtual {p2, v4, v3}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    invoke-interface {v0, v2, v4}, Lqe/y;->a(Lqe/g;Lqe/v;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lqe/m;->b(ILjava/lang/Object;)V

    return-void
.end method
