.class public final Lcom/google/android/filament/utils/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer$SurfaceCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,518:1\n1#2:519\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer$SurfaceCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,518:1\n1#2:519\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/filament/utils/a;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/utils/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 4
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/a;->I()Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/a;->z()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Engine;->Q(Lcom/google/android/filament/SwapChain;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/a;->z()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/filament/Engine;->v(Ljava/lang/Object;)Lcom/google/android/filament/SwapChain;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/filament/utils/a;->k(Lcom/google/android/filament/utils/a;Lcom/google/android/filament/SwapChain;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-static {p1}, Lcom/google/android/filament/utils/a;->h(Lcom/google/android/filament/utils/a;)Landroid/view/SurfaceView;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "displayHelper"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-static {v2}, Lcom/google/android/filament/utils/a;->e(Lcom/google/android/filament/utils/a;)Lm0/k;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    move-object v3, v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/filament/utils/a;->F()Lcom/google/android/filament/Renderer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lm0/k;->b(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-static {p1}, Lcom/google/android/filament/utils/a;->i(Lcom/google/android/filament/utils/a;)Landroid/view/TextureView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-static {v2}, Lcom/google/android/filament/utils/a;->e(Lcom/google/android/filament/utils/a;)Lm0/k;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/filament/utils/a;->F()Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lm0/k;->b(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    :cond_4
    return-void
.end method

.method public b(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/a;->J()Lcom/google/android/filament/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/filament/w;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Lcom/google/android/filament/w;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/google/android/filament/View;->E0(Lcom/google/android/filament/w;)V

    iget-object v0, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-static {v0}, Lcom/google/android/filament/utils/a;->d(Lcom/google/android/filament/utils/a;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->J(II)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-static {p1}, Lcom/google/android/filament/utils/a;->m(Lcom/google/android/filament/utils/a;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/a;->z()Lcom/google/android/filament/Engine;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/filament/utils/a;->l(Lcom/google/android/filament/utils/a;Lcom/google/android/filament/Engine;)V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-static {v0}, Lcom/google/android/filament/utils/a;->e(Lcom/google/android/filament/utils/a;)Lm0/k;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "displayHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/M;->S(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lm0/k;->c()V

    iget-object v0, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/a;->I()Lcom/google/android/filament/SwapChain;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/filament/utils/a$b;->a:Lcom/google/android/filament/utils/a;

    invoke-virtual {v2}, Lcom/google/android/filament/utils/a;->z()Lcom/google/android/filament/Engine;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/filament/Engine;->Q(Lcom/google/android/filament/SwapChain;)V

    invoke-virtual {v2}, Lcom/google/android/filament/utils/a;->z()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->W()V

    invoke-static {v2, v1}, Lcom/google/android/filament/utils/a;->k(Lcom/google/android/filament/utils/a;Lcom/google/android/filament/SwapChain;)V

    :cond_1
    return-void
.end method
