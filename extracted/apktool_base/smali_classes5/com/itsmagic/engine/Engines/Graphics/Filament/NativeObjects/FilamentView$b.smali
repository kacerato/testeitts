.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;
.super LM9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "cls"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {p0, p2}, LM9/b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->k(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->l(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->l(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->f()Lcom/google/android/filament/RenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->n(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/google/android/filament/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/filament/View;->r0(Lcom/google/android/filament/RenderTarget;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->m(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;)Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->e()Lge/X;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->n(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/google/android/filament/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->f()Lge/X;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->n(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)Lcom/google/android/filament/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
