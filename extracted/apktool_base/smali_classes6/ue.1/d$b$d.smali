.class public Lue/d$b$d;
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
        "LNm/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lue/d$b;


# direct methods
.method public constructor <init>(Lue/d$b;)V
    .locals 0

    iput-object p1, p0, Lue/d$b$d;->a:Lue/d$b;

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

    check-cast p2, LNm/b;

    invoke-virtual {p0, p1, p2}, Lue/d$b$d;->b(Lqe/m;LNm/b;)V

    return-void
.end method

.method public b(Lqe/m;LNm/b;)V
    .locals 0
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LNm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    iget-object p1, p0, Lue/d$b$d;->a:Lue/d$b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lue/d$b;->f(Lue/d$b;I)I

    return-void
.end method
