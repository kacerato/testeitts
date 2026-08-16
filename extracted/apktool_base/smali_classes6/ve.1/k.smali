.class public Lve/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqe/g;Lqe/v;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lqe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lve/e;

    invoke-virtual {p1}, Lqe/g;->h()Lre/c;

    move-result-object v1

    new-instance v2, Lve/a;

    sget-object v3, Lve/g;->a:Lqe/s;

    invoke-virtual {v3, p2}, Lqe/s;->g(Lqe/v;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lqe/g;->a()Lve/b;

    move-result-object v4

    invoke-virtual {p1}, Lqe/g;->d()Lve/i;

    move-result-object p1

    sget-object v5, Lve/g;->c:Lqe/s;

    invoke-virtual {v5, p2}, Lqe/s;->b(Lqe/v;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lve/h;

    invoke-direct {v2, v3, v4, p1, v5}, Lve/a;-><init>(Ljava/lang/String;Lve/b;Lve/i;Lve/h;)V

    sget-object p1, Lve/g;->b:Lqe/s;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v3}, Lqe/s;->c(Lqe/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, v2, p2, p1}, Lve/e;-><init>(Lre/c;Lve/a;IZ)V

    return-object v0
.end method
