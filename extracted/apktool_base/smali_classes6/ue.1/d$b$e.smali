.class public Lue/d$b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue/d$b;->h(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LNm/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lue/d$b;


# direct methods
.method public constructor <init>(Lue/d$b;)V
    .locals 0

    iput-object p1, p0, Lue/d$b$e;->a:Lue/d$b;

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

    check-cast p2, LNm/a;

    invoke-virtual {p0, p1, p2}, Lue/d$b$e;->b(Lqe/m;LNm/a;)V

    return-void
.end method

.method public b(Lqe/m;LNm/a;)V
    .locals 2
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LNm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, Lqe/m;->q(LUm/v;)V

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    new-instance v1, Lue/g;

    invoke-direct {v1}, Lue/g;-><init>()V

    invoke-interface {p1, v0, v1}, Lqe/m;->b(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lqe/m;->C(LUm/v;)V

    return-void
.end method
