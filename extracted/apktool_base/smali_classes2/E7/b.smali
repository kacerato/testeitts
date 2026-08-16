.class public LE7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LE7/e;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LE7/e;

    invoke-direct {v0}, LE7/e;-><init>()V

    iput-object v0, p0, LE7/b;->a:LE7/e;

    const/4 v1, 0x0

    iput-boolean v1, p0, LE7/b;->d:Z

    iput-boolean v1, p0, LE7/b;->e:Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object v2, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    new-instance v2, Lcom/google/android/filament/Skybox$a;

    invoke-direct {v2}, Lcom/google/android/filament/Skybox$a;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/google/android/filament/Skybox$a;->b(FFFF)Lcom/google/android/filament/Skybox$a;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;-><init>(Lcom/google/android/filament/Skybox$a;)V

    iput-object v0, p0, LE7/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    iget-object v2, p0, LE7/b;->a:LE7/e;

    iget-object v2, v2, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    new-instance v2, Lcom/google/android/filament/IndirectLight$a;

    invoke-direct {v2}, Lcom/google/android/filament/IndirectLight$a;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const-string v5, "#ff9d9d9d"

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->d0()[F

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Lcom/google/android/filament/IndirectLight$a;->c(I[F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object v2

    const v4, 0x46c35000    # 25000.0f

    invoke-virtual {v2, v4}, Lcom/google/android/filament/IndirectLight$a;->b(F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;-><init>(Lcom/google/android/filament/IndirectLight$a;Lwb/b;)V

    iput-object v0, p0, LE7/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    iget-object v2, p0, LE7/b;->a:LE7/e;

    iget-object v2, v2, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object v2, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v2, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v0, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    sget-object v2, Lcom/google/android/filament/View$d;->OPAQUE:Lcom/google/android/filament/View$d;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->w(Lcom/google/android/filament/View$d;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v4, v0, LE7/e;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v4, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v0, v0, LE7/e;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v4, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v0, v0, LE7/e;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    new-instance v4, LTb/a;

    invoke-direct {v4, v2, v2}, LTb/a;-><init>(II)V

    iput-object v4, v0, LE7/e;->e:LTb/a;

    iget-object v0, p0, LE7/b;->a:LE7/e;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    new-instance v4, Lcom/google/android/filament/LightManager$a;

    sget-object v5, Lcom/google/android/filament/LightManager$d;->SUN:Lcom/google/android/filament/LightManager$d;

    invoke-direct {v4, v5}, Lcom/google/android/filament/LightManager$a;-><init>(Lcom/google/android/filament/LightManager$d;)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v3, v5, v3}, Lcom/google/android/filament/LightManager$a;->e(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object v3

    const v4, 0x47c35000    # 100000.0f

    invoke-virtual {v3, v4}, Lcom/google/android/filament/LightManager$a;->g(F)Lcom/google/android/filament/LightManager$a;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4, v4}, Lcom/google/android/filament/LightManager$a;->d(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/filament/LightManager$a;->c(Z)Lcom/google/android/filament/LightManager$a;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;-><init>(Lcom/google/android/filament/LightManager$a;)V

    iput-object v2, v0, LE7/e;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v1, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v0, v0, LE7/e;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    new-instance v0, LE7/b$a;

    invoke-direct {v0, p0}, LE7/b$a;-><init>(LE7/b;)V

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->F()V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v2, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v0, v0, LE7/e;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v2, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v0, v0, LE7/e;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->e:LTb/a;

    invoke-virtual {v0}, LTb/a;->c()V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->destroyImmediate()V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v0

    invoke-virtual {v0}, LRb/c;->destroyImmediate()V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->destroyImmediate()V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->destroyImmediate()V

    iget-object v0, p0, LE7/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->destroyImmediate()V

    iget-object v0, p0, LE7/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->destroyImmediate()V

    iget-object v0, p0, LE7/b;->a:LE7/e;

    iget-object v0, v0, LE7/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->destroyImmediate()V

    iput-object v1, p0, LE7/b;->a:LE7/e;

    iput-object v1, p0, LE7/b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    iput-object v1, p0, LE7/b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
