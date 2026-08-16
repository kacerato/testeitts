.class public Lse/f;
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
    .locals 3
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

    new-instance v0, Lte/i;

    invoke-virtual {p1}, Lqe/g;->h()Lre/c;

    move-result-object v1

    sget-object v2, Lre/b;->e:Lqe/s;

    invoke-virtual {v2, p2}, Lqe/s;->g(Lqe/v;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lqe/g;->e()Lqe/c;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lte/i;-><init>(Lre/c;Ljava/lang/String;Lqe/c;)V

    return-object v0
.end method
