.class public final enum Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/bufferobject/BufferObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

.field public static final enum CpuOnly:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

.field public static final enum Dynamic:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

.field public static final enum Static:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

.field public static final enum Stream:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;


# direct methods
.method private static synthetic $values()[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;
    .locals 4

    sget-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Static:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    sget-object v1, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Stream:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    sget-object v2, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Dynamic:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    sget-object v3, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->CpuOnly:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    const-string v1, "Static"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Static:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    new-instance v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    const-string v1, "Stream"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Stream:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    new-instance v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    const-string v1, "Dynamic"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->Dynamic:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    new-instance v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    const-string v1, "CpuOnly"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->CpuOnly:Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-static {}, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->$values()[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    move-result-object v0

    sput-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->$VALUES:[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    return-object p0
.end method

.method public static values()[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;
    .locals 1

    sget-object v0, Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->$VALUES:[Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    invoke-virtual {v0}, [Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/bufferobject/BufferObject$AccessHint;

    return-object v0
.end method
