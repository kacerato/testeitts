.class public Lre/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->r(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/e;",
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

    check-cast p2, LUm/e;

    invoke-virtual {p0, p1, p2}, Lre/a$k;->b(Lqe/m;LUm/e;)V

    return-void
.end method

.method public b(Lqe/m;LUm/e;)V
    .locals 4
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p1}, Lqe/m;->w()Lqe/z;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lqe/z;->a(C)Lqe/z;

    move-result-object v1

    invoke-virtual {p2}, LUm/e;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lqe/z;->f(Ljava/lang/String;)Lqe/z;

    move-result-object v1

    invoke-virtual {v1, v2}, Lqe/z;->a(C)Lqe/z;

    invoke-interface {p1, p2, v0}, Lqe/m;->n(LUm/v;I)V

    return-void
.end method
