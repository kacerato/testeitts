.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:LM9/c;

.field private static final concreteCBReferences:Lge/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lge/X<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Z

.field private filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final skybox:Lcom/google/android/filament/Skybox;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->c:LM9/c;

    new-instance v0, Lge/X;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lge/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->concreteCBReferences:Lge/X;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Skybox$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 7
    invoke-static {}, LK8/a;->G()V

    .line 8
    invoke-static {}, LQb/a;->d()V

    .line 9
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Skybox$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->skybox:Lcom/google/android/filament/Skybox;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->c:LM9/c;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Skybox$a;Lcom/google/android/filament/Engine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 2
    invoke-static {}, LK8/a;->G()V

    .line 3
    invoke-static {}, LQb/a;->d()V

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/filament/Skybox$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->skybox:Lcom/google/android/filament/Skybox;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->c:LM9/c;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Skybox$a;Lwb/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "cubemapInstance"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 12
    invoke-static {}, LK8/a;->G()V

    .line 13
    invoke-static {}, LQb/a;->d()V

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p2}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Skybox$a;->d(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/Skybox$a;

    .line 16
    :cond_1
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Skybox$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Skybox;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->skybox:Lcom/google/android/filament/Skybox;

    .line 17
    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->concreteCBReferences:Lge/X;

    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p2, v0, v1, v2}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->c:LM9/c;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method public static synthetic e()Lge/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->concreteCBReferences:Lge/X;

    return-object v0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z
    .locals 1
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

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->concreteCBReferences:Lge/X;

    invoke-virtual {v0, p0}, Lge/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

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

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->r(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Skybox still bound to a scene"

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

.method public f()Lcom/google/android/filament/Skybox;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->skybox:Lcom/google/android/filament/Skybox;

    return-object v0
.end method
