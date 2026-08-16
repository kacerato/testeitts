.class public LQb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Method;

.field public static final d:Ljava/lang/reflect/Method;

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Method;

.field public static final g:Ljava/lang/reflect/Method;

.field public static final h:Ljava/lang/reflect/Method;

.field public static final i:Ljava/lang/reflect/Method;

.field public static final j:Ljava/lang/reflect/Method;

.field public static final k:Ljava/lang/reflect/Method;

.field public static final l:Ljava/lang/reflect/Method;

.field public static final m:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "nDestroyInstanceBuffer"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->a:Ljava/lang/reflect/Method;

    const-string v0, "nDestroySkinningBuffer"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->b:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyRenderTarget"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->c:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyVertexBuffer"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->d:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyColorGrading"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->e:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyIndirectLight"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->f:Ljava/lang/reflect/Method;

    const-string v0, "nDestroySkybox"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->g:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyIndexBuffer"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->h:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyTexture"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->i:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyView"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->j:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyScene"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->k:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyMaterialInstance"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->l:Ljava/lang/reflect/Method;

    const-string v0, "nDestroyMaterial"

    invoke-static {v0}, LQb/c;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LQb/c;->m:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->j0()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/TransformManager;->o(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lcom/google/android/filament/TransformManager;->e(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->h0()Lcom/google/android/filament/RenderableManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/RenderableManager;->U(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/RenderableManager;->G(I)V

    :cond_1
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->e0()Lcom/google/android/filament/LightManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/LightManager;->L(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Lcom/google/android/filament/LightManager;->v(I)V

    :cond_2
    invoke-static {}, LQb/c;->c()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/Engine;->a0(I)Lcom/google/android/filament/Camera;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, LQb/c;->c()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/Engine;->A(I)V

    :cond_3
    invoke-static {}, Lcom/google/android/filament/EntityManager;->f()Lcom/google/android/filament/EntityManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/EntityManager;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/google/android/filament/Engine;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Falha ao resolver m\u00e9todo nativo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c()Lcom/google/android/filament/Engine;
    .locals 1

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/reflect/Method;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "objectPtr"
        }
    .end annotation

    invoke-static {}, LQb/c;->c()Lcom/google/android/filament/Engine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Falha ao invocar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Engine \u00e9 null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized e(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->e:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyColorGrading"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized f(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->h:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyIndexBuffer"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized g(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->f:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyIndirectLight"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized h(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->a:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyInstanceBuffer"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized i(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->m:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyMaterial"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized j(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->l:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyMaterialInstance"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized k(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->c:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyRenderTarget"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized l(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->k:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyScene"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized m(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->b:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroySkinningBuffer"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized n(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->g:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroySkybox"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized o(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->i:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyTexture"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized p(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->d:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyVertexBuffer"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized q(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    const-class v0, LQb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/c;->j:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, p1}, LQb/c;->d(Ljava/lang/reflect/Method;J)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;

    const-string p1, "nDestroyView"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FailedDestructionOfFilamentInstanceException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
