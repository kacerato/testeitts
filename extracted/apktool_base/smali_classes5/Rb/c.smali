.class public LRb/c;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:LM9/c;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRb/b;

    invoke-direct {v0}, LRb/b;-><init>()V

    sput-object v0, LRb/c;->c:LM9/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->f()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v0

    iput v0, p0, LRb/c;->b:I

    int-to-long v0, v0

    sget-object v2, LRb/c;->c:LM9/c;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method public static synthetic e(J)V
    .locals 0

    invoke-static {p0, p1}, LRb/c;->h(J)V

    return-void
.end method

.method private static synthetic h(J)V
    .locals 0

    long-to-int p0, p0

    invoke-static {p0}, LQb/c;->a(I)V

    return-void
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->k(LRb/c;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(LRb/c;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->h(LRb/c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->f(LRb/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a light"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a camera"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a renderable"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a scene"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public f()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, LRb/c;->destroyImmediate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, LRb/c;->b:I

    return v0
.end method
