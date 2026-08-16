.class synthetic Lcom/jme3/renderer/opengl/GLRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/opengl/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$material$RenderState$BlendEquation:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$BlendMode:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$TestFunction:[I

.field static final synthetic $SwitchMap$com$jme3$scene$Mesh$Mode:[I

.field static final synthetic $SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

.field static final synthetic $SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

.field static final synthetic $SwitchMap$com$jme3$shader$Shader$ShaderType:[I

.field static final synthetic $SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType:[I

.field static final synthetic $SwitchMap$com$jme3$shader$VarType:[I

.field static final synthetic $SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint:[I

.field static final synthetic $SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$MagFilter:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$MinFilter:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$Type:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$WrapMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    invoke-static {}, Lcom/jme3/scene/Mesh$Mode;->values()[Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v6, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v7, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v8, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v9, Lcom/jme3/scene/Mesh$Mode;->Patch:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->values()[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint:[I

    :try_start_8
    sget-object v9, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Dynamic:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint:[I

    sget-object v9, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Stream:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$AccessHint:[I

    sget-object v9, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Static:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;->values()[Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint:[I

    :try_start_b
    sget-object v9, Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;->Draw:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint:[I

    sget-object v9, Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;->Read:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$bufferobject$BufferObject$NatureHint:[I

    sget-object v9, Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;->Copy:Lcom/jme3/shader/bufferobject/BufferObject$NatureHint;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Format;->values()[Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    :try_start_e
    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->Byte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->Short:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->Int:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Format;->Double:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Usage;->values()[Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    :try_start_16
    sget-object v9, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    invoke-static {}, Lcom/jme3/texture/Texture$WrapMode;->values()[Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    :try_start_19
    sget-object v9, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v9, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v9, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v9, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v9, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-static {}, Lcom/jme3/texture/Texture$MinFilter;->values()[Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    :try_start_1e
    sget-object v9, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v9, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v9, Lcom/jme3/texture/Texture$MinFilter;->NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v9, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v9, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v9, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    invoke-static {}, Lcom/jme3/texture/Texture$MagFilter;->values()[Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    :try_start_24
    sget-object v9, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    sget-object v9, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    invoke-static {}, Lcom/jme3/texture/Texture$Type;->values()[Lcom/jme3/texture/Texture$Type;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    :try_start_26
    sget-object v9, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v9, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v9, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v9, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    invoke-static {}, Lcom/jme3/shader/Shader$ShaderType;->values()[Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    :try_start_2a
    sget-object v9, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v9, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v9, Lcom/jme3/shader/Shader$ShaderType;->Geometry:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v9, Lcom/jme3/shader/Shader$ShaderType;->TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v9, Lcom/jme3/shader/Shader$ShaderType;->TessellationEvaluation:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    invoke-static {}, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->values()[Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType:[I

    :try_start_2f
    sget-object v9, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->UniformBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$ShaderBufferBlock$BufferType:[I

    sget-object v9, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->ShaderStorageBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    invoke-static {}, Lcom/jme3/shader/VarType;->values()[Lcom/jme3/shader/VarType;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    :try_start_31
    sget-object v9, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v9, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v9, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v9, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v9, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v9, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v9, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v8, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v9, Lcom/jme3/shader/VarType;->IntArray:Lcom/jme3/shader/VarType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    const/16 v8, 0x9

    :try_start_39
    sget-object v9, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v10, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    const/16 v9, 0xa

    :try_start_3a
    sget-object v10, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v11, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    const/16 v10, 0xb

    :try_start_3b
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v12, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v12, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xc

    aput v13, v11, v12
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v12, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xd

    aput v13, v11, v12
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v12, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xe

    aput v13, v11, v12
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    invoke-static {}, Lcom/jme3/material/RenderState$TestFunction;->values()[Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    :try_start_3f
    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->Never:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->Less:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->Greater:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->GreaterOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->Equal:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->NotEqual:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$TestFunction:[I

    sget-object v12, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v7, v11, v12
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    invoke-static {}, Lcom/jme3/material/RenderState$StencilOperation;->values()[Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    :try_start_47
    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->Zero:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->Replace:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->Increment:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->IncrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->Decrement:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->DecrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$StencilOperation:[I

    sget-object v12, Lcom/jme3/material/RenderState$StencilOperation;->Invert:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v7, v11, v12
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    invoke-static {}, Lcom/jme3/material/RenderState$BlendFunc;->values()[Lcom/jme3/material/RenderState$BlendFunc;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    :try_start_4f
    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->Zero:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v5, v11, v12
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v6, v11, v12
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v7, v11, v12
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v8, v11, v12
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v9, v11, v12
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendFunc:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha_Saturate:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    invoke-static {}, Lcom/jme3/material/RenderState$BlendEquationAlpha;->values()[Lcom/jme3/material/RenderState$BlendEquationAlpha;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha:[I

    :try_start_5a
    sget-object v12, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Add:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Subtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquationAlpha;->ReverseSubtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Min:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquationAlpha:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Max:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    invoke-static {}, Lcom/jme3/material/RenderState$BlendEquation;->values()[Lcom/jme3/material/RenderState$BlendEquation;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquation:[I

    :try_start_5f
    sget-object v12, Lcom/jme3/material/RenderState$BlendEquation;->Add:Lcom/jme3/material/RenderState$BlendEquation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquation:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquation;->Subtract:Lcom/jme3/material/RenderState$BlendEquation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquation:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquation;->ReverseSubtract:Lcom/jme3/material/RenderState$BlendEquation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquation:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquation;->Min:Lcom/jme3/material/RenderState$BlendEquation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendEquation:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendEquation;->Max:Lcom/jme3/material/RenderState$BlendEquation;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    invoke-static {}, Lcom/jme3/material/RenderState$BlendMode;->values()[Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    :try_start_64
    sget-object v12, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendMode;->Additive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v11, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v12, Lcom/jme3/material/RenderState$BlendMode;->AlphaSumA:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v11, Lcom/jme3/material/RenderState$BlendMode;->PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v5, v4, v11
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v5, Lcom/jme3/material/RenderState$BlendMode;->Modulate:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v4, v5
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v5, Lcom/jme3/material/RenderState$BlendMode;->ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v7, v4, v5
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v5, Lcom/jme3/material/RenderState$BlendMode;->Color:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v8, v4, v5
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v5, Lcom/jme3/material/RenderState$BlendMode;->Screen:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v9, v4, v5
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v5, Lcom/jme3/material/RenderState$BlendMode;->Exclusion:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v10, v4, v5
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    invoke-static {}, Lcom/jme3/material/RenderState$FaceCullMode;->values()[Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    :try_start_6f
    sget-object v5, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v1, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v4, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v0, Lcom/jme3/renderer/opengl/GLRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    return-void
.end method
