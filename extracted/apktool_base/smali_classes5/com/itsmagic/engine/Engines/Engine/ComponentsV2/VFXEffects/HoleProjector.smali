.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final R:Ljava/lang/String; = "HoleProjector"

.field public static final S:Ljava/lang/Class;

.field public static final T:Ljava/lang/String; = "angleLimit"

.field public static final U:Ljava/lang/String; = "backfaceLimit"

.field public static final V:Ljava/lang/String; = "projectionWidth"

.field public static final W:Ljava/lang/String; = "reach"

.field public static final X:Ljava/lang/String; = "forward"

.field public static final Y:Ljava/lang/String; = "right"


# instance fields
.field public final N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final P:Lib/h;

.field public Q:LJAVARuntime/Component;

.field private angleLimit:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private backfaceLimit:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private projectionWidth:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private reach:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->S:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "HoleProjector"

    invoke-direct {p0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v0, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->P:Lib/h;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->sendTransformParams(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    return p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    return p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    return p0
.end method

.method private sendParams()V
    .locals 2

    const-string v0, "angleLimit"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    const-string v0, "backfaceLimit"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    const-string v0, "projectionWidth"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    const-string v0, "reach"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->sendTransformParams()V

    return-void
.end method

.method private sendTransformParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    const-string v0, "forward"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF3Param(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 5
    const-string v0, "right"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF3Param(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendTransformParams(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 9
    const-string p1, "forward"

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF3Param(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 10
    const-string p1, "right"

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF3Param(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getAngleLimit()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    return v0
.end method

.method public getBackfaceLimit()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    return v0
.end method

.method public getConstructor()Loc/c;
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getConstructor()Loc/c;

    move-result-object v0

    const-string v1, "Builtins/hole_projector_frag.glsl"

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->loadAssetShader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Loc/c;->p(Ljava/lang/String;)Loc/c;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "angleLimit"

    invoke-virtual {v0, v1, v2, v3}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v3, "backfaceLimit"

    invoke-virtual {v0, v1, v2, v3}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "projectionWidth"

    invoke-virtual {v0, v1, v2, v3}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v3, "reach"

    invoke-virtual {v0, v1, v2, v3}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "forward"

    invoke-virtual {v0, v1, v2, v3}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v3, "right"

    invoke-virtual {v0, v1, v2, v3}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070261

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V

    sget-object v2, LC5/b$a;->SLFloat01:LC5/b$a;

    const-string v3, "Angle limit"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V

    const-string v3, "Backface limit"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "Projection width"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V

    const-string v3, "Reach"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMaxSimultaneousEmitters()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public getProjectionWidth()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    return v0
.end method

.method public getReach()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "HoleProjector"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->onAttach()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isFullVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->P:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->sendParams()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isFullVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->P:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->onHierarchyActiveChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->sendParams()V

    :cond_0
    return-void
.end method

.method public reuploadParams()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->reuploadParams()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->sendParams()V

    return-void
.end method

.method public setAngleLimit(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleLimit"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->angleLimit:F

    if-eqz v0, :cond_1

    const-string v0, "angleLimit"

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    :cond_1
    return-void
.end method

.method public setBackfaceLimit(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backfaceLimit"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->backfaceLimit:F

    if-eqz v0, :cond_1

    const-string v0, "backfaceLimit"

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    :cond_1
    return-void
.end method

.method public setProjectionWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectionWidth"
        }
    .end annotation

    const v0, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->projectionWidth:F

    if-eqz v0, :cond_1

    const-string v0, "projectionWidth"

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    :cond_1
    return-void
.end method

.method public setReach(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reach"
        }
    .end annotation

    const v0, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->reach:F

    if-eqz v0, :cond_1

    const-string v0, "reach"

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    :cond_1
    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->Q:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->Q:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/HoleProjector;

    invoke-direct {v0, p0}, LJAVARuntime/HoleProjector;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->Q:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
