.class public final enum Lcom/jme3/opencl/Device$DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/opencl/Device$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/opencl/Device$DeviceType;

.field public static final enum ACCELEARTOR:Lcom/jme3/opencl/Device$DeviceType;

.field public static final enum ALL:Lcom/jme3/opencl/Device$DeviceType;

.field public static final enum CPU:Lcom/jme3/opencl/Device$DeviceType;

.field public static final enum DEFAULT:Lcom/jme3/opencl/Device$DeviceType;

.field public static final enum GPU:Lcom/jme3/opencl/Device$DeviceType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/opencl/Device$DeviceType;
    .locals 5

    sget-object v0, Lcom/jme3/opencl/Device$DeviceType;->DEFAULT:Lcom/jme3/opencl/Device$DeviceType;

    sget-object v1, Lcom/jme3/opencl/Device$DeviceType;->CPU:Lcom/jme3/opencl/Device$DeviceType;

    sget-object v2, Lcom/jme3/opencl/Device$DeviceType;->GPU:Lcom/jme3/opencl/Device$DeviceType;

    sget-object v3, Lcom/jme3/opencl/Device$DeviceType;->ACCELEARTOR:Lcom/jme3/opencl/Device$DeviceType;

    sget-object v4, Lcom/jme3/opencl/Device$DeviceType;->ALL:Lcom/jme3/opencl/Device$DeviceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/jme3/opencl/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/opencl/Device$DeviceType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Device$DeviceType;->DEFAULT:Lcom/jme3/opencl/Device$DeviceType;

    new-instance v0, Lcom/jme3/opencl/Device$DeviceType;

    const-string v1, "CPU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Device$DeviceType;->CPU:Lcom/jme3/opencl/Device$DeviceType;

    new-instance v0, Lcom/jme3/opencl/Device$DeviceType;

    const-string v1, "GPU"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Device$DeviceType;->GPU:Lcom/jme3/opencl/Device$DeviceType;

    new-instance v0, Lcom/jme3/opencl/Device$DeviceType;

    const-string v1, "ACCELEARTOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Device$DeviceType;->ACCELEARTOR:Lcom/jme3/opencl/Device$DeviceType;

    new-instance v0, Lcom/jme3/opencl/Device$DeviceType;

    const-string v1, "ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/Device$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/Device$DeviceType;->ALL:Lcom/jme3/opencl/Device$DeviceType;

    invoke-static {}, Lcom/jme3/opencl/Device$DeviceType;->$values()[Lcom/jme3/opencl/Device$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/Device$DeviceType;->$VALUES:[Lcom/jme3/opencl/Device$DeviceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/opencl/Device$DeviceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/opencl/Device$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/opencl/Device$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/opencl/Device$DeviceType;
    .locals 1

    sget-object v0, Lcom/jme3/opencl/Device$DeviceType;->$VALUES:[Lcom/jme3/opencl/Device$DeviceType;

    invoke-virtual {v0}, [Lcom/jme3/opencl/Device$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/opencl/Device$DeviceType;

    return-object v0
.end method
