.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final D0:I = 0x0

.field public static final b1:I = 0x1

.field public static final i1:Ljava/lang/String; = "CustomPostProcessing"

.field public static final m1:Ljava/lang/Class;

.field public static final v0:I = 0x2


# instance fields
.field public S:Ljava/lang/String;

.field public final T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LVb/b;",
            ">;"
        }
    .end annotation
.end field

.field public U:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

.field public V:LSb/a;

.field public W:Ljava/lang/String;

.field public X:Z

.field public Y:Ljava/lang/String;

.field public Z:F

.field public global_variables:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation
.end field

.field public q0:LJAVARuntime/Component;

.field protected shaderFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->m1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$b;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    const-string v0, "CustomPostProcessing"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderFile"
        }
    .end annotation

    .line 9
    const-string v0, "CustomPostProcessing"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;-><init>(Ljava/lang/String;Z)V

    .line 10
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedComponentType",
            "internal"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->global_variables:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->X:Z

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Y:Ljava/lang/String;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->N:Z

    return-void
.end method

.method public static buildShaderCache()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaults()V

    return-void
.end method

.method public static buildShaderCacheForce()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaultsForce()V

    return-void
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->lambda$getInspectorEntries$2(LVb/b;)V

    return-void
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->lambda$getInspectorEntries$1(LVb/b;)V

    return-void
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->lambda$getInspectorEntries$0(LVb/b;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$0(LVb/b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->markTrackedParamDirtyByName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$1(LVb/b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->markTrackedParamDirtyByName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$2(LVb/b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->markTrackedParamDirtyByName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyParams(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;Ljava/util/Map;)V
    .locals 3
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
            "unused1",
            "unused2",
            "unused3",
            "frameBuffer",
            "unused4",
            "outParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;",
            "LTb/a;",
            "LTb/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 p1, -0x1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "time"

    invoke-interface {p6, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getResolutionWidth(LTb/a;)F

    move-result p2

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getResolutionHeight(LTb/a;)F

    move-result p3

    const/4 p4, 0x2

    new-array p5, p4, [F

    const/4 v0, 0x0

    aput p2, p5, v0

    const/4 p2, 0x1

    aput p3, p5, p2

    const-string p3, "resolution"

    invoke-interface {p6, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, v0

    :goto_0
    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p3, p5, :cond_10

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LVb/b;

    if-eqz p5, :cond_f

    iget-object v1, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v1, p5, LVb/b;->e:Z

    if-eqz v1, :cond_f

    iget-object v1, p5, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v1, p1

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "sampler2D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "float"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_2
    const-string v2, "rgba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_3
    const-string v2, "bool"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_4
    const-string v2, "rgb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v2, "float01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_6
    const-string v2, "float4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move v1, p4

    goto :goto_2

    :sswitch_7
    const-string v2, "float3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    move v1, p2

    goto :goto_2

    :sswitch_8
    const-string v2, "float2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    move v1, v0

    :goto_2
    packed-switch v1, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p5, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] at shader:"

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, LJ4/d;->M1(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    iget-object v1, p5, LVb/b;->f:Ljava/lang/Object;

    if-eqz v1, :cond_b

    check-cast v1, Lub/p;

    invoke-static {v1}, Lub/p;->L(Lub/p;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    iget-object v1, p5, LVb/b;->a:Ljava/lang/String;

    iget-object p5, p5, LVb/b;->f:Ljava/lang/Object;

    invoke-interface {p6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_b
    :goto_3
    iget-object v1, p5, LVb/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p5, LVb/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_4
    move v1, p1

    goto :goto_5

    :sswitch_9
    const-string v2, "empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    move v1, p4

    goto :goto_5

    :sswitch_a
    const-string v2, "black"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    move v1, p2

    goto :goto_5

    :sswitch_b
    const-string v2, "filled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    move v1, v0

    :goto_5
    packed-switch v1, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    iget-object p5, p5, LVb/b;->a:Ljava/lang/String;

    sget-object v1, Lyb/b;->h:Lub/p;

    invoke-interface {p6, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_2
    iget-object p5, p5, LVb/b;->a:Ljava/lang/String;

    sget-object v1, Lyb/b;->i:Lub/p;

    invoke-interface {p6, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_3
    iget-object p5, p5, LVb/b;->a:Ljava/lang/String;

    sget-object v1, Lyb/b;->g:Lub/p;

    invoke-interface {p6, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_4
    iget-object v1, p5, LVb/b;->f:Ljava/lang/Object;

    if-eqz v1, :cond_f

    iget-object p5, p5, LVb/b;->a:Ljava/lang/String;

    invoke-interface {p6, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_6
    add-int/2addr p3, p2

    goto/16 :goto_0

    :cond_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4bf7529e -> :sswitch_b
        0x5978fff -> :sswitch_a
        0x5c2854d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F

    return-void
.end method

.method public findCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const-string v0, "-MANIFEST-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findManifest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const-string v0, "-MANIFEST-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
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
    .locals 12
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

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    new-instance v6, LC5/b;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$d;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;)V

    sget-object v8, LC5/b$a;->InputFile:LC5/b$a;

    const-string v9, ".pvsc"

    const-string v10, "Shader file"

    invoke-direct {v6, v7, v10, v8, v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->isFailed()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance p1, LC5/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    const/16 v1, 0xc

    const v2, 0x7f05012d

    invoke-direct {p1, v0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    move v6, v4

    :goto_0
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LVb/b;

    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v8, v7, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v11, "sampler2D"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v10, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v11, "float"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x7

    goto :goto_1

    :sswitch_2
    const-string v11, "rgba"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_3
    const-string v11, "bool"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_4
    const-string v11, "rgb"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    move v10, v0

    goto :goto_1

    :sswitch_5
    const-string v11, "float01"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    move v10, v1

    goto :goto_1

    :sswitch_6
    const-string v11, "float4"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    move v10, v2

    goto :goto_1

    :sswitch_7
    const-string v11, "float3"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_1

    :cond_9
    move v10, v3

    goto :goto_1

    :sswitch_8
    const-string v11, "float2"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_1

    :cond_a
    move v10, v4

    :goto_1
    packed-switch v10, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid param type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] at shader:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LJ4/d;->M1(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$e;

    invoke-direct {v9, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v8, v9, v7, v10, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$h;

    invoke-direct {v9, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    iget-object v10, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v11, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v8, v9, v10, v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v8, v9, p0, v7, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$f;

    invoke-direct {v9, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    iget-object v10, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v11, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v8, v9, v10, v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v8, v9, p0, v7, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$j;

    invoke-direct {v9, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v8, v9, v7, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$g;

    invoke-direct {v9, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    iget-object v10, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v11, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v8, v9, v10, v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v8, v9, p0, v7, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_5
    new-instance v8, LC5/b;

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$i;

    invoke-direct {v9, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    iget-object v10, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v11, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v8, v9, v10, v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v8, v9, p0, v7, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    iget-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    if-nez v8, :cond_b

    new-array v8, v0, [F

    iput-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    :cond_b
    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    iget-object v10, v7, LVb/b;->f:Ljava/lang/Object;

    check-cast v10, [F

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/f;

    invoke-direct {v11, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    invoke-static {v8, v10, v9, v11}, LF5/c;->V(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    iget-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    if-nez v8, :cond_c

    new-array v8, v1, [F

    iput-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    :cond_c
    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    iget-object v10, v7, LVb/b;->f:Ljava/lang/Object;

    check-cast v10, [F

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/g;

    invoke-direct {v11, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    invoke-static {v8, v10, v9, v11}, LF5/c;->P(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v8

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v8, v9, p0, v7, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_8
    iget-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    if-nez v8, :cond_d

    new-array v8, v2, [F

    iput-object v8, v7, LVb/b;->f:Ljava/lang/Object;

    :cond_d
    iget-object v8, v7, LVb/b;->a:Ljava/lang/String;

    iget-object v10, v7, LVb/b;->f:Ljava/lang/Object;

    check-cast v10, [F

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/h;

    invoke-direct {v11, p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;LVb/b;)V

    invoke-static {v8, v10, v9, v11}, LF5/c;->C(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v8

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v7, v7, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC2:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v8, v9, p0, v7, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/2addr v6, v3

    goto/16 :goto_0

    :cond_e
    :goto_3
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReservedTrackedSlotsCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getResolutionDependentParameterMask()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResolutionHeight(LTb/a;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffer"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, LTb/a;->h()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method public getResolutionWidth(LTb/a;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffer"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, LTb/a;->i()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method public getShaderFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "CustomPostProcessing"

    return-object v0
.end method

.method public getTrackedCustomParamCount()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTrackedParamIndexForName(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVb/b;

    if-eqz v2, :cond_1

    iget-object v2, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public getTrackedParameterMask()J
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getReservedTrackedSlotsCount()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v5

    or-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getTrackedCustomParamCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->getMaxTrackedParams()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    add-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v5

    or-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-wide v1
.end method

.method public getTrackedSlotForParamIndex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramIndex"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getReservedTrackedSlotsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReservedDynamicParamName(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->N:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->ensurePayloadForCurrentShaderData()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Failed to compile shader"

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public markAllCustomParamsDirty()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getReservedTrackedSlotsCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getTrackedCustomParamCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->getMaxTrackedParams()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public markTrackedParamDirtyByName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getTrackedParamIndexForName(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getTrackedSlotForParamIndex(I)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->getMaxTrackedParams()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    :cond_1
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->updateShaderPipeline(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F

    invoke-static {}, LK8/d;->b()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public precisionFrom(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-object p1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "high"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "low"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "medium"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_2
        0x1a354 -> :sswitch_1
        0x30dda2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public receiveEvent(LLb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->receiveEvent(LLb/c;)V

    instance-of p1, p1, Lo9/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->storeVariables()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->reload()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->S:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->U:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomPostProcessing: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public requiresParameterUploadEveryFrame(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public restoreVariables()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->global_variables:Ljava/util/List;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->global_variables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->global_variables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVb/b;

    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$a;->a:[I

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v2}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v2

    iput-object v2, v4, LVb/b;->f:Ljava/lang/Object;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    iget v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v4, LVb/b;->f:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->farray_value:[F

    iput-object v2, v4, LVb/b;->f:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->markAllCustomParamsDirty()V

    :cond_7
    return-void
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->storeVariables()V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public setParam(Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LVb/b;

    iget-boolean v7, v6, LVb/b;->e:Z

    if-eqz v7, :cond_11

    iget-object v7, v6, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v5, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v7, "Param of type "

    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v3, v8

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "sampler2D"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_1
    const-string v3, "float"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_2
    const-string v3, "rgba"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_3
    const-string v3, "rgb"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    goto :goto_2

    :sswitch_4
    const-string v3, "float01"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_2

    :sswitch_5
    const-string v3, "float4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :sswitch_6
    const-string v9, "float3"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :sswitch_7
    const-string v3, "float2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v3, v4

    :cond_7
    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz p2, :cond_d

    instance-of v0, p2, Lub/p;

    if-eqz v0, :cond_8

    goto/16 :goto_3

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of a texture"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    instance-of v0, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_9

    goto/16 :goto_3

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of a color"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a

    goto/16 :goto_3

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of a float"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    instance-of v1, p2, [F

    if-eqz v1, :cond_b

    move-object v1, p2

    check-cast v1, [F

    array-length v1, v1

    if-ne v1, v0, :cond_b

    goto :goto_3

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of a float array [4]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    instance-of v0, p2, [F

    if-eqz v0, :cond_c

    move-object v0, p2

    check-cast v0, [F

    array-length v0, v0

    if-ne v0, v1, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of a float array [3]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    instance-of v0, p2, [F

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, [F

    array-length v0, v0

    if-ne v0, v2, :cond_10

    :cond_d
    :goto_3
    instance-of v0, p2, [F

    if-eqz v0, :cond_f

    check-cast p2, [F

    iget-object v0, v6, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, [F

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, [F

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_e

    check-cast v0, [F

    array-length v1, p2

    invoke-static {p2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_e
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v6, LVb/b;->f:Ljava/lang/Object;

    goto :goto_4

    :cond_f
    iput-object p2, v6, LVb/b;->f:Ljava/lang/Object;

    :goto_4
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->markTrackedParamDirtyByName(Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of a float array [2]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    add-int/2addr v5, v3

    goto/16 :goto_0

    :cond_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_7
        -0x4bcbd6a9 -> :sswitch_6
        -0x4bcbd6a8 -> :sswitch_5
        -0x2daefea3 -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->q0:LJAVARuntime/Component;

    return-void
.end method

.method public setShaderFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderFile"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    return-void
.end method

.method public setTime(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public storeVariables()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->U:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    if-eqz v2, :cond_c

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVb/b;

    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v5, v4, LVb/b;->f:Ljava/lang/Object;

    if-eqz v5, :cond_a

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>()V

    iget-object v6, v4, LVb/b;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    iget-object v6, v4, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "sampler2D"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_1
    const-string v8, "float"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_2
    const-string v8, "rgba"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_3
    const-string v8, "rgb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_4
    const-string v8, "float01"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_5
    const-string v8, "float4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_6
    const-string v8, "float3"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move v7, v0

    goto :goto_1

    :sswitch_7
    const-string v8, "float2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v7, v1

    :goto_1
    packed-switch v7, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid param type["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] at shader:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LJ4/d;->b2(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->InspectorString:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    instance-of v7, v4, Lub/g;

    if-eqz v7, :cond_9

    check-cast v4, Lub/g;

    invoke-virtual {v4}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v6

    :cond_9
    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    goto :goto_2

    :pswitch_2
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->FloatArray:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    check-cast v4, [F

    iput-object v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->farray_value:[F

    :cond_a
    :goto_2
    add-int/2addr v3, v0

    goto/16 :goto_0

    :cond_b
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->global_variables:Ljava/util/List;

    :cond_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_7
        -0x4bcbd6a9 -> :sswitch_6
        -0x4bcbd6a8 -> :sswitch_5
        -0x2daefea3 -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->q0:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/CustomPostProcessing;

    invoke-direct {v0, p0}, LJAVARuntime/CustomPostProcessing;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->q0:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateShaderPipeline(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 6
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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    const-string p2, ""

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->S:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->S:Ljava/lang/String;

    invoke-static {p1}, LX7/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, LIc/o;->h(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->findManifest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->U:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->U:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4, v5}, LVb/d;->f(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->validateTrackedParamsLimit()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->X:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->invalidateShaderForConfigError()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-static {}, LJ4/d;->E1()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    invoke-static {p1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->findCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Y:Ljava/lang/String;

    const-string v3, "Filament"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BEGIN-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->X:Z

    invoke-virtual {p0, p1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->setCustomShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->restoreVariables()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->markAllCustomParamsDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-static {}, LJ4/d;->E1()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to prepare material params from JSON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->S:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->U:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->X:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->markAllCustomParamsDirty()V

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->X:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->V:LSb/a;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->X:Z

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->W:Ljava/lang/String;

    new-instance p1, LSb/a;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$c;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;)V

    invoke-direct {p1, p2}, LSb/a;-><init>(LSb/a$b;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->V:LSb/a;

    invoke-virtual {p1}, LSb/a;->g()V

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->X:Z

    :cond_4
    return-void
.end method

.method public uploadDirtyParametersDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "unused1",
            "unused2",
            "unused3",
            "frameBuffer",
            "unused4",
            "dirtyMask"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_0

    const-string p3, "time"

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->Z:F

    invoke-virtual {p1, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    cmp-long p3, p3, v0

    if-eqz p3, :cond_1

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getResolutionWidth(LTb/a;)F

    move-result p3

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getResolutionHeight(LTb/a;)F

    move-result p4

    const-string p5, "resolution"

    invoke-virtual {p1, p5, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->e(Ljava/lang/String;FF)V

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getReservedTrackedSlotsCount()I

    move-result p3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getTrackedCustomParamCount()I

    move-result p4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->getMaxTrackedParams()I

    move-result p5

    sub-int/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    :goto_0
    if-ge p2, p4, :cond_5

    add-int p5, p3, p2

    invoke-virtual {p0, p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p5

    and-long/2addr p5, p7

    cmp-long p5, p5, v0

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LVb/b;

    if-eqz p5, :cond_4

    iget-boolean p6, p5, LVb/b;->e:Z

    if-eqz p6, :cond_4

    iget-object p6, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->writeCustomParamDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;LVb/b;)V

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public validateTrackedParamsLimit()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->getMaxTrackedParams()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getReservedTrackedSlotsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->getTrackedCustomParamCount()I

    move-result v1

    if-le v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shader has too many params ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Max supported is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for CustomPostProcessing."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeCustomParamDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;LVb/b;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "param"
        }
    .end annotation

    iget-object v0, p2, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v0, v6

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "sampler2D"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "float"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v7, "rgba"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v7, "bool"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v7, "rgb"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v7, "float01"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :sswitch_6
    const-string v7, "float4"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :sswitch_7
    const-string v7, "float3"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1

    :sswitch_8
    const-string v7, "float2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid param type["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] at shader:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, Lub/p;

    if-eqz v1, :cond_9

    check-cast v0, Lub/p;

    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    check-cast v0, Lub/p;

    goto :goto_5

    :cond_9
    iget-object v0, p2, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p2, LVb/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_2
    move v3, v6

    goto :goto_3

    :sswitch_9
    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :sswitch_a
    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_3

    :sswitch_b
    const-string v1, "filled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    move v3, v5

    :cond_c
    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    sget-object v0, Lyb/b;->h:Lub/p;

    goto :goto_5

    :pswitch_2
    sget-object v0, Lyb/b;->i:Lub/p;

    goto :goto_5

    :pswitch_3
    sget-object v0, Lyb/b;->g:Lub/p;

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_10

    iget-object p2, p2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->a(Ljava/lang/String;Lub/p;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    instance-of v6, v0, [F

    if-eqz v6, :cond_e

    check-cast v0, [F

    array-length v6, v0

    if-lt v6, v1, :cond_10

    iget-object v8, p2, LVb/b;->a:Ljava/lang/String;

    aget v9, v0, v5

    aget v10, v0, v4

    aget v11, v0, v3

    aget v12, v0, v2

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->g(Ljava/lang/String;FFFF)V

    goto/16 :goto_6

    :cond_e
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_10

    iget-object p2, p2, LVb/b;->a:Ljava/lang/String;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->c(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, [F

    if-eqz v1, :cond_f

    check-cast v0, [F

    array-length v1, v0

    if-lt v1, v2, :cond_10

    iget-object p2, p2, LVb/b;->a:Ljava/lang/String;

    aget v1, v0, v5

    aget v2, v0, v4

    aget v0, v0, v3

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->f(Ljava/lang/String;FFF)V

    goto/16 :goto_6

    :cond_f
    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p2, p2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->f(Ljava/lang/String;FFF)V

    goto :goto_6

    :pswitch_6
    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_10

    iget-object p2, p2, LVb/b;->a:Ljava/lang/String;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    goto :goto_6

    :pswitch_7
    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    instance-of v6, v0, [F

    if-eqz v6, :cond_10

    check-cast v0, [F

    array-length v6, v0

    if-lt v6, v1, :cond_10

    iget-object v8, p2, LVb/b;->a:Ljava/lang/String;

    aget v9, v0, v5

    aget v10, v0, v4

    aget v11, v0, v3

    aget v12, v0, v2

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->g(Ljava/lang/String;FFFF)V

    goto :goto_6

    :pswitch_8
    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, [F

    if-eqz v1, :cond_10

    check-cast v0, [F

    array-length v1, v0

    if-lt v1, v2, :cond_10

    iget-object p2, p2, LVb/b;->a:Ljava/lang/String;

    aget v1, v0, v5

    aget v2, v0, v4

    aget v0, v0, v3

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->f(Ljava/lang/String;FFF)V

    goto :goto_6

    :pswitch_9
    iget-object v0, p2, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, [F

    if-eqz v1, :cond_10

    check-cast v0, [F

    array-length v1, v0

    if-lt v1, v3, :cond_10

    iget-object p2, p2, LVb/b;->a:Ljava/lang/String;

    aget v1, v0, v5

    aget v0, v0, v4

    invoke-virtual {p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->e(Ljava/lang/String;FF)V

    :cond_10
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4bf7529e -> :sswitch_b
        0x5978fff -> :sswitch_a
        0x5c2854d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
