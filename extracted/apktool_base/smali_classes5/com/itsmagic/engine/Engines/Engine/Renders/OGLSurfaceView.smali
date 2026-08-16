.class public Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$e;
    }
.end annotation


# static fields
.field public static final s:[F

.field public static t:Z

.field public static u:I


# instance fields
.field public b:Lcom/google/android/filament/Engine;

.field public c:Lcom/google/android/filament/Renderer;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public f:Lcom/google/android/filament/SwapChain;

.field public g:Lm0/m;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

.field public volatile i:Z

.field public volatile j:I

.field public volatile k:I

.field public volatile l:Z

.field public volatile m:Z

.field public n:Landroid/view/Choreographer$FrameCallback;

.field public o:Z

.field public p:Z

.field public q:J

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->s:[F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    const/16 v0, 0x3c

    sput v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->u:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    .line 3
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->r:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    .line 8
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p:Z

    const-wide/high16 p1, -0x8000000000000000L

    .line 9
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    const-wide/16 p1, 0x0

    .line 10
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->r:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    .line 13
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p:Z

    const-wide/high16 p1, -0x8000000000000000L

    .line 14
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->r:J

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/SwapChain;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->f:Lcom/google/android/filament/SwapChain;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Lcom/google/android/filament/SwapChain;)Lcom/google/android/filament/SwapChain;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->f:Lcom/google/android/filament/SwapChain;

    return-object p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/Engine;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    return-object p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m:Z

    return p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->G()Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/google/android/filament/Renderer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c:Lcom/google/android/filament/Renderer;

    return-object p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p:Z

    return p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p:Z

    return p1
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    return-wide v0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    return-wide p1
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;J)J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    return-wide v0
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->r:J

    return-wide v0
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->j:I

    return p0
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->j:I

    return p1
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->k:I

    return p0
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->k:I

    return p1
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->l:Z

    return p0
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->l:Z

    return p1
.end method

