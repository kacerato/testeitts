.class public final enum Lcom/jme3/shader/ShaderBufferBlock$BufferType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/ShaderBufferBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BufferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/shader/ShaderBufferBlock$BufferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shader/ShaderBufferBlock$BufferType;

.field public static final enum ShaderStorageBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

.field public static final enum UniformBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/shader/ShaderBufferBlock$BufferType;
    .locals 2

    sget-object v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->UniformBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    sget-object v1, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->ShaderStorageBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    filled-new-array {v0, v1}, [Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    const-string v1, "UniformBufferObject"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/ShaderBufferBlock$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->UniformBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    new-instance v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    const-string v1, "ShaderStorageBufferObject"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/ShaderBufferBlock$BufferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->ShaderStorageBufferObject:Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    invoke-static {}, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->$values()[Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->$VALUES:[Lcom/jme3/shader/ShaderBufferBlock$BufferType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shader/ShaderBufferBlock$BufferType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/shader/ShaderBufferBlock$BufferType;
    .locals 1

    sget-object v0, Lcom/jme3/shader/ShaderBufferBlock$BufferType;->$VALUES:[Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    invoke-virtual {v0}, [Lcom/jme3/shader/ShaderBufferBlock$BufferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/ShaderBufferBlock$BufferType;

    return-object v0
.end method
