.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;
    }
.end annotation


# static fields
.field public static final I:Ljava/lang/String; = "AreaEditorComponent"

.field public static final J:Ljava/lang/Class;


# instance fields
.field public final E:Lorg/ITsMagic/Atlas/BakeOptions;

.field public final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public G:F

.field public H:Ljava/lang/String;

.field private ambientOcclusionIntensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ambientOcclusionPower:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ambientOcclusionQuality:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ambientOcclusionRadius:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bakeAmbientOcclusion:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bakeBuildedWithLight:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bakeLight:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bounceGIIntensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bounceGIRange:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bounceGIVisibility:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public enableGI:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public genMipmaps:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public giQuality:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lightTexelsPerUnit:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mipmapLevels:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public padding:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private quality:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public resolutionTarget:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public texelsPerUnit:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->J:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$h;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "AreaEditorComponent"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->EditMode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    const/16 v0, 0x40

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->texelsPerUnit:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->padding:I

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;->R4096:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->resolutionTarget:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;

    const/16 v0, 0x8

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->lightTexelsPerUnit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->enableGI:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->giQuality:F

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->SHORT:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIRange:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIIntensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionRadius:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionIntensity:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionPower:F

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionQuality:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bakeLight:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->genMipmaps:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mipmapLevels:I

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->quality:I

    new-instance v0, Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {v0}, Lorg/ITsMagic/Atlas/BakeOptions;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->E:Lorg/ITsMagic/Atlas/BakeOptions;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bakeBuildedWithLight:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bakeBuildedWithLight:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->updateMode()V

    return-void
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lorg/ITsMagic/Atlas/BakeOptions;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->E:Lorg/ITsMagic/Atlas/BakeOptions;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->H:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->G:F

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIRange:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionQuality:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getFilterName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFilterName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$g;->a:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getFilter()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "Linear"

    return-object v0

    :cond_1
    const-string v0, "Pixel"

    return-object v0
.end method

.method private updateMode()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->BakePreview:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LLb/k;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/bake/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v4, "bake.go"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->T(Ljava/lang/String;ZZ)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q1()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->BakePreview:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H1(Z)V

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public generateBake()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;->EditMode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->setMode(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$m;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$n;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$n;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;

    invoke-direct {v2, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$o;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public getAmbientOcclusionIntensity()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionIntensity:F

    return v0
.end method

.method public getAmbientOcclusionPower()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionPower:F

    return v0
.end method

.method public getAmbientOcclusionQuality()Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionQuality:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    return-object v0
.end method

.method public getAmbientOcclusionRadius()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionRadius:F

    return v0
.end method

.method public getBakeProgress()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->G:F

    return v0
.end method

.method public getBakeStep()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getBounceGIIntensity()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIIntensity:F

    return v0
.end method

.method public getBounceGIIterations()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBounceGIRange()Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIRange:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    return-object v0
.end method

.method public getEffectiveGIQuality()F
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->enableGI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->getGiQuality()F

    move-result v0

    return v0
.end method

.method public getFilter()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    return-object v0
.end method

.method public getGiQuality()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->giQuality:F

    return v0
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

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$p;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$p;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const-string v3, "Pixels per meter"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    const-string v3, "Padding"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->resolutionTarget:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    const-string v2, "Resolution target"

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$t;

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    const-string v1, "Light settings"

    invoke-static {v1, v0}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    const-string v1, "Bounce GI"

    invoke-static {v1, v0}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    const-string v1, "Ambient Occlusion"

    invoke-static {v1, v0}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    const-string v1, "Texture settings"

    invoke-static {v1, v0}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getLightTexelsPerUnit()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->lightTexelsPerUnit:I

    return v0
.end method

.method public getMipmapLevels()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mipmapLevels:I

    return v0
.end method

.method public getMode()Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->padding:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->quality:I

    return v0
.end method

.method public getTexelsPerUnit()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->texelsPerUnit:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AreaEditorComponent"

    return-object v0
.end method

.method public isBakeAmbientOcclusion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bakeAmbientOcclusion:Z

    return v0
.end method

.method public isBaking()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isBounceGIVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIVisibility:Z

    return v0
.end method

.method public isEnableGI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->enableGI:Z

    return v0
.end method

.method public isGenMipmaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->genMipmaps:Z

    return v0
.end method

.method public onAttach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->updateMode()V

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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->updateMode()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    :cond_0
    return-void
.end method

.method public setAmbientOcclusionIntensity(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ambientOcclusionIntensity"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionIntensity:F

    return-void
.end method

.method public setAmbientOcclusionPower(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ambientOcclusionPower"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionPower:F

    return-void
.end method

.method public setAmbientOcclusionQuality(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ambientOcclusionQuality"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionQuality:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;

    return-void
.end method

.method public setAmbientOcclusionRadius(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ambientOcclusionRadius"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    :cond_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->ambientOcclusionRadius:F

    return-void
.end method

.method public setBakeAmbientOcclusion(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bakeAmbientOcclusion"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bakeAmbientOcclusion:Z

    return-void
.end method

.method public setBounceGIIntensity(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounceGIIntensity"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    :cond_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIIntensity:F

    return-void
.end method

.method public setBounceGIRange(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounceGIRange"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;->BALANCED:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIRange:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;

    return-void
.end method

.method public setBounceGIVisibility(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounceGIVisibility"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->bounceGIVisibility:Z

    return-void
.end method

.method public setEnableGI(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableGI"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->enableGI:Z

    return-void
.end method

.method public setFilter(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    return-void
.end method

.method public setGenMipmaps(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genMipmaps"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->genMipmaps:Z

    return-void
.end method

.method public setGiQuality(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "giQuality"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->giQuality:F

    return-void
.end method

.method public setLightTexelsPerUnit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightTexelsPerUnit"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->lightTexelsPerUnit:I

    return-void
.end method

.method public setMipmapLevels(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mipmapLevels"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mipmapLevels:I

    return-void
.end method

.method public setMode(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->mode:Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$s;

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$k;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;)V

    invoke-static {p1}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->padding:I

    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->quality:I

    return-void
.end method

.method public setTexelsPerUnit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texelsPerUnit"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;->texelsPerUnit:I

    return-void
.end method