.method public static synthetic t(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    return-object p0
.end method

.method public static synthetic u(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->i:Z

    return p0
.end method

.method public static synthetic v(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->i:Z

    return p1
.end method

.method public static synthetic w(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object p0
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    return p0
.end method

.method public static synthetic y(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)Lm0/m;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g:Lm0/m;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g:Lm0/m;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm0/m;->l()V

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c:Lcom/google/android/filament/Renderer;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Engine;->L(Lcom/google/android/filament/Renderer;)V

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/filament/Engine;->T(Lcom/google/android/filament/View;)V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c:Lcom/google/android/filament/Renderer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->f:Lcom/google/android/filament/SwapChain;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->i:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->p:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->l:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m:Z

    return-void
.end method

.method public B()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->B()V

    return-void
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public final F()V
    .locals 5

    new-instance v0, Lcom/google/android/filament/Engine$c;

    invoke-direct {v0}, Lcom/google/android/filament/Engine$c;-><init>()V

    const-wide/16 v1, 0x40

    iput-wide v1, v0, Lcom/google/android/filament/Engine$c;->c:J

    const-wide/16 v1, 0x8

    iput-wide v1, v0, Lcom/google/android/filament/Engine$c;->e:J

    const-wide/16 v3, 0xa

    iput-wide v3, v0, Lcom/google/android/filament/Engine$c;->b:J

    iput-wide v1, v0, Lcom/google/android/filament/Engine$c;->d:J

    const-wide/16 v1, 0x18

    iput-wide v1, v0, Lcom/google/android/filament/Engine$c;->a:J

    sget-object v1, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/filament/Engine$c;->m:Z

    new-instance v1, Lcom/google/android/filament/Engine$b;

    invoke-direct {v1}, Lcom/google/android/filament/Engine$b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/filament/Engine$b;->d(Lcom/google/android/filament/Engine$c;)Lcom/google/android/filament/Engine$b;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$d;->a:[I

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->renderBackend:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/filament/Engine$a;->OPENGL:Lcom/google/android/filament/Engine$a;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine$b;->a(Lcom/google/android/filament/Engine$a;)Lcom/google/android/filament/Engine$b;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/filament/Engine$a;->DEFAULT:Lcom/google/android/filament/Engine$a;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine$b;->a(Lcom/google/android/filament/Engine$a;)Lcom/google/android/filament/Engine$b;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/filament/Engine$b;->b()Lcom/google/android/filament/Engine;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Engine;->J0(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supported feature level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->Y()Lcom/google/android/filament/Engine$d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filament"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->s()Lcom/google/android/filament/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->c:Lcom/google/android/filament/Renderer;

    new-instance v0, Lm0/m;

    sget-object v1, Lm0/m$a;->DONT_CHECK:Lm0/m$a;

    invoke-direct {v0, v1}, Lm0/m;-><init>(Lm0/m$a;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g:Lm0/m;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)V

    invoke-virtual {v0, v1}, Lm0/m;->w(Lm0/m$c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->g:Lm0/m;

    invoke-virtual {v0, p0}, Lm0/m;->h(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final G()Z
    .locals 6

    invoke-static {}, LK8/a;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>(Lcom/google/android/filament/Engine;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>(Lcom/google/android/filament/Engine;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    sget-object v3, Lcom/google/android/filament/View$d;->TRANSLUCENT:Lcom/google/android/filament/View$d;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->w(Lcom/google/android/filament/View$d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    new-instance v0, Lcom/google/android/filament/LightManager$a;

    sget-object v3, Lcom/google/android/filament/LightManager$d;->SUN:Lcom/google/android/filament/LightManager$d;

    invoke-direct {v0, v3}, Lcom/google/android/filament/LightManager$a;-><init>(Lcom/google/android/filament/LightManager$d;)V

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v4}, Lcom/google/android/filament/LightManager$a;->e(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/google/android/filament/LightManager$a;->g(F)Lcom/google/android/filament/LightManager$a;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Lcom/google/android/filament/LightManager$a;->d(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/filament/LightManager$a;->c(Z)Lcom/google/android/filament/LightManager$a;

    move-result-object v0

    new-instance v4, Lcom/google/android/filament/LightManager$c;

    invoke-direct {v4}, Lcom/google/android/filament/LightManager$c;-><init>()V

    iput v3, v4, Lcom/google/android/filament/LightManager$c;->d:F

    iput v3, v4, Lcom/google/android/filament/LightManager$c;->e:F

    const/16 v5, 0x10

    iput v5, v4, Lcom/google/android/filament/LightManager$c;->a:I

    const v5, 0x3f8ccccd    # 1.1f

    iput v5, v4, Lcom/google/android/filament/LightManager$c;->f:F

    iput v3, v4, Lcom/google/android/filament/LightManager$c;->g:F

    iput v5, v4, Lcom/google/android/filament/LightManager$c;->h:F

    iput-boolean v1, v4, Lcom/google/android/filament/LightManager$c;->i:Z

    iput v2, v4, Lcom/google/android/filament/LightManager$c;->b:I

    invoke-virtual {v0, v4}, Lcom/google/android/filament/LightManager$a;->l(Lcom/google/android/filament/LightManager$c;)Lcom/google/android/filament/LightManager$a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->b:Lcom/google/android/filament/Engine;

    invoke-direct {v1, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;-><init>(Lcom/google/android/filament/LightManager$a;Lcom/google/android/filament/Engine;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->i:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m:Z

    return v2
.end method

.method public final H()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->n:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public I(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "act"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$e;->a()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->F()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->H()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->o:Z

    return-void
.end method

.method public J()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lc8/b;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->e()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->setFpsLimiterEnabled(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->setMaxFPS(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->enableFrameLimitOnEditor:Z

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->setFpsLimiterEnabled(Z)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->limitFramesWhenEditor:I

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->setMaxFPS(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->setFpsLimiterEnabled(Z)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->setMaxFPS(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFpsLimiterEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    if-eq v0, p1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    :cond_0
    sput-boolean p1, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->t:Z

    return-void
.end method

.method public setMaxFPS(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxFPS"
        }
    .end annotation

    if-lez p1, :cond_1

    sget v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->u:I

    if-eq v0, p1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->q:J

    :cond_0
    sput p1, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->u:I

    const-wide/32 v0, 0x3b9aca00

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->r:J

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxFPS deve ser maior que 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->m:Z

    return v0
.end method
