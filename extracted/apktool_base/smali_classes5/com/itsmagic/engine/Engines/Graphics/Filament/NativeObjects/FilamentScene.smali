.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:LM9/c;

.field private static final concreteEntitiesReferences:LLc/g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Ljava/util/Set<",
            "LRb/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final concreteILReferences:LLc/g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteSceneReferences:LLc/g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;",
            ">;"
        }
    .end annotation
.end field

.field private static final concreteSkyboxReferences:LLc/g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:LLc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/b<",
            "Ljava/util/Set<",
            "LRb/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final e:LLc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/d<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Z

.field private final entityList:Ljava/util/Set;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LRb/c;",
            ">;"
        }
    .end annotation
.end field

.field private indirectLight:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final scene:Lcom/google/android/filament/Scene;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private skybox:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->c:LM9/c;

    new-instance v0, LLc/g;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteILReferences:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSkyboxReferences:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteEntitiesReferences:LLc/g;

    new-instance v0, LLc/g;

    invoke-direct {v0, v1}, LLc/g;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSceneReferences:LLc/g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$b;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->d:LLc/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$c;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->e:LLc/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    .line 3
    invoke-static {}, LK8/a;->G()V

    .line 4
    invoke-static {}, LQb/a;->d()V

    .line 5
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->t()Lcom/google/android/filament/Scene;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v2

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->c:LM9/c;

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    .line 7
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteEntitiesReferences:LLc/g;

    invoke-virtual {v1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSceneReferences:LLc/g;

    invoke-virtual {v1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    .line 11
    invoke-static {}, LK8/a;->G()V

    .line 12
    invoke-static {}, LQb/a;->d()V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->t()Lcom/google/android/filament/Scene;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v1

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->c:LM9/c;

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    .line 15
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteEntitiesReferences:LLc/g;

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSceneReferences:LLc/g;

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e()LLc/g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteILReferences:LLc/g;

    return-object v0
.end method

.method public static synthetic f()LLc/g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSkyboxReferences:LLc/g;

    return-object v0
.end method

.method public static synthetic h()LLc/g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteEntitiesReferences:LLc/g;

    return-object v0
.end method

.method public static synthetic i()LLc/g;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSceneReferences:LLc/g;

    return-object v0
.end method

.method public static k(LRb/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteEntitiesReferences:LLc/g;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->d:LLc/b;

    invoke-virtual {v0, p0, v1}, LLc/g;->wf(Ljava/lang/Object;LLc/b;)Z

    move-result p0

    return p0
.end method

.method public static m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSceneReferences:LLc/g;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->e:LLc/d;

    invoke-virtual {v0, p0, v1}, LLc/g;->xf(Ljava/lang/Object;LLc/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object p0
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indirectLight"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteILReferences:LLc/g;

    invoke-virtual {v0, p0}, Lge/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static r(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skybox"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSkyboxReferences:LLc/g;

    invoke-virtual {v0, p0}, Lge/X;->containsValue(Ljava/lang/Object;)Z

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

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->b:Z

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->skybox:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->indirectLight:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Scene still contains entities"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Scene still bound to an indirect light"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Scene still bound to a skybox"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Scene still bound to a view"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public j(LRb/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->k(LRb/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {p1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->b(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v0, "Entity already added to another scene"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v0, "Entity already added to this scene"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(LRb/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public n()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->indirectLight:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    return-object v0
.end method

.method public o()Lcom/google/android/filament/Scene;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    return-object v0
.end method

.method public p()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->skybox:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    return-object v0
.end method

.method public s(LRb/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {p1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->p(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->entityList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Entity is not from this scene"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "il"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->f()Lcom/google/android/filament/IndirectLight;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->q(Lcom/google/android/filament/IndirectLight;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->q(Lcom/google/android/filament/IndirectLight;)V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->indirectLight:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteILReferences:LLc/g;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {v1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skybox"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->f()Lcom/google/android/filament/Skybox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->r(Lcom/google/android/filament/Skybox;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Scene;->r(Lcom/google/android/filament/Skybox;)V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->skybox:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->concreteSkyboxReferences:LLc/g;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->scene:Lcom/google/android/filament/Scene;

    invoke-virtual {v1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
