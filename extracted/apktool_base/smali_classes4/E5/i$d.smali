.class public LE5/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE5/i;->c(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Ljava/lang/Runnable;

.field public final synthetic d:LC5/b;

.field public final synthetic e:LE5/i;


# direct methods
.method public constructor <init>(LE5/i;LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LE5/i$d;->e:LE5/i;

    iput-object p2, p0, LE5/i$d;->d:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object v0, p0, LE5/i$d;->d:LC5/b;

    invoke-virtual {v0}, LC5/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LE5/i$d$a;

    invoke-direct {v0, p0, p1}, LE5/i$d$a;-><init>(LE5/i$d;Landroid/text/Editable;)V

    iput-object v0, p0, LE5/i$d;->c:Ljava/lang/Runnable;

    iget-object p1, p0, LE5/i$d;->b:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LE5/i$d;->b:Landroid/os/Handler;

    :cond_0
    iget-object p1, p0, LE5/i$d;->b:Landroid/os/Handler;

    iget-object v0, p0, LE5/i$d;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2ee

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    iget-object p1, p0, LE5/i$d;->b:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p2, p0, LE5/i$d;->c:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
