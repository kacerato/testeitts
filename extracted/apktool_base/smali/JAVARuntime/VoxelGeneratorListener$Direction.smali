.class public final enum LJAVARuntime/VoxelGeneratorListener$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/VoxelGeneratorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/VoxelGeneratorListener$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/VoxelGeneratorListener$Direction;

.field public static final enum BACK:LJAVARuntime/VoxelGeneratorListener$Direction;

.field public static final enum DOWN:LJAVARuntime/VoxelGeneratorListener$Direction;

.field public static final enum FRONT:LJAVARuntime/VoxelGeneratorListener$Direction;

.field public static final enum LEFT:LJAVARuntime/VoxelGeneratorListener$Direction;

.field public static final enum RIGHT:LJAVARuntime/VoxelGeneratorListener$Direction;

.field public static final enum UP:LJAVARuntime/VoxelGeneratorListener$Direction;


# direct methods
.method private static synthetic $values()[LJAVARuntime/VoxelGeneratorListener$Direction;
    .locals 6

    sget-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->LEFT:LJAVARuntime/VoxelGeneratorListener$Direction;

    sget-object v1, LJAVARuntime/VoxelGeneratorListener$Direction;->RIGHT:LJAVARuntime/VoxelGeneratorListener$Direction;

    sget-object v2, LJAVARuntime/VoxelGeneratorListener$Direction;->UP:LJAVARuntime/VoxelGeneratorListener$Direction;

    sget-object v3, LJAVARuntime/VoxelGeneratorListener$Direction;->DOWN:LJAVARuntime/VoxelGeneratorListener$Direction;

    sget-object v4, LJAVARuntime/VoxelGeneratorListener$Direction;->FRONT:LJAVARuntime/VoxelGeneratorListener$Direction;

    sget-object v5, LJAVARuntime/VoxelGeneratorListener$Direction;->BACK:LJAVARuntime/VoxelGeneratorListener$Direction;

    filled-new-array/range {v0 .. v5}, [LJAVARuntime/VoxelGeneratorListener$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/VoxelGeneratorListener$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/VoxelGeneratorListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->LEFT:LJAVARuntime/VoxelGeneratorListener$Direction;

    new-instance v0, LJAVARuntime/VoxelGeneratorListener$Direction;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/VoxelGeneratorListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->RIGHT:LJAVARuntime/VoxelGeneratorListener$Direction;

    new-instance v0, LJAVARuntime/VoxelGeneratorListener$Direction;

    const-string v1, "UP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/VoxelGeneratorListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->UP:LJAVARuntime/VoxelGeneratorListener$Direction;

    new-instance v0, LJAVARuntime/VoxelGeneratorListener$Direction;

    const-string v1, "DOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/VoxelGeneratorListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->DOWN:LJAVARuntime/VoxelGeneratorListener$Direction;

    new-instance v0, LJAVARuntime/VoxelGeneratorListener$Direction;

    const-string v1, "FRONT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/VoxelGeneratorListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->FRONT:LJAVARuntime/VoxelGeneratorListener$Direction;

    new-instance v0, LJAVARuntime/VoxelGeneratorListener$Direction;

    const-string v1, "BACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/VoxelGeneratorListener$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->BACK:LJAVARuntime/VoxelGeneratorListener$Direction;

    invoke-static {}, LJAVARuntime/VoxelGeneratorListener$Direction;->$values()[LJAVARuntime/VoxelGeneratorListener$Direction;

    move-result-object v0

    sput-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->$VALUES:[LJAVARuntime/VoxelGeneratorListener$Direction;

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
            "$enum$name",
            "$enum$ordinal"
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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/VoxelGeneratorListener$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/VoxelGeneratorListener$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object p0
.end method

.method public static values()[LJAVARuntime/VoxelGeneratorListener$Direction;
    .locals 1

    sget-object v0, LJAVARuntime/VoxelGeneratorListener$Direction;->$VALUES:[LJAVARuntime/VoxelGeneratorListener$Direction;

    invoke-virtual {v0}, [LJAVARuntime/VoxelGeneratorListener$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object v0
.end method
