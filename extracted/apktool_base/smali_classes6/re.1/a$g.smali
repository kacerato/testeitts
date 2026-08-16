.class public Lre/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lre/a;->J(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LUm/A;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lre/a;


# direct methods
.method public constructor <init>(Lre/a;)V
    .locals 0

    iput-object p1, p0, Lre/a$g;->a:Lre/a;

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

    check-cast p2, LUm/A;

    invoke-virtual {p0, p1, p2}, Lre/a$g;->b(Lqe/m;LUm/A;)V

    return-void
.end method

.method public b(Lqe/m;LUm/A;)V
    .locals 3
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/A;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, LUm/A;->p()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lqe/m;->w()Lqe/z;

    move-result-object v0

    invoke-virtual {v0, p2}, Lqe/z;->f(Ljava/lang/String;)Lqe/z;

    iget-object v0, p0, Lre/a$g;->a:Lre/a;

    invoke-static {v0}, Lre/a;->l(Lre/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lqe/m;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lre/a$g;->a:Lre/a;

    invoke-static {v1}, Lre/a;->l(Lre/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre/a$p;

    invoke-interface {v2, p1, p2, v0}, Lre/a$p;->a(Lqe/m;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
