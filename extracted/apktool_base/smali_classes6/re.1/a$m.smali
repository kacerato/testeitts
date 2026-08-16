.class public Lre/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->A(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/q;",
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

    check-cast p2, LUm/q;

    invoke-virtual {p0, p1, p2}, Lre/a$m;->b(Lqe/m;LUm/q;)V

    return-void
.end method

.method public b(Lqe/m;LUm/q;)V
    .locals 2
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, LUm/q;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lre/a;->L(Lqe/m;Ljava/lang/String;Ljava/lang/String;LUm/v;)V

    return-void
.end method
