.class public Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public apkBuildSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public buildID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public c:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public decalSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public graphicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isFull:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public javaSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public noCodeSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public physicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vcsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->graphicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->decalSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->apkBuildSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->noCodeSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->javaSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->vcsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->apkBuildSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->apkBuildSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->apkBuildSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->decalSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->decalSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->decalSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    return-object v0
.end method

.method public c(LIc/h;)LIc/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    iget-object v1, v0, LIc/k;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->f()Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;->c(LIc/h;)LIc/k;

    move-result-object v2

    iget-object v2, v2, LIc/k;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, LIc/k;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->g(LIc/h;)LIc/k;

    move-result-object p1

    iget-object p1, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->graphicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->graphicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->graphicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->javaSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->javaSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->javaSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->noCodeSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->noCodeSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->noCodeSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->vcsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->vcsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->vcsSettings:Lcom/itsmagic/engine/Engines/Engine/Settings/VCSSettings;

    return-object v0
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->k()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->k()V

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->f()Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/NoCodeSettings;->e(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->l(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "_PROJECT/settings.config"

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LX7/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
