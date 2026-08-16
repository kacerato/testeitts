.class public final enum LJAVARuntime/AnimationTrigger$TriggerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/AnimationTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/AnimationTrigger$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum ForwardLength:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum ForwardSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum GlobalPositionX:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum GlobalPositionY:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum GlobalPositionZ:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum IsGrounded:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum MovementLength:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum MovementSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum OnEvent:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum SideLength:LJAVARuntime/AnimationTrigger$TriggerType;

.field public static final enum SideSpeed:LJAVARuntime/AnimationTrigger$TriggerType;


# direct methods
.method private static synthetic $values()[LJAVARuntime/AnimationTrigger$TriggerType;
    .locals 11

    sget-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->MovementSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v1, LJAVARuntime/AnimationTrigger$TriggerType;->MovementLength:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v2, LJAVARuntime/AnimationTrigger$TriggerType;->ForwardSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v3, LJAVARuntime/AnimationTrigger$TriggerType;->ForwardLength:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v4, LJAVARuntime/AnimationTrigger$TriggerType;->SideSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v5, LJAVARuntime/AnimationTrigger$TriggerType;->SideLength:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v6, LJAVARuntime/AnimationTrigger$TriggerType;->IsGrounded:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v7, LJAVARuntime/AnimationTrigger$TriggerType;->OnEvent:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v8, LJAVARuntime/AnimationTrigger$TriggerType;->GlobalPositionX:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v9, LJAVARuntime/AnimationTrigger$TriggerType;->GlobalPositionY:LJAVARuntime/AnimationTrigger$TriggerType;

    sget-object v10, LJAVARuntime/AnimationTrigger$TriggerType;->GlobalPositionZ:LJAVARuntime/AnimationTrigger$TriggerType;

    filled-new-array/range {v0 .. v10}, [LJAVARuntime/AnimationTrigger$TriggerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "MovementSpeed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->MovementSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "MovementLength"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->MovementLength:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "ForwardSpeed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->ForwardSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "ForwardLength"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->ForwardLength:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "SideSpeed"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->SideSpeed:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "SideLength"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->SideLength:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "IsGrounded"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->IsGrounded:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "OnEvent"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->OnEvent:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "GlobalPositionX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->GlobalPositionX:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "GlobalPositionY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->GlobalPositionY:LJAVARuntime/AnimationTrigger$TriggerType;

    new-instance v0, LJAVARuntime/AnimationTrigger$TriggerType;

    const-string v1, "GlobalPositionZ"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->GlobalPositionZ:LJAVARuntime/AnimationTrigger$TriggerType;

    invoke-static {}, LJAVARuntime/AnimationTrigger$TriggerType;->$values()[LJAVARuntime/AnimationTrigger$TriggerType;

    move-result-object v0

    sput-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->$VALUES:[LJAVARuntime/AnimationTrigger$TriggerType;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/AnimationTrigger$TriggerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/AnimationTrigger$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/AnimationTrigger$TriggerType;

    return-object p0
.end method

.method public static values()[LJAVARuntime/AnimationTrigger$TriggerType;
    .locals 1

    sget-object v0, LJAVARuntime/AnimationTrigger$TriggerType;->$VALUES:[LJAVARuntime/AnimationTrigger$TriggerType;

    invoke-virtual {v0}, [LJAVARuntime/AnimationTrigger$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/AnimationTrigger$TriggerType;

    return-object v0
.end method
