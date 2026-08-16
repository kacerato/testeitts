.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field private static final concreteEntityReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "LRb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:LM9/c;


# instance fields
.field public final b:LRb/c;

.field public final c:Lcom/google/android/filament/Camera;

.field public d:F

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->g:LM9/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->concreteEntityReferences:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    new-instance v0, LRb/c;

    invoke-direct {v0}, LRb/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->b:LRb/c;

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Engine;->q(I)Lcom/google/android/filament/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->g:LM9/c;

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->concreteEntityReferences:Ljava/util/Map;

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->concreteEntityReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static h(LRb/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->concreteEntityReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

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

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->r(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->b:LRb/c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->k(LRb/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->b:LRb/c;

    invoke-virtual {v0}, LRb/c;->destroyImmediate()V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Camera entity still bound to a scene"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Camera still bound to a view"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public e()Lcom/google/android/filament/Camera;
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public f()LRb/c;
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->b:LRb/c;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getFocusDistance()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->d:F

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public i(DDDDDDDDD)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eyeX",
            "eyeY",
            "eyeZ",
            "centerX",
            "centerY",
            "centerZ",
            "upX",
            "upY",
            "upZ"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, LK8/a;->G()V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    invoke-virtual/range {v2 .. v20}, Lcom/google/android/filament/Camera;->z(DDDDDDDDD)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public j([DFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frustumB",
            "nearPlane",
            "farPlane"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    float-to-double v3, p2

    float-to-double v5, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/filament/Camera;->B([DDD)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public k([D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelMatrix"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Camera;->I([D)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public l(FFFFFF)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "bottom",
            "top",
            "near",
            "far"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, LK8/a;->G()V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    sget-object v3, Lcom/google/android/filament/Camera$b;->ORTHO:Lcom/google/android/filament/Camera$b;

    move/from16 v1, p1

    float-to-double v4, v1

    move/from16 v1, p2

    float-to-double v6, v1

    move/from16 v1, p3

    float-to-double v8, v1

    move/from16 v1, p4

    float-to-double v10, v1

    move/from16 v1, p5

    float-to-double v12, v1

    move/from16 v1, p6

    float-to-double v14, v1

    invoke-virtual/range {v2 .. v15}, Lcom/google/android/filament/Camera;->L(Lcom/google/android/filament/Camera$b;DDDDDD)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public m(FFFFLcom/google/android/filament/Camera$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fov",
            "ratio",
            "md",
            "mrd",
            "fov1"
        }
    .end annotation

    move-object v0, p0

    invoke-static {}, LK8/a;->G()V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    move v1, p1

    float-to-double v3, v1

    move v1, p2

    float-to-double v5, v1

    move v1, p3

    float-to-double v7, v1

    move/from16 v1, p4

    float-to-double v9, v1

    move-object/from16 v11, p5

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/filament/Camera;->K(DDDDLcom/google/android/filament/Camera$a;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public setFocusDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->e:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->d:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->c:Lcom/google/android/filament/Camera;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Camera;->G(F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
