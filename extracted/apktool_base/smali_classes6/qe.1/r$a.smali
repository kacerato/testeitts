.class public Lqe/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/r;->a(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic c:Landroid/text/Spanned;

.field public final synthetic d:Landroid/widget/TextView$BufferType;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lqe/r;


# direct methods
.method public constructor <init>(Lqe/r;Ljava/lang/ref/WeakReference;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lqe/r$a;->f:Lqe/r;

    iput-object p2, p0, Lqe/r$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lqe/r$a;->c:Landroid/text/Spanned;

    iput-object p4, p0, Lqe/r$a;->d:Landroid/widget/TextView$BufferType;

    iput-object p5, p0, Lqe/r$a;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lqe/r$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lqe/r$a;->c:Landroid/text/Spanned;

    invoke-static {v0, v1}, Lqe/r;->b(Landroid/widget/TextView;Landroid/text/Spanned;)Landroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqe/r$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lqe/r$a;->d:Landroid/widget/TextView$BufferType;

    iget-object v3, p0, Lqe/r$a;->e:Ljava/lang/Runnable;

    invoke-static {v1, v0, v2, v3}, Lqe/r;->c(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "PrecomputdTxtSetterCmpt"

    const-string v2, "Exception during pre-computing text"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lqe/r$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lqe/r$a;->c:Landroid/text/Spanned;

    iget-object v2, p0, Lqe/r$a;->d:Landroid/widget/TextView$BufferType;

    iget-object v3, p0, Lqe/r$a;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lqe/r;->c(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method
