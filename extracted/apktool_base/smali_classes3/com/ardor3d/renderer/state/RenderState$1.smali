.class synthetic Lcom/ardor3d/renderer/state/RenderState$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ardor3d/renderer/state/RenderState$StateType;->values()[Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    :try_start_0
    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Blend:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Clip:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->ColorMask:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Fog:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->FragmentProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Light:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Material:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Offset:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Shading:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Stencil:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->VertexProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Wireframe:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$1;->$SwitchMap$com$ardor3d$renderer$state$RenderState$StateType:[I

    sget-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->ZBuffer:Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
