.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;
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

.field private final indirectLight:Lcom/google/android/filament/IndirectLight;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->c:LM9/c;

    new-instance v0, Lge/X;

    invoke-direct {v0}, Lge/X;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lge/X;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/IndirectLight$a;Lwb/b;)V
    .locals 4
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lwb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/IndirectLight$a;->f(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/IndirectLight$a;

    :cond_1
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/IndirectLight$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->indirectLight:Lcom/google/android/filament/IndirectLight;

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->c:LM9/c;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    if-eqz p2, :cond_2

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lge/X;

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p2, v0, v1, p1}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic e()Lge/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lge/X;

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

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lge/X;

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

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->q(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "IndirectLight still bound to a scene"

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

.method public f()Lcom/google/android/filament/IndirectLight;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->indirectLight:Lcom/google/android/filament/IndirectLight;

    return-object v0
.end method
