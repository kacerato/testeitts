.class public Lue/d$b$a;
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
        "LNm/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lue/d$b;


# direct methods
.method public constructor <init>(Lue/d$b;)V
    .locals 0

    iput-object p1, p0, Lue/d$b$a;->a:Lue/d$b;

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

    check-cast p2, LNm/c;

    invoke-virtual {p0, p1, p2}, Lue/d$b$a;->b(Lqe/m;LNm/c;)V

    return-void
.end method

.method public b(Lqe/m;LNm/c;)V
    .locals 4
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LNm/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p1, p2}, Lqe/m;->i(LUm/v;)V

    iget-object v1, p0, Lue/d$b$a;->a:Lue/d$b;

    invoke-static {v1}, Lue/d$b;->a(Lue/d$b;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lue/d$b$a;->a:Lue/d$b;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, v2}, Lue/d$b;->b(Lue/d$b;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lue/d$b$a;->a:Lue/d$b;

    invoke-static {v1}, Lue/d$b;->a(Lue/d$b;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lue/e$e;

    invoke-virtual {p2}, LNm/c;->p()LNm/c$a;

    move-result-object v3

    invoke-static {v3}, Lue/d$b;->c(LNm/c$a;)I

    move-result v3

    invoke-interface {p1}, Lqe/m;->w()Lqe/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Lqe/z;->k(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lue/e$e;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lue/d$b$a;->a:Lue/d$b;

    invoke-virtual {p2}, LNm/c;->q()Z

    move-result p2

    invoke-static {p1, p2}, Lue/d$b;->d(Lue/d$b;Z)Z

    return-void
.end method
