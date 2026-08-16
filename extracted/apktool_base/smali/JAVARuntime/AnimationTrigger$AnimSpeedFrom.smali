.class public final enum LJAVARuntime/AnimationTrigger$AnimSpeedFrom;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/AnimationTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimSpeedFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/AnimationTrigger$AnimSpeedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

.field public static final enum Constant:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

.field public static final enum ForwardSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

.field public static final enum MovementSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

.field public static final enum SideSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;


# direct methods
.method private static synthetic $values()[LJAVARuntime/AnimationTrigger$AnimSpeedFrom;
    .locals 4

    sget-object v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->Constant:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    sget-object v1, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->MovementSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    sget-object v2, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->ForwardSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    sget-object v3, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->SideSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    const-string v1, "Constant"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->Constant:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    new-instance v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    const-string v1, "MovementSpeed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->MovementSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    new-instance v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    const-string v1, "ForwardSpeed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->ForwardSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    new-instance v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    const-string v1, "SideSpeed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->SideSpeed:LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    invoke-static {}, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->$values()[LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    move-result-object v0

    sput-object v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->$VALUES:[LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/AnimationTrigger$AnimSpeedFrom;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    return-object p0
.end method

.method public static values()[LJAVARuntime/AnimationTrigger$AnimSpeedFrom;
    .locals 1

    sget-object v0, LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->$VALUES:[LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    invoke-virtual {v0}, [LJAVARuntime/AnimationTrigger$AnimSpeedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/AnimationTrigger$AnimSpeedFrom;

    return-object v0
.end method
