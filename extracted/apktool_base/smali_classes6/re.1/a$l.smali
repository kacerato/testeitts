.class public Lre/a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->v(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/k;",
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

    check-cast p2, LUm/k;

    invoke-virtual {p0, p1, p2}, Lre/a$l;->b(Lqe/m;LUm/k;)V

    return-void
.end method

.method public b(Lqe/m;LUm/k;)V
    .locals 2
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, LUm/k;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LUm/k;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lre/a;->L(Lqe/m;Ljava/lang/String;Ljava/lang/String;LUm/v;)V

    return-void
.end method
