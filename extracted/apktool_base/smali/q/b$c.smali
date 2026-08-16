.class public Lq/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lq/b;


# direct methods
.method public constructor <init>(Lq/b;)V
    .locals 0

    iput-object p1, p0, Lq/b$c;->d:Lq/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lq/b$c;->d:Lq/b;

    invoke-virtual {v0}, Lq/b;->n()V

    iget-object v0, p0, Lq/b$c;->d:Lq/b;

    invoke-virtual {v0}, Lq/b;->getSyntaxPatternsSize()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lq/b$c;->d:Lq/b;

    iget v1, p0, Lq/b$c;->b:I

    iget v2, p0, Lq/b$c;->c:I

    invoke-static {v0, p1, v1, v2}, Lq/b;->e(Lq/b;Landroid/text/Editable;II)V

    iget-object p1, p0, Lq/b$c;->d:Lq/b;

    invoke-static {p1}, Lq/b;->a(Lq/b;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lq/b$c;->d:Lq/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq/b;->f(Lq/b;Z)Z

    iget-object p1, p0, Lq/b$c;->d:Lq/b;

    invoke-static {p1}, Lq/b;->i(Lq/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lq/b$c;->d:Lq/b;

    invoke-static {v0}, Lq/b;->g(Lq/b;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lq/b$c;->d:Lq/b;

    invoke-static {v1}, Lq/b;->h(Lq/b;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lq/b$c;->d:Lq/b;

    invoke-static {p1}, Lq/b;->j(Lq/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lq/b$c;->d:Lq/b;

    invoke-virtual {p1}, Lq/b;->B()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput p2, p0, Lq/b$c;->b:I

    iput p4, p0, Lq/b$c;->c:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
