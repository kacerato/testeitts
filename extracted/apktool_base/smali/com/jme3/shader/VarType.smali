.class public final enum Lcom/jme3/shader/VarType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/shader/VarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shader/VarType;

.field public static final enum Boolean:Lcom/jme3/shader/VarType;

.field public static final enum Float:Lcom/jme3/shader/VarType;

.field public static final enum FloatArray:Lcom/jme3/shader/VarType;

.field public static final enum Image2D:Lcom/jme3/shader/VarType;

.field public static final enum Image3D:Lcom/jme3/shader/VarType;

.field public static final enum Int:Lcom/jme3/shader/VarType;

.field public static final enum IntArray:Lcom/jme3/shader/VarType;

.field public static final enum Matrix3:Lcom/jme3/shader/VarType;

.field public static final enum Matrix3Array:Lcom/jme3/shader/VarType;

.field public static final enum Matrix4:Lcom/jme3/shader/VarType;

.field public static final enum Matrix4Array:Lcom/jme3/shader/VarType;

.field public static final enum ShaderStorageBufferObject:Lcom/jme3/shader/VarType;

.field public static final enum Texture2D:Lcom/jme3/shader/VarType;

.field public static final enum Texture3D:Lcom/jme3/shader/VarType;

.field public static final enum TextureArray:Lcom/jme3/shader/VarType;

.field public static final enum TextureBuffer:Lcom/jme3/shader/VarType;

.field public static final enum TextureCubeMap:Lcom/jme3/shader/VarType;

.field public static final enum UniformBufferObject:Lcom/jme3/shader/VarType;

.field public static final enum Vector2:Lcom/jme3/shader/VarType;

.field public static final enum Vector2Array:Lcom/jme3/shader/VarType;

.field public static final enum Vector3:Lcom/jme3/shader/VarType;

.field public static final enum Vector3Array:Lcom/jme3/shader/VarType;

.field public static final enum Vector4:Lcom/jme3/shader/VarType;

.field public static final enum Vector4Array:Lcom/jme3/shader/VarType;


# instance fields
.field private final glslType:Ljava/lang/String;

.field private imageType:Z

.field private final javaTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private textureType:Z

.field private usesMultiData:Z


