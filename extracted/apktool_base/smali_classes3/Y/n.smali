.class public LY/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e$b;
.implements LV/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e$b<",
        "TT;>;",
        "LV/o;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:LY/n$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LY/n$a;

    invoke-direct {v0, p1}, LY/n$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LY/n;->b:LY/n$a;

    .line 4
    invoke-virtual {v0, p0}, LV/f;->i(LV/o;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)[I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    iget-object p1, p0, LY/n;->a:[I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LY/n;->a:[I

    if-nez v0, :cond_1

    iget-object v0, p0, LY/n;->b:LY/n$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LY/n$a;

    invoke-direct {v0, p1}, LY/n$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LY/n;->b:LY/n$a;

    invoke-virtual {v0, p0}, LV/f;->i(LV/o;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(II)V
    .locals 0

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, LY/n;->a:[I

    const/4 p1, 0x0

    iput-object p1, p0, LY/n;->b:LY/n$a;

    return-void
.end method
