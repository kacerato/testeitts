.class public LBd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LBd/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LBd/d;

    invoke-direct {v0, p1}, LBd/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LBd/d$a;->a:LBd/d;

    return-void
.end method


# virtual methods
.method public a(IFLjava/lang/Class;)LBd/d$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "LBd/d$a;"
        }
    .end annotation

    iget-object v0, p0, LBd/d$a;->a:LBd/d;

    invoke-virtual {v0}, LAd/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, LBd/b;->f(Ljava/lang/CharSequence;FLjava/lang/Class;)LBd/b;

    move-result-object p1

    invoke-virtual {p0, p1}, LBd/d$a;->e(LBd/b;)LBd/d$a;

    move-result-object p1

    return-object p1
.end method

.method public b(IFLjava/lang/Class;Landroid/os/Bundle;)LBd/d$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "LBd/d$a;"
        }
    .end annotation

    iget-object v0, p0, LBd/d$a;->a:LBd/d;

    invoke-virtual {v0}, LAd/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, LBd/b;->g(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)LBd/b;

    move-result-object p1

    invoke-virtual {p0, p1}, LBd/d$a;->e(LBd/b;)LBd/d$a;

    move-result-object p1

    return-object p1
.end method

.method public c(ILjava/lang/Class;)LBd/d$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "LBd/d$a;"
        }
    .end annotation

    iget-object v0, p0, LBd/d$a;->a:LBd/d;

    invoke-virtual {v0}, LAd/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, LBd/b;->h(Ljava/lang/CharSequence;Ljava/lang/Class;)LBd/b;

    move-result-object p1

    invoke-virtual {p0, p1}, LBd/d$a;->e(LBd/b;)LBd/d$a;

    move-result-object p1

    return-object p1
.end method

.method public d(ILjava/lang/Class;Landroid/os/Bundle;)LBd/d$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "LBd/d$a;"
        }
    .end annotation

    iget-object v0, p0, LBd/d$a;->a:LBd/d;

    invoke-virtual {v0}, LAd/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, LBd/b;->i(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)LBd/b;

    move-result-object p1

    invoke-virtual {p0, p1}, LBd/d$a;->e(LBd/b;)LBd/d$a;

    move-result-object p1

    return-object p1
.end method

.method public e(LBd/b;)LBd/d$a;
    .locals 1

    iget-object v0, p0, LBd/d$a;->a:LBd/d;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;Ljava/lang/Class;)LBd/d$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "LBd/d$a;"
        }
    .end annotation

    invoke-static {p1, p2}, LBd/b;->h(Ljava/lang/CharSequence;Ljava/lang/Class;)LBd/b;

    move-result-object p1

    invoke-virtual {p0, p1}, LBd/d$a;->e(LBd/b;)LBd/d$a;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)LBd/d$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "LBd/d$a;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LBd/b;->i(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)LBd/b;

    move-result-object p1

    invoke-virtual {p0, p1}, LBd/d$a;->e(LBd/b;)LBd/d$a;

    move-result-object p1

    return-object p1
.end method

.method public h()LBd/d;
    .locals 1

    iget-object v0, p0, LBd/d$a;->a:LBd/d;

    return-object v0
.end method