# direct methods
.method private static synthetic $values()[Lcom/jme3/shader/VarType;
    .locals 24

    sget-object v0, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    sget-object v1, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    sget-object v2, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    sget-object v3, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    sget-object v4, Lcom/jme3/shader/VarType;->IntArray:Lcom/jme3/shader/VarType;

    sget-object v5, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    sget-object v6, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    sget-object v7, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    sget-object v8, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    sget-object v9, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    sget-object v10, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    sget-object v11, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    sget-object v12, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    sget-object v13, Lcom/jme3/shader/VarType;->Matrix3Array:Lcom/jme3/shader/VarType;

    sget-object v14, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    sget-object v15, Lcom/jme3/shader/VarType;->TextureBuffer:Lcom/jme3/shader/VarType;

    sget-object v16, Lcom/jme3/shader/VarType;->Texture2D:Lcom/jme3/shader/VarType;

    sget-object v17, Lcom/jme3/shader/VarType;->Texture3D:Lcom/jme3/shader/VarType;

    sget-object v18, Lcom/jme3/shader/VarType;->TextureArray:Lcom/jme3/shader/VarType;

    sget-object v19, Lcom/jme3/shader/VarType;->TextureCubeMap:Lcom/jme3/shader/VarType;

    sget-object v20, Lcom/jme3/shader/VarType;->Image2D:Lcom/jme3/shader/VarType;

    sget-object v21, Lcom/jme3/shader/VarType;->Image3D:Lcom/jme3/shader/VarType;

    sget-object v22, Lcom/jme3/shader/VarType;->UniformBufferObject:Lcom/jme3/shader/VarType;

    sget-object v23, Lcom/jme3/shader/VarType;->ShaderStorageBufferObject:Lcom/jme3/shader/VarType;

    filled-new-array/range {v0 .. v23}, [Lcom/jme3/shader/VarType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/jme3/shader/VarType;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Float"

    const/4 v3, 0x0

    const-string v4, "float"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/math/Vector2f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Vector2"

    const/4 v4, 0x1

    const-string v5, "vec2"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/math/Vector3f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Vector3"

    const/4 v4, 0x2

    const-string v5, "vec3"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/math/Vector4f;

    const-class v2, Lcom/jme3/math/ColorRGBA;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Vector4"

    const/4 v4, 0x3

    const-string v5, "vec4"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, [I

    const-class v2, [Ljava/lang/Integer;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v12

    const-string v7, "IntArray"

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "int"

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->IntArray:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, [F

    const-class v2, [Ljava/lang/Float;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v19

    const-string v14, "FloatArray"

    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v18, "float"

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, [Lcom/jme3/math/Vector2f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v10

    const-string v5, "Vector2Array"

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "vec2"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, [Lcom/jme3/math/Vector3f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v17

    const-string v12, "Vector3Array"

    const/4 v13, 0x7

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v16, "vec3"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, [Lcom/jme3/math/Vector4f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v10

    const-string v5, "Vector4Array"

    const/16 v6, 0x8

    const-string v9, "vec4"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Int"

    const/16 v4, 0x9

    const-string v5, "int"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Boolean"

    const/16 v4, 0xa

    const-string v5, "bool"

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/math/Matrix3f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v12

    const-string v7, "Matrix3"

    const/16 v8, 0xb

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "mat3"

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/math/Matrix4f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v19

    const-string v14, "Matrix4"

    const/16 v15, 0xc

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v18, "mat4"

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, [Lcom/jme3/math/Matrix3f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v10

    const-string v5, "Matrix3Array"

    const/16 v6, 0xd

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "mat3"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix3Array:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, [Lcom/jme3/math/Matrix4f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v17

    const-string v12, "Matrix4Array"

    const/16 v13, 0xe

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v16, "mat4"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v9, "sampler1D|sampler1DShadow"

    new-array v10, v3, [Ljava/lang/Class;

    const-string v5, "TextureBuffer"

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->TextureBuffer:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/texture/Texture2D;

    const-class v2, Lcom/jme3/texture/Texture;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v17

    const-string v12, "Texture2D"

    const/16 v13, 0x10

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v16, "sampler2D|sampler2DShadow"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Texture2D:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/texture/Texture3D;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v9

    const-string v4, "Texture3D"

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "sampler3D"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Texture3D:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/texture/TextureArray;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v16

    const-string v11, "TextureArray"

    const/16 v12, 0x12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "sampler2DArray|sampler2DArrayShadow"

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->TextureArray:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/texture/TextureCubeMap;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v9

    const-string v4, "TextureCubeMap"

    const/16 v5, 0x13

    const-string v8, "samplerCube"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->TextureCubeMap:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/texture/TextureImage;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v17

    const-string v11, "Image2D"

    const/16 v12, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v16, "image2D"

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Image2D:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v8, "image3D"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v9

    const-string v3, "Image3D"

    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->Image3D:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-class v1, Lcom/jme3/shader/bufferobject/BufferObject;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v16

    const-string v11, "UniformBufferObject"

    const/16 v12, 0x16

    const-string v15, "custom"

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->UniformBufferObject:Lcom/jme3/shader/VarType;

    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v7, "custom"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v8

    const-string v3, "ShaderStorageBufferObject"

    const/16 v4, 0x17

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/jme3/shader/VarType;->ShaderStorageBufferObject:Lcom/jme3/shader/VarType;

    invoke-static {}, Lcom/jme3/shader/VarType;->$values()[Lcom/jme3/shader/VarType;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/VarType;->$VALUES:[Lcom/jme3/shader/VarType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/jme3/shader/VarType;->usesMultiData:Z

    .line 3
    iput-boolean p1, p0, Lcom/jme3/shader/VarType;->textureType:Z

    .line 4
    iput-boolean p1, p0, Lcom/jme3/shader/VarType;->imageType:Z

    .line 5
    iput-object p3, p0, Lcom/jme3/shader/VarType;->glslType:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 6
    iput-object p4, p0, Lcom/jme3/shader/VarType;->javaTypes:[Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_0
    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Lcom/jme3/shader/VarType;->javaTypes:[Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/jme3/shader/VarType;->imageType:Z

    .line 10
    iput-boolean p3, p0, Lcom/jme3/shader/VarType;->usesMultiData:Z

    .line 11
    iput-boolean p4, p0, Lcom/jme3/shader/VarType;->textureType:Z

    .line 12
    iput-object p5, p0, Lcom/jme3/shader/VarType;->glslType:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 13
    iput-object p6, p0, Lcom/jme3/shader/VarType;->javaTypes:[Ljava/lang/Class;

    goto :goto_0

    .line 14
    :cond_0
    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Lcom/jme3/shader/VarType;->javaTypes:[Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZLjava/lang/String;[Ljava/lang/Class;)V

    .line 16
    iput-boolean p5, p0, Lcom/jme3/shader/VarType;->imageType:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shader/VarType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/shader/VarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/shader/VarType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/shader/VarType;
    .locals 1

    sget-object v0, Lcom/jme3/shader/VarType;->$VALUES:[Lcom/jme3/shader/VarType;

    invoke-virtual {v0}, [Lcom/jme3/shader/VarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/VarType;

    return-object v0
.end method


# virtual methods
.method public getGlslType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/VarType;->glslType:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaType()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/shader/VarType;->javaTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public isImageType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/VarType;->imageType:Z

    return v0
.end method

.method public isOfType(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/jme3/shader/VarType;->javaTypes:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isTextureType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/VarType;->textureType:Z

    return v0
.end method

.method public usesMultiData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/shader/VarType;->usesMultiData:Z

    return v0
.end method
