.class public Lm0/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$VsyncCallback;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lm0/d$c;->a:Lm0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm0/d;Lm0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm0/d$c;-><init>(Lm0/d;)V

    return-void
.end method


# virtual methods
.method public onVsync(Landroid/view/Choreographer$FrameData;)V
    .locals 4

    iget-object v0, p0, Lm0/d$c;->a:Lm0/d;

    invoke-static {v0}, Lm0/d;->a(Lm0/d;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-static {v0, p0}, Lm0/b;->a(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    iget-object v0, p0, Lm0/d$c;->a:Lm0/d;

    invoke-static {v0}, Lm0/d;->b(Lm0/d;)Lcom/google/android/filament/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lm0/f;->a(Landroid/view/Choreographer$FrameData;)Landroid/view/Choreographer$FrameTimeline;

    move-result-object v0

    iget-object v1, p0, Lm0/d$c;->a:Lm0/d;

    invoke-static {v1}, Lm0/d;->b(Lm0/d;)Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-static {v0}, Lm0/g;->a(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/Renderer;->s(J)V

    iget-object v1, p0, Lm0/d$c;->a:Lm0/d;

    invoke-static {v1}, Lm0/d;->b(Lm0/d;)Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-static {v0}, Lm0/h;->a(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/Renderer;->w(J)V

    :cond_0
    iget-object v0, p0, Lm0/d$c;->a:Lm0/d;

    invoke-static {p1}, Lm0/i;->a(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lm0/d;->c(J)V

    return-void
.end method
