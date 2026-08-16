.class public LAd/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LAd/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LAd/g;

    invoke-direct {v0, p1}, LAd/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAd/g$a;->a:LAd/g;

    return-void
.end method


# virtual methods
.method public a(IFI)LAd/g$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, LAd/g$a;->a:LAd/g;

    invoke-virtual {v0}, LAd/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, LAd/e;->d(Ljava/lang/CharSequence;FI)LAd/e;

    move-result-object p1

    invoke-virtual {p0, p1}, LAd/g$a;->c(LAd/e;)LAd/g$a;

    move-result-object p1

    return-object p1
.end method

.method public b(II)LAd/g$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, LAd/g$a;->a:LAd/g;

    invoke-virtual {v0}, LAd/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, LAd/e;->e(Ljava/lang/CharSequence;I)LAd/e;

    move-result-object p1

    invoke-virtual {p0, p1}, LAd/g$a;->c(LAd/e;)LAd/g$a;

    move-result-object p1

    return-object p1
.end method

.method public c(LAd/e;)LAd/g$a;
    .locals 1

    iget-object v0, p0, LAd/g$a;->a:LAd/g;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;I)LAd/g$a;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-static {p1, p2}, LAd/e;->e(Ljava/lang/CharSequence;I)LAd/e;

    move-result-object p1

    invoke-virtual {p0, p1}, LAd/g$a;->c(LAd/e;)LAd/g$a;

    move-result-object p1

    return-object p1
.end method

.method public e()LAd/g;
    .locals 1

    iget-object v0, p0, LAd/g$a;->a:LAd/g;

    return-object v0
.end method
