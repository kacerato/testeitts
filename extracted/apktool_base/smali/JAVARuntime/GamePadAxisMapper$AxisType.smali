.class public final enum LJAVARuntime/GamePadAxisMapper$AxisType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GamePadAxisMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AxisType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/GamePadAxisMapper$AxisType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/GamePadAxisMapper$AxisType;

.field public static final enum HORIZONTAL:LJAVARuntime/GamePadAxisMapper$AxisType;

.field public static final enum VERTICAL:LJAVARuntime/GamePadAxisMapper$AxisType;


# direct methods
.method private static synthetic $values()[LJAVARuntime/GamePadAxisMapper$AxisType;
    .locals 2

    sget-object v0, LJAVARuntime/GamePadAxisMapper$AxisType;->HORIZONTAL:LJAVARuntime/GamePadAxisMapper$AxisType;

    sget-object v1, LJAVARuntime/GamePadAxisMapper$AxisType;->VERTICAL:LJAVARuntime/GamePadAxisMapper$AxisType;

    filled-new-array {v0, v1}, [LJAVARuntime/GamePadAxisMapper$AxisType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/GamePadAxisMapper$AxisType;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$AxisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$AxisType;->HORIZONTAL:LJAVARuntime/GamePadAxisMapper$AxisType;

    new-instance v0, LJAVARuntime/GamePadAxisMapper$AxisType;

    const-string v1, "VERTICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/GamePadAxisMapper$AxisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GamePadAxisMapper$AxisType;->VERTICAL:LJAVARuntime/GamePadAxisMapper$AxisType;

    invoke-static {}, LJAVARuntime/GamePadAxisMapper$AxisType;->$values()[LJAVARuntime/GamePadAxisMapper$AxisType;

    move-result-object v0

    sput-object v0, LJAVARuntime/GamePadAxisMapper$AxisType;->$VALUES:[LJAVARuntime/GamePadAxisMapper$AxisType;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/GamePadAxisMapper$AxisType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/GamePadAxisMapper$AxisType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/GamePadAxisMapper$AxisType;

    return-object p0
.end method

.method public static values()[LJAVARuntime/GamePadAxisMapper$AxisType;
    .locals 1

    sget-object v0, LJAVARuntime/GamePadAxisMapper$AxisType;->$VALUES:[LJAVARuntime/GamePadAxisMapper$AxisType;

    invoke-virtual {v0}, [LJAVARuntime/GamePadAxisMapper$AxisType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/GamePadAxisMapper$AxisType;

    return-object v0
.end method
