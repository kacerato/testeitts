.class public final enum LJAVARuntime/GamePadAxisMapper$Axis;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GamePadAxisMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Axis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/GamePadAxisMapper$Axis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_HAT_X:LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_HAT_Y:LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_RX:LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_RY:LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_RZ:LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_X:LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_Y:LJAVARuntime/GamePadAxisMapper$Axis;

.field public static final enum AXIS_Z:LJAVARuntime/GamePadAxisMapper$Axis;


# direct methods
.method private static synthetic $values()[LJAVARuntime/GamePadAxisMapper$Axis;
    .locals 8

    sget-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_X:LJAVARuntime/GamePadAxisMapper$Axis;

    sget-object v1, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_Y:LJAVARuntime/GamePadAxisMapper$Axis;

    sget-object v2, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_Z:LJAVARuntime/GamePadAxisMapper$Axis;

    sget-object v3, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_RX:LJAVARuntime/GamePadAxisMapper$Axis;

    sget-object v4, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_RY:LJAVARuntime/GamePadAxisMapper$Axis;

    sget-object v5, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_RZ:LJAVARuntime/GamePadAxisMapper$Axis;

    sget-object v6, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_HAT_X:LJAVARuntime/GamePadAxisMapper$Axis;

    sget-object v7, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_HAT_Y:LJAVARuntime/GamePadAxisMapper$Axis;

    filled-new-array/range {v0 .. v7}, [LJAVARuntime/GamePadAxisMapper$Axis;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_X:LJAVARuntime/GamePadAxisMapper$Axis;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_Y:LJAVARuntime/GamePadAxisMapper$Axis;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_Z:LJAVARuntime/GamePadAxisMapper$Axis;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_RX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_RX:LJAVARuntime/GamePadAxisMapper$Axis;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_RY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_RY:LJAVARuntime/GamePadAxisMapper$Axis;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_RZ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_RZ:LJAVARuntime/GamePadAxisMapper$Axis;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_HAT_X"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_HAT_X:LJAVARuntime/GamePadAxisMapper$Axis;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$Axis;

    const-string v1, "AXIS_HAT_Y"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$Axis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->AXIS_HAT_Y:LJAVARuntime/GamePadAxisMapper$Axis;

    invoke-static {}, LJAVARuntime/GamePadAxisMapper$Axis;->$values()[LJAVARuntime/GamePadAxisMapper$Axis;

    move-result-object v0

    sput-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->$VALUES:[LJAVARuntime/GamePadAxisMapper$Axis;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/GamePadAxisMapper$Axis;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/GamePadAxisMapper$Axis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/GamePadAxisMapper$Axis;

    return-object p0
.end method

.method public static values()[LJAVARuntime/GamePadAxisMapper$Axis;
    .locals 1

    sget-object v0, LJAVARuntime/GamePadAxisMapper$Axis;->$VALUES:[LJAVARuntime/GamePadAxisMapper$Axis;

    invoke-virtual {v0}, [LJAVARuntime/GamePadAxisMapper$Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/GamePadAxisMapper$Axis;

    return-object v0
.end method
