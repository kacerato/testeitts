.class public final enum LJAVARuntime/VehicleWheel$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/VehicleWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/VehicleWheel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/VehicleWheel$Type;

.field public static final enum ContactPoint:LJAVARuntime/VehicleWheel$Type;

.field public static final enum Model:LJAVARuntime/VehicleWheel$Type;


# direct methods
.method private static synthetic $values()[LJAVARuntime/VehicleWheel$Type;
    .locals 2

    sget-object v0, LJAVARuntime/VehicleWheel$Type;->ContactPoint:LJAVARuntime/VehicleWheel$Type;

    sget-object v1, LJAVARuntime/VehicleWheel$Type;->Model:LJAVARuntime/VehicleWheel$Type;

    filled-new-array {v0, v1}, [LJAVARuntime/VehicleWheel$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/VehicleWheel$Type;

    const-string v1, "ContactPoint"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/VehicleWheel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VehicleWheel$Type;->ContactPoint:LJAVARuntime/VehicleWheel$Type;

    new-instance v0, LJAVARuntime/VehicleWheel$Type;

    const-string v1, "Model"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/VehicleWheel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/VehicleWheel$Type;->Model:LJAVARuntime/VehicleWheel$Type;

    invoke-static {}, LJAVARuntime/VehicleWheel$Type;->$values()[LJAVARuntime/VehicleWheel$Type;

    move-result-object v0

    sput-object v0, LJAVARuntime/VehicleWheel$Type;->$VALUES:[LJAVARuntime/VehicleWheel$Type;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/VehicleWheel$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/VehicleWheel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/VehicleWheel$Type;

    return-object p0
.end method

.method public static values()[LJAVARuntime/VehicleWheel$Type;
    .locals 1

    sget-object v0, LJAVARuntime/VehicleWheel$Type;->$VALUES:[LJAVARuntime/VehicleWheel$Type;

    invoke-virtual {v0}, [LJAVARuntime/VehicleWheel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/VehicleWheel$Type;

    return-object v0
.end method
