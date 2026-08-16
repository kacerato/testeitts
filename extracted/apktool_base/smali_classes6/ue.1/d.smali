.class public Lue/d;
.super Lqe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lue/d$b;,
        Lue/d$c;
    }
.end annotation


# instance fields
.field public final a:Lue/h;

.field public final b:Lue/d$b;


# direct methods
.method public constructor <init>(Lue/h;)V
    .locals 1
    .param p1    # Lue/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lqe/a;-><init>()V

    iput-object p1, p0, Lue/d;->a:Lue/h;

    new-instance v0, Lue/d$b;

    invoke-direct {v0, p1}, Lue/d$b;-><init>(Lue/h;)V

    iput-object v0, p0, Lue/d;->b:Lue/d$b;

    return-void
.end method

.method public static l(Landroid/content/Context;)Lue/d;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/d;

    invoke-static {p0}, Lue/h;->g(Landroid/content/Context;)Lue/h;

    move-result-object p0

    invoke-direct {v0, p0}, Lue/d;-><init>(Lue/h;)V

    return-object v0
.end method

.method public static m(Lue/d$c;)Lue/d;
    .locals 1
    .param p0    # Lue/d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/h$a;

    invoke-direct {v0}, Lue/h$a;-><init>()V

    invoke-interface {p0, v0}, Lue/d$c;->a(Lue/h$a;)V

    new-instance p0, Lue/d;

    invoke-virtual {v0}, Lue/h$a;->g()Lue/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lue/d;-><init>(Lue/h;)V

    return-object p0
.end method

.method public static n(Lue/h;)Lue/d;
    .locals 1
    .param p0    # Lue/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lue/d;

    invoke-direct {v0, p0}, Lue/d;-><init>(Lue/h;)V

    return-object v0
.end method


# virtual methods
.method public b(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lue/f;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public c(LVm/d$b;)V
    .locals 1
    .param p1    # LVm/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, LNm/f;->d()LMm/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, LVm/d$b;->j(Ljava/lang/Iterable;)LVm/d$b;

    return-void
.end method

.method public d(LUm/v;)V
    .locals 0
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lue/d;->b:Lue/d$b;

    invoke-virtual {p1}, Lue/d$b;->g()V

    return-void
.end method

.method public j(Lqe/m$b;)V
    .locals 1
    .param p1    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lue/d;->b:Lue/d$b;

    invoke-virtual {v0, p1}, Lue/d$b;->h(Lqe/m$b;)V

    return-void
.end method

.method public k(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lue/f;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public o()Lue/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lue/d;->a:Lue/h;

    return-object v0
.end method
