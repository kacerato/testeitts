.class public final enum Lcom/jme3/shader/Shader$ShaderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/shader/Shader$ShaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shader/Shader$ShaderType;

.field public static final enum Fragment:Lcom/jme3/shader/Shader$ShaderType;

.field public static final enum Geometry:Lcom/jme3/shader/Shader$ShaderType;

.field public static final enum TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

.field public static final enum TessellationEvaluation:Lcom/jme3/shader/Shader$ShaderType;

.field public static final enum Vertex:Lcom/jme3/shader/Shader$ShaderType;


# instance fields
.field private extension:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/jme3/shader/Shader$ShaderType;
    .locals 5

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    sget-object v2, Lcom/jme3/shader/Shader$ShaderType;->Geometry:Lcom/jme3/shader/Shader$ShaderType;

    sget-object v3, Lcom/jme3/shader/Shader$ShaderType;->TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

    sget-object v4, Lcom/jme3/shader/Shader$ShaderType;->TessellationEvaluation:Lcom/jme3/shader/Shader$ShaderType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/jme3/shader/Shader$ShaderType;

    const/4 v1, 0x0

    const-string v2, "frag"

    const-string v3, "Fragment"

    invoke-direct {v0, v3, v1, v2}, Lcom/jme3/shader/Shader$ShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    new-instance v0, Lcom/jme3/shader/Shader$ShaderType;

    const/4 v1, 0x1

    const-string v2, "vert"

    const-string v3, "Vertex"

    invoke-direct {v0, v3, v1, v2}, Lcom/jme3/shader/Shader$ShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    new-instance v0, Lcom/jme3/shader/Shader$ShaderType;

    const/4 v1, 0x2

    const-string v2, "geom"

    const-string v3, "Geometry"

    invoke-direct {v0, v3, v1, v2}, Lcom/jme3/shader/Shader$ShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/Shader$ShaderType;->Geometry:Lcom/jme3/shader/Shader$ShaderType;

    new-instance v0, Lcom/jme3/shader/Shader$ShaderType;

    const/4 v1, 0x3

    const-string v2, "tsctrl"

    const-string v3, "TessellationControl"

    invoke-direct {v0, v3, v1, v2}, Lcom/jme3/shader/Shader$ShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/Shader$ShaderType;->TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

    new-instance v0, Lcom/jme3/shader/Shader$ShaderType;

    const/4 v1, 0x4

    const-string v2, "tseval"

    const-string v3, "TessellationEvaluation"

    invoke-direct {v0, v3, v1, v2}, Lcom/jme3/shader/Shader$ShaderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jme3/shader/Shader$ShaderType;->TessellationEvaluation:Lcom/jme3/shader/Shader$ShaderType;

    invoke-static {}, Lcom/jme3/shader/Shader$ShaderType;->$values()[Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/Shader$ShaderType;->$VALUES:[Lcom/jme3/shader/Shader$ShaderType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/jme3/shader/Shader$ShaderType;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shader/Shader$ShaderType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/shader/Shader$ShaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/shader/Shader$ShaderType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/shader/Shader$ShaderType;
    .locals 1

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->$VALUES:[Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0}, [Lcom/jme3/shader/Shader$ShaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/Shader$ShaderType;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/Shader$ShaderType;->extension:Ljava/lang/String;

    return-object v0
.end method
