.class public Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/d$a;,
        Lm0/d$c;,
        Lm0/d$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/Choreographer;

.field public final b:Lm0/d$a;

.field public c:Lcom/google/android/filament/Renderer;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lm0/d;->a:Landroid/view/Choreographer;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lm0/d;->b:Lm0/d$a;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 5
    new-instance v1, Lm0/d$c;

    invoke-direct {v1, p0, v0}, Lm0/d$c;-><init>(Lm0/d;Lm0/j;)V

    iput-object v1, p0, Lm0/d;->d:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lm0/d$b;

    invoke-direct {v1, p0, v0}, Lm0/d$b;-><init>(Lm0/d;Lm0/e;)V

    iput-object v1, p0, Lm0/d;->d:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lm0/d$a;)V
    .locals 2
    .param p1    # Lm0/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lm0/d;->a:Landroid/view/Choreographer;

    .line 9
    iput-object p1, p0, Lm0/d;->b:Lm0/d$a;

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 11
    new-instance p1, Lm0/d$c;

    invoke-direct {p1, p0, v1}, Lm0/d$c;-><init>(Lm0/d;Lm0/j;)V

    iput-object p1, p0, Lm0/d;->d:Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lm0/d$b;

    invoke-direct {p1, p0, v1}, Lm0/d$b;-><init>(Lm0/d;Lm0/e;)V

    iput-object p1, p0, Lm0/d;->d:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static bridge synthetic a(Lm0/d;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lm0/d;->a:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static bridge synthetic b(Lm0/d;)Lcom/google/android/filament/Renderer;
    .locals 0

    iget-object p0, p0, Lm0/d;->c:Lcom/google/android/filament/Renderer;

    return-object p0
.end method


# virtual methods
.method public c(J)V
    .locals 1

    iget-object v0, p0, Lm0/d;->b:Lm0/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lm0/d$a;->a(J)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lm0/d;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lm0/d;->d:Ljava/lang/Object;

    invoke-static {v1}, Lm0/a;->a(Ljava/lang/Object;)Landroid/view/Choreographer$VsyncCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lm0/b;->a(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm0/d;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lm0/d;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lm0/d;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lm0/d;->d:Ljava/lang/Object;

    invoke-static {v1}, Lm0/a;->a(Ljava/lang/Object;)Landroid/view/Choreographer$VsyncCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lm0/c;->a(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm0/d;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Lm0/d;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_0
    return-void
.end method

.method public f(Lcom/google/android/filament/Renderer;)V
    .locals 0
    .param p1    # Lcom/google/android/filament/Renderer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lm0/d;->c:Lcom/google/android/filament/Renderer;

    return-void
.end method
