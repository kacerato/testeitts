.class public final enum Lcom/jme3/shader/UniformBinding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/shader/UniformBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shader/UniformBinding;

.field public static final enum AmbientLightColor:Lcom/jme3/shader/UniformBinding;

.field public static final enum Aspect:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraDirection:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraLeft:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraPosition:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraUp:Lcom/jme3/shader/UniformBinding;

.field public static final enum FrameRate:Lcom/jme3/shader/UniformBinding;

.field public static final enum FrustumNearFar:Lcom/jme3/shader/UniformBinding;

.field public static final enum LightColor:Lcom/jme3/shader/UniformBinding;

.field public static final enum LightDirection:Lcom/jme3/shader/UniformBinding;

.field public static final enum LightPosition:Lcom/jme3/shader/UniformBinding;

.field public static final enum NormalMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum NormalMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum ProjectionMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum ProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum Resolution:Lcom/jme3/shader/UniformBinding;

.field public static final enum ResolutionInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum Time:Lcom/jme3/shader/UniformBinding;

.field public static final enum Tpf:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewPort:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldMatrixInverseTranspose:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldNormalMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;


# instance fields
.field glslType:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/jme3/shader/UniformBinding;
    .locals 32

    sget-object v0, Lcom/jme3/shader/UniformBinding;->WorldMatrix:Lcom/jme3/shader/UniformBinding;

    sget-object v1, Lcom/jme3/shader/UniformBinding;->ViewMatrix:Lcom/jme3/shader/UniformBinding;

    sget-object v2, Lcom/jme3/shader/UniformBinding;->ProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    sget-object v3, Lcom/jme3/shader/UniformBinding;->WorldViewMatrix:Lcom/jme3/shader/UniformBinding;

    sget-object v4, Lcom/jme3/shader/UniformBinding;->NormalMatrix:Lcom/jme3/shader/UniformBinding;

    sget-object v5, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    sget-object v6, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    sget-object v7, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverseTranspose:Lcom/jme3/shader/UniformBinding;

    sget-object v8, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v9, Lcom/jme3/shader/UniformBinding;->ViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v10, Lcom/jme3/shader/UniformBinding;->ProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v11, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v12, Lcom/jme3/shader/UniformBinding;->WorldViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v13, Lcom/jme3/shader/UniformBinding;->NormalMatrixInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v14, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v15, Lcom/jme3/shader/UniformBinding;->ViewPort:Lcom/jme3/shader/UniformBinding;

    sget-object v16, Lcom/jme3/shader/UniformBinding;->FrustumNearFar:Lcom/jme3/shader/UniformBinding;

    sget-object v17, Lcom/jme3/shader/UniformBinding;->Resolution:Lcom/jme3/shader/UniformBinding;

    sget-object v18, Lcom/jme3/shader/UniformBinding;->ResolutionInverse:Lcom/jme3/shader/UniformBinding;

    sget-object v19, Lcom/jme3/shader/UniformBinding;->Aspect:Lcom/jme3/shader/UniformBinding;

    sget-object v20, Lcom/jme3/shader/UniformBinding;->CameraPosition:Lcom/jme3/shader/UniformBinding;

    sget-object v21, Lcom/jme3/shader/UniformBinding;->CameraDirection:Lcom/jme3/shader/UniformBinding;

    sget-object v22, Lcom/jme3/shader/UniformBinding;->CameraLeft:Lcom/jme3/shader/UniformBinding;

    sget-object v23, Lcom/jme3/shader/UniformBinding;->CameraUp:Lcom/jme3/shader/UniformBinding;

    sget-object v24, Lcom/jme3/shader/UniformBinding;->Time:Lcom/jme3/shader/UniformBinding;

    sget-object v25, Lcom/jme3/shader/UniformBinding;->Tpf:Lcom/jme3/shader/UniformBinding;

    sget-object v26, Lcom/jme3/shader/UniformBinding;->FrameRate:Lcom/jme3/shader/UniformBinding;

    sget-object v27, Lcom/jme3/shader/UniformBinding;->LightDirection:Lcom/jme3/shader/UniformBinding;

    sget-object v28, Lcom/jme3/shader/UniformBinding;->LightPosition:Lcom/jme3/shader/UniformBinding;

    sget-object v29, Lcom/jme3/shader/UniformBinding;->AmbientLightColor:Lcom/jme3/shader/UniformBinding;

    sget-object v30, Lcom/jme3/shader/UniformBinding;->LightColor:Lcom/jme3/shader/UniformBinding;

    sget-object v31, Lcom/jme3/shader/UniformBinding;->WorldNormalMatrix:Lcom/jme3/shader/UniformBinding;

    filled-new-array/range {v0 .. v31}, [Lcom/jme3/shader/UniformBinding;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldMatrix"

    const/4 v2, 0x0

    const-string v3, "mat4"

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldMatrix:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewMatrix"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewMatrix:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ProjectionMatrix"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewMatrix"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewMatrix:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "NormalMatrix"

    const/4 v2, 0x4

    const-string v4, "mat3"

    invoke-direct {v0, v1, v2, v4}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->NormalMatrix:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewProjectionMatrix"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewProjectionMatrix"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldMatrixInverseTranspose"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverseTranspose:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldMatrixInverse"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewMatrixInverse"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ProjectionMatrixInverse"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewProjectionMatrixInverse"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewMatrixInverse"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "NormalMatrixInverse"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->NormalMatrixInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewProjectionMatrixInverse"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewPort"

    const/16 v2, 0xf

    const-string v3, "vec4"

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewPort:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "FrustumNearFar"

    const/16 v2, 0x10

    const-string v5, "vec2"

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->FrustumNearFar:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Resolution"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Resolution:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ResolutionInverse"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ResolutionInverse:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Aspect"

    const/16 v2, 0x13

    const-string v5, "float"

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Aspect:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraPosition"

    const/16 v2, 0x14

    const-string v6, "vec3"

    invoke-direct {v0, v1, v2, v6}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraPosition:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraDirection"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v6}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraDirection:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraLeft"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v6}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraLeft:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraUp"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v6}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraUp:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Time"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Time:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Tpf"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Tpf:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "FrameRate"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->FrameRate:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "LightDirection"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->LightDirection:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "LightPosition"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->LightPosition:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "AmbientLightColor"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->AmbientLightColor:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "LightColor"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->LightColor:Lcom/jme3/shader/UniformBinding;

    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldNormalMatrix"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v4}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldNormalMatrix:Lcom/jme3/shader/UniformBinding;

    invoke-static {}, Lcom/jme3/shader/UniformBinding;->$values()[Lcom/jme3/shader/UniformBinding;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/UniformBinding;->$VALUES:[Lcom/jme3/shader/UniformBinding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/jme3/shader/UniformBinding;->glslType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shader/UniformBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/shader/UniformBinding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/shader/UniformBinding;

    return-object p0
.end method

.method public static values()[Lcom/jme3/shader/UniformBinding;
    .locals 1

    sget-object v0, Lcom/jme3/shader/UniformBinding;->$VALUES:[Lcom/jme3/shader/UniformBinding;

    invoke-virtual {v0}, [Lcom/jme3/shader/UniformBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/UniformBinding;

    return-object v0
.end method


# virtual methods
.method public getGlslType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/UniformBinding;->glslType:Ljava/lang/String;

    return-object v0
.end method
