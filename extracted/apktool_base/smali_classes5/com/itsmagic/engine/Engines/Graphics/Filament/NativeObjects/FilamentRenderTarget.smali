.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:LM9/c;

.field private static final concreteTexturesReferences:LLc/g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:LLc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/b<",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public b:Z

.field private final renderTarget:Lcom/google/android/filament/RenderTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final usedTextures:Ljava/util/Set;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->c:LM9/c;

    new-instance v0, LLc/g;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->concreteTexturesReferences:LLc/g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget$b;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->d:LLc/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "colorTexture",
            "depthTexture"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->b:Z

    .line 16
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->usedTextures:Ljava/util/Set;

    .line 17
    invoke-static {}, LK8/a;->G()V

    .line 18
    invoke-static {}, LQb/a;->d()V

    .line 19
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/filament/RenderTarget$b;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/RenderTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->renderTarget:Lcom/google/android/filament/RenderTarget;

    if-eqz p2, :cond_0

    .line 20
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 21
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide p2

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->c:LM9/c;

    invoke-static {p0, p2, p3, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    .line 23
    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->concreteTexturesReferences:LLc/g;

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3, v1}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/RenderTarget$b;[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "colorTextures",
            "depthTexture"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->b:Z

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->usedTextures:Ljava/util/Set;

    .line 4
    invoke-static {}, LK8/a;->G()V

    .line 5
    invoke-static {}, LQb/a;->d()V

    .line 6
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/filament/RenderTarget$b;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/RenderTarget;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->renderTarget:Lcom/google/android/filament/RenderTarget;

    if-eqz p2, :cond_1

    move p1, v0

    .line 7
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_1

    .line 8
    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->usedTextures:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->usedTextures:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->renderTarget:Lcom/google/android/filament/RenderTarget;

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide p1

    sget-object p3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->c:LM9/c;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    .line 13
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->concreteTexturesReferences:LLc/g;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->renderTarget:Lcom/google/android/filament/RenderTarget;

    invoke-virtual {p2}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->usedTextures:Ljava/util/Set;

    invoke-virtual {p1, p2, p3, v0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e()LLc/g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->concreteTexturesReferences:LLc/g;

    return-object v0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentTexture"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->concreteTexturesReferences:LLc/g;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->d:LLc/b;

    invoke-virtual {v0, p0, v1}, LLc/g;->wf(Ljava/lang/Object;LLc/b;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->GPU:LM9/a;

    return-object v0
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "RenderTarget still bound to a view"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public f()Lcom/google/android/filament/RenderTarget;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->renderTarget:Lcom/google/android/filament/RenderTarget;

    return-object v0
.end method
