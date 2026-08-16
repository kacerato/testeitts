.class public final enum Lcom/ardor3d/renderer/state/RenderState$StateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/renderer/state/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/state/RenderState$StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Blend:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Clip:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum ColorMask:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Fog:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum FragmentProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Light:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Material:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Offset:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Shading:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Stencil:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum VertexProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum Wireframe:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static final enum ZBuffer:Lcom/ardor3d/renderer/state/RenderState$StateType;

.field public static values:[Lcom/ardor3d/renderer/state/RenderState$StateType;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v1, "Blend"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Blend:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v2, "Fog"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/renderer/state/RenderState$StateType;->Fog:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v2, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v3, "Light"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/renderer/state/RenderState$StateType;->Light:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v3, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v4, "Material"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/renderer/state/RenderState$StateType;->Material:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v4, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v5, "Shading"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/renderer/state/RenderState$StateType;->Shading:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v5, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v6, "Texture"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/renderer/state/RenderState$StateType;->Texture:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v6, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v7, "Wireframe"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/renderer/state/RenderState$StateType;->Wireframe:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v7, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v8, "ZBuffer"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/renderer/state/RenderState$StateType;->ZBuffer:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v8, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v9, "Cull"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ardor3d/renderer/state/RenderState$StateType;->Cull:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v9, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v10, "VertexProgram"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ardor3d/renderer/state/RenderState$StateType;->VertexProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v10, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v11, "FragmentProgram"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ardor3d/renderer/state/RenderState$StateType;->FragmentProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v11, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v12, "Stencil"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ardor3d/renderer/state/RenderState$StateType;->Stencil:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v12, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v13, "GLSLShader"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ardor3d/renderer/state/RenderState$StateType;->GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v13, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v14, "ColorMask"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ardor3d/renderer/state/RenderState$StateType;->ColorMask:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v14, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v15, "Clip"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ardor3d/renderer/state/RenderState$StateType;->Clip:Lcom/ardor3d/renderer/state/RenderState$StateType;

    new-instance v15, Lcom/ardor3d/renderer/state/RenderState$StateType;

    const-string v13, "Offset"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/ardor3d/renderer/state/RenderState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ardor3d/renderer/state/RenderState$StateType;->Offset:Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->$VALUES:[Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-static {}, Lcom/ardor3d/renderer/state/RenderState$StateType;->values()[Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->values:[Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->$VALUES:[Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/state/RenderState$StateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method
