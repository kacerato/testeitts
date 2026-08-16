.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final W:Ljava/lang/String; = "CustomVFXEffect"

.field public static final X:Ljava/lang/Class;

.field public static final Y:Ljava/lang/String; = "void vfx_fn_fragment(inout VFXMaterialInputs material, VFXEmitter emitter) {\n}\n"

.field public static final Z:Ljava/lang/String; = "void vfx_fn_subMaterial(inout SubMaterialData smData, VFXEmitter emitter) {\n}\n"

.field public static final q0:Ljava/lang/String; = "void vfx_fn_vertex(inout MaterialVertexInputs v, VFXEmitter emitter) {\n}\n"

.field public static final v0:Ljava/lang/String; = "time"


# instance fields
.field public N:Ljava/lang/String;

.field public final O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LVb/b;",
            ">;"
        }
    .end annotation
.end field

.field public P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:F

.field public V:LJAVARuntime/Component;

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

.field private shaderFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->X:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$c;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->buildUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomVFXEffect"

    invoke-direct {p0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    .line 4
    const-string v0, "void vfx_fn_fragment(inout VFXMaterialInputs material, VFXEmitter emitter) {\n}\n"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->Q:Ljava/lang/String;

    .line 5
    const-string v0, "void vfx_fn_subMaterial(inout SubMaterialData smData, VFXEmitter emitter) {\n}\n"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->R:Ljava/lang/String;

    .line 6
    const-string v0, "void vfx_fn_vertex(inout MaterialVertexInputs v, VFXEmitter emitter) {\n}\n"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->S:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderFile"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->buildUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setUID(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->validateParamType(LVb/b;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParam(LVb/b;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;I)[F
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->ensureArray(LVb/b;I)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParamOnEngine(LVb/b;)V

    return-void
.end method

.method private static buildUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderFile"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide v0, 0x3ffffffffffe5L

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x1f

    mul-long/2addr v0, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomVFX_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "N"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, "CustomVFXEffect"

    return-object p0
.end method

.method private checkedArray(Ljava/lang/Object;ILjava/lang/String;)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "size",
            "type"
        }
    .end annotation

    instance-of v0, p1, [F

    if-eqz v0, :cond_0

    check-cast p1, [F

    array-length v0, p1

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Param of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " needs a value of a float array ["

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private colorToArray(Ljava/lang/Object;ILjava/lang/String;)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "size",
            "type"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    instance-of v5, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v5, :cond_1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-ne p2, v4, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    new-array v4, v4, [F

    aput p2, v4, v3

    aput p3, v4, v2

    aput v5, v4, v1

    aput p1, v4, v0

    return-object v4

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p1

    new-array v0, v0, [F

    aput p2, v0, v3

    aput p3, v0, v2

    aput p1, v0, v1

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->checkedArray(Ljava/lang/Object;ILjava/lang/String;)[F

    move-result-object p1

    return-object p1
.end method

.method private ensureArray(LVb/b;I)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "size"
        }
    .end annotation

    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, [F

    if-eqz v1, :cond_0

    check-cast v0, [F

    array-length v0, v0

    if-ge v0, p2, :cond_1

    :cond_0
    new-array p2, p2, [F

    iput-object p2, p1, LVb/b;->f:Ljava/lang/Object;

    :cond_1
    iget-object p1, p1, LVb/b;->f:Ljava/lang/Object;

    check-cast p1, [F

    return-object p1
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->lambda$getInspectorEntries$2(LVb/b;)V

    return-void
.end method

.method private findTaggedBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "tag"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_0

    if-le v1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VFX shader missing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " block"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->lambda$getInspectorEntries$0(LVb/b;)V

    return-void
.end method

.method private hasErrors()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->lambda$getInspectorEntries$1(LVb/b;)V

    return-void
.end method

.method private isReservedDynamicParamName(Ljava/lang/String;)Z
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

    move-result p1

    return p1
.end method

.method private synthetic lambda$getInspectorEntries$0(LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParamOnEngine(LVb/b;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$1(LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParamOnEngine(LVb/b;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$2(LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParamOnEngine(LVb/b;)V

    return-void
.end method

.method private loadShaderData()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    const-string v0, "void vfx_fn_fragment(inout VFXMaterialInputs material, VFXEmitter emitter) {\n}\n"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->Q:Ljava/lang/String;

    const-string v1, "void vfx_fn_vertex(inout MaterialVertexInputs v, VFXEmitter emitter) {\n}\n"

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->S:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    invoke-static {v2}, LX7/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, LIc/o;->h(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "-MANIFEST-"

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->findTaggedBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    if-nez v3, :cond_1

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->prepareVFXParams(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "-FRAGMENT SHADER-"

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->findTaggedBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->Q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :try_start_2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->Q:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    const-string v0, "-SUB MATERIAL SHADER-"

    invoke-direct {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->findTaggedBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->R:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    :try_start_4
    const-string v0, "void vfx_fn_subMaterial(inout SubMaterialData smData, VFXEmitter emitter) {\n}\n"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->R:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    const-string v0, "-VERTEX SHADER-"

    invoke-direct {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->findTaggedBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->S:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    :try_start_6
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->S:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->restoreVariables()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParams()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    goto :goto_5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load VFX shader file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-static {}, LJ4/d;->E1()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load VFX shader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ4/d;->M1(Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_3
    :goto_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method

.method private prepareVFXParams(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "outParams",
            "debugIpp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;",
            "Ljava/util/List<",
            "LVb/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private sendParam(LVb/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    const/4 v0, 0x4

    iget-object v1, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "float"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v7, "rgba"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_2
    const-string v7, "bool"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_3
    const-string v7, "rgb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_4
    const-string v7, "int"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v6, v0

    goto :goto_0

    :sswitch_5
    const-string v7, "float01"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v6, v2

    goto :goto_0

    :sswitch_6
    const-string v7, "float4"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v6, v3

    goto :goto_0

    :sswitch_7
    const-string v7, "float3"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v6, v4

    goto :goto_0

    :sswitch_8
    const-string v7, "float2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v6, v5

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_9

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setI1Param(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, LVb/b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_9

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->ensureArray(LVb/b;I)[F

    move-result-object v0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    aget v5, v0, v5

    aget v4, v0, v4

    aget v3, v0, v3

    aget v0, v0, v2

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF4Param(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->ensureArray(LVb/b;I)[F

    move-result-object v0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget v2, v0, v5

    aget v4, v0, v4

    aget v0, v0, v3

    invoke-direct {v1, v2, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF3Param(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->ensureArray(LVb/b;I)[F

    move-result-object v0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    aget v2, v0, v5

    aget v0, v0, v4

    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF2Param(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x197ef -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sendParamOnEngine(LVb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$e;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendParams()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendTimeParam()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVb/b;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, LVb/b;->e:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParam(LVb/b;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sendTimeParam()V
    .locals 2

    const-string v0, "time"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->U:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setF1Param(Ljava/lang/String;F)V

    return-void
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private uniformTypeFrom(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$r;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "float"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "rgba"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "bool"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "rgb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "float01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "float4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "float3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "float2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->INT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x197ef -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateShaderPipeline(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyScene"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->N:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p0}, Loc/a;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->N:Ljava/lang/String;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->buildUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->setUID(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->loadShaderData()V

    if-eqz p1, :cond_3

    invoke-static {p0}, Loc/a;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)V

    invoke-static {}, Loc/a;->r()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParams()V

    :cond_3
    return-void
.end method

.method private validateParamType(LVb/b;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "debugIpp"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p1, LVb/b;->b:Ljava/lang/String;

    const-string v2, "sampler2D"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "] at shader:"

    if-nez v1, :cond_a

    const-string v1, "samplerCube"

    iget-object v4, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "float"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "rgba"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_2
    const-string v5, "bool"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_3
    const-string v5, "rgb"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_4
    const-string v5, "int"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "float01"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_6
    const-string v5, "float4"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_7
    const-string v5, "float3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v4, v0

    goto :goto_0

    :sswitch_8
    const-string v5, "float2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Invalid param type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    invoke-static {}, LJ4/d;->E1()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    return v2

    :pswitch_0
    return v0

    :cond_a
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VFX shader does not support texture parameters yet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    invoke-static {}, LJ4/d;->E1()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid VFX shader param type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x197ef -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    :cond_0
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->U:F

    return-void
.end method

.method public getConstructor()Loc/c;
    .locals 5

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getConstructor()Loc/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "void vfx_fn_vertex(inout MaterialVertexInputs v, VFXEmitter emitter) {\n}\n"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->S:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Loc/c;->r(Ljava/lang/String;)Loc/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "void vfx_fn_fragment(inout VFXMaterialInputs material, VFXEmitter emitter) {\n}\n"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->Q:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Loc/c;->p(Ljava/lang/String;)Loc/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "void vfx_fn_subMaterial(inout SubMaterialData smData, VFXEmitter emitter) {\n}\n"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->R:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Loc/c;->q(Ljava/lang/String;)Loc/c;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "time"

    invoke-virtual {v0, v1, v2, v3}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->hasErrors()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVb/b;

    if-eqz v2, :cond_4

    iget-boolean v3, v2, LVb/b;->e:Z

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v3, v2, LVb/b;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->uniformTypeFrom(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v2, LVb/b;->c:Ljava/lang/String;

    invoke-static {v4}, LVb/d;->e(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    iget-object v2, v2, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Loc/c;->a(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

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
    .locals 11
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

    const/4 p1, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$f;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;)V

    sget-object v7, LC5/b$a;->InputFile:LC5/b$a;

    const-string v8, ".vfxs"

    const-string v9, "VFX shader file"

    invoke-direct {v5, v6, v9, v7, v8}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->hasErrors()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance p1, LC5/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->T:Ljava/lang/String;

    const/16 v1, 0xc

    const v2, 0x7f05012d

    invoke-direct {p1, v0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    move v5, v3

    :goto_0
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LVb/b;

    if-eqz v6, :cond_b

    iget-boolean v7, v6, LVb/b;->e:Z

    if-eqz v7, :cond_b

    iget-object v7, v6, LVb/b;->a:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v7, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "float"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "rgba"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_2
    const-string v10, "bool"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_3
    const-string v10, "rgb"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_4
    const-string v10, "int"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    move v9, p1

    goto :goto_1

    :sswitch_5
    const-string v10, "float01"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    move v9, v0

    goto :goto_1

    :sswitch_6
    const-string v10, "float4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    move v9, v1

    goto :goto_1

    :sswitch_7
    const-string v10, "float3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    move v9, v2

    goto :goto_1

    :sswitch_8
    const-string v10, "float2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_1

    :cond_a
    move v9, v3

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$i;

    invoke-direct {v8, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    iget-object v9, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v7, v8, v9, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v8, p0, v6, v9}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;

    invoke-direct {v8, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    iget-object v9, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v7, v8, v9, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v8, p0, v6, v9}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$k;

    invoke-direct {v8, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v7, v8, v6, v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$h;

    invoke-direct {v8, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    iget-object v9, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v7, v8, v9, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v8, p0, v6, v9}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$a;

    invoke-direct {v8, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v7, v8, v6, v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$j;

    invoke-direct {v8, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    iget-object v9, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v10, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v7, v8, v9, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v8, p0, v6, v9}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, v6, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->ensureArray(LVb/b;I)[F

    move-result-object v7

    iget-object v9, v6, LVb/b;->a:Ljava/lang/String;

    new-instance v10, LA9/a;

    invoke-direct {v10, p0, v6}, LA9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    invoke-static {v9, v7, v8, v10}, LF5/c;->V(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, v6, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->ensureArray(LVb/b;I)[F

    move-result-object v7

    iget-object v9, v6, LVb/b;->a:Ljava/lang/String;

    new-instance v10, LA9/b;

    invoke-direct {v10, p0, v6}, LA9/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    invoke-static {v9, v7, v8, v10}, LF5/c;->P(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v8, p0, v6, v9}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_8
    invoke-direct {p0, v6, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->ensureArray(LVb/b;I)[F

    move-result-object v7

    iget-object v9, v6, LVb/b;->a:Ljava/lang/String;

    new-instance v10, LA9/c;

    invoke-direct {v10, p0, v6}, LA9/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;LVb/b;)V

    invoke-static {v9, v7, v8, v10}, LF5/c;->C(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, LVb/b;->a:Ljava/lang/String;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC2:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v8, p0, v6, v9}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    add-int/2addr v5, v2

    goto/16 :goto_0

    :cond_c
    :goto_3
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x197ef -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
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

.method public getMaxSimultaneousEmitters()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    iget v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;->max_simultaneous_emitters:I

    invoke-static {v0}, Loc/a;->c(I)I

    move-result v0

    return v0
.end method

.method public getShaderFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->U:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "CustomVFXEffect"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAttach()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->updateShaderPipeline(Z)V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParams()V

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParams()V

    :cond_0
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->updateShaderPipeline(Z)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->U:F

    invoke-static {}, LK8/d;->b()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->U:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendTimeParam()V

    return-void
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of p1, p1, Lo9/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->storeVariables()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->reload()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->N:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    invoke-static {}, Loc/a;->r()V

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomVFXEffect: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public restoreVariables()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVb/b;

    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect$b;->a:[I

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
    iget v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    return-void
.end method

.method public reuploadParams()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->reuploadParams()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParams()V

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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->storeVariables()V

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

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;I)V
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

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Z)V
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

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setParamInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
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

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LVb/b;

    iget-boolean v7, v6, LVb/b;->e:Z

    if-eqz v7, :cond_f

    iget-object v7, v6, LVb/b;->a:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, v6, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object p1, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v5, "Param of type "

    const/4 v7, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v1, v7

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "float"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "rgba"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_2
    const-string v1, "bool"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_3
    const-string v1, "rgb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_4
    const-string v1, "int"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :sswitch_5
    const-string v1, "float01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :sswitch_6
    const-string v1, "float4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2

    :sswitch_7
    const-string v4, "float3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :sswitch_8
    const-string v1, "float2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v4

    :cond_8
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, v6, LVb/b;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->colorToArray(Ljava/lang/Object;ILjava/lang/String;)[F

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_1
    instance-of p1, p2, Ljava/lang/Boolean;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_a
    instance-of p1, p2, Ljava/lang/Number;

    if-eqz p1, :cond_c

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_b

    move v0, v1

    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a boolean value"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    iget-object p1, v6, LVb/b;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->colorToArray(Ljava/lang/Object;ILjava/lang/String;)[F

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3
    instance-of p1, p2, Ljava/lang/Number;

    if-eqz p1, :cond_d

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of an int"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    instance-of p1, p2, Ljava/lang/Number;

    if-eqz p1, :cond_e

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a value of a float"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    iget-object p1, v6, LVb/b;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->checkedArray(Ljava/lang/Object;ILjava/lang/String;)[F

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto :goto_4

    :pswitch_6
    iget-object p1, v6, LVb/b;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->checkedArray(Ljava/lang/Object;ILjava/lang/String;)[F

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    goto :goto_4

    :pswitch_7
    iget-object p1, v6, LVb/b;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->checkedArray(Ljava/lang/Object;ILjava/lang/String;)[F

    move-result-object p1

    iput-object p1, v6, LVb/b;->f:Ljava/lang/Object;

    :goto_4
    invoke-direct {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendParam(LVb/b;)V

    return-void

    :cond_f
    add-int/2addr v5, v1

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
        0x197ef -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->V:LJAVARuntime/Component;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->shaderFile:Ljava/lang/String;

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->U:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->sendTimeParam()V

    return-void
.end method

.method public storeVariables()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->P:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    if-eqz v2, :cond_c

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->O:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVb/b;

    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->isReservedDynamicParamName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

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
    const-string v8, "float"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "rgba"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_2
    const-string v8, "bool"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_3
    const-string v8, "rgb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_4
    const-string v8, "int"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_5
    const-string v8, "float01"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_6
    const-string v8, "float4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_7
    const-string v8, "float3"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v7, v0

    goto :goto_1

    :sswitch_8
    const-string v8, "float2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    move v7, v1

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Int:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    goto :goto_2

    :pswitch_1
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    goto :goto_2

    :pswitch_2
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->FloatArray:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    check-cast v4, [F

    iput-object v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->farray_value:[F

    :goto_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/2addr v3, v0

    goto/16 :goto_0

    :cond_b
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->global_variables:Ljava/util/List;

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x197ef -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->V:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/CustomVFXEffect;

    invoke-direct {v0, p0}, LJAVARuntime/CustomVFXEffect;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->V:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
