.class public final enum Lcom/jme3/opencl/MappingAccess;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/opencl/MappingAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/opencl/MappingAccess;

.field public static final enum MAP_READ_ONLY:Lcom/jme3/opencl/MappingAccess;

.field public static final enum MAP_READ_WRITE:Lcom/jme3/opencl/MappingAccess;

.field public static final enum MAP_WRITE_INVALIDATE:Lcom/jme3/opencl/MappingAccess;

.field public static final enum MAP_WRITE_ONLY:Lcom/jme3/opencl/MappingAccess;


# direct methods
.method private static synthetic $values()[Lcom/jme3/opencl/MappingAccess;
    .locals 4

    sget-object v0, Lcom/jme3/opencl/MappingAccess;->MAP_READ_ONLY:Lcom/jme3/opencl/MappingAccess;

    sget-object v1, Lcom/jme3/opencl/MappingAccess;->MAP_WRITE_ONLY:Lcom/jme3/opencl/MappingAccess;

    sget-object v2, Lcom/jme3/opencl/MappingAccess;->MAP_READ_WRITE:Lcom/jme3/opencl/MappingAccess;

    sget-object v3, Lcom/jme3/opencl/MappingAccess;->MAP_WRITE_INVALIDATE:Lcom/jme3/opencl/MappingAccess;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/opencl/MappingAccess;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/opencl/MappingAccess;

    const-string v1, "MAP_READ_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/MappingAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/MappingAccess;->MAP_READ_ONLY:Lcom/jme3/opencl/MappingAccess;

    new-instance v0, Lcom/jme3/opencl/MappingAccess;

    const-string v1, "MAP_WRITE_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/MappingAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/MappingAccess;->MAP_WRITE_ONLY:Lcom/jme3/opencl/MappingAccess;

    new-instance v0, Lcom/jme3/opencl/MappingAccess;

    const-string v1, "MAP_READ_WRITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/MappingAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/MappingAccess;->MAP_READ_WRITE:Lcom/jme3/opencl/MappingAccess;

    new-instance v0, Lcom/jme3/opencl/MappingAccess;

    const-string v1, "MAP_WRITE_INVALIDATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/opencl/MappingAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/opencl/MappingAccess;->MAP_WRITE_INVALIDATE:Lcom/jme3/opencl/MappingAccess;

    invoke-static {}, Lcom/jme3/opencl/MappingAccess;->$values()[Lcom/jme3/opencl/MappingAccess;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/MappingAccess;->$VALUES:[Lcom/jme3/opencl/MappingAccess;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/opencl/MappingAccess;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/opencl/MappingAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/opencl/MappingAccess;

    return-object p0
.end method

.method public static values()[Lcom/jme3/opencl/MappingAccess;
    .locals 1

    sget-object v0, Lcom/jme3/opencl/MappingAccess;->$VALUES:[Lcom/jme3/opencl/MappingAccess;

    invoke-virtual {v0}, [Lcom/jme3/opencl/MappingAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/opencl/MappingAccess;

    return-object v0
.end method
