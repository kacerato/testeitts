.class public final enum LJAVARuntime/AnimationTrigger$ConditionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/AnimationTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/AnimationTrigger$ConditionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/AnimationTrigger$ConditionType;

.field public static final enum BiggerOrEqual:LJAVARuntime/AnimationTrigger$ConditionType;

.field public static final enum BiggerThan:LJAVARuntime/AnimationTrigger$ConditionType;

.field public static final enum Equals:LJAVARuntime/AnimationTrigger$ConditionType;

.field public static final enum IsOff:LJAVARuntime/AnimationTrigger$ConditionType;

.field public static final enum IsOn:LJAVARuntime/AnimationTrigger$ConditionType;

.field public static final enum LessThan:LJAVARuntime/AnimationTrigger$ConditionType;

.field public static final enum LesserOrEqual:LJAVARuntime/AnimationTrigger$ConditionType;


# direct methods
.method private static synthetic $values()[LJAVARuntime/AnimationTrigger$ConditionType;
    .locals 7

    sget-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->Equals:LJAVARuntime/AnimationTrigger$ConditionType;

    sget-object v1, LJAVARuntime/AnimationTrigger$ConditionType;->BiggerThan:LJAVARuntime/AnimationTrigger$ConditionType;

    sget-object v2, LJAVARuntime/AnimationTrigger$ConditionType;->LessThan:LJAVARuntime/AnimationTrigger$ConditionType;

    sget-object v3, LJAVARuntime/AnimationTrigger$ConditionType;->BiggerOrEqual:LJAVARuntime/AnimationTrigger$ConditionType;

    sget-object v4, LJAVARuntime/AnimationTrigger$ConditionType;->LesserOrEqual:LJAVARuntime/AnimationTrigger$ConditionType;

    sget-object v5, LJAVARuntime/AnimationTrigger$ConditionType;->IsOn:LJAVARuntime/AnimationTrigger$ConditionType;

    sget-object v6, LJAVARuntime/AnimationTrigger$ConditionType;->IsOff:LJAVARuntime/AnimationTrigger$ConditionType;

    filled-new-array/range {v0 .. v6}, [LJAVARuntime/AnimationTrigger$ConditionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/AnimationTrigger$ConditionType;

    const-string v1, "Equals"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->Equals:LJAVARuntime/AnimationTrigger$ConditionType;

    new-instance v0, LJAVARuntime/AnimationTrigger$ConditionType;

    const-string v1, "BiggerThan"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->BiggerThan:LJAVARuntime/AnimationTrigger$ConditionType;

    new-instance v0, LJAVARuntime/AnimationTrigger$ConditionType;

    const-string v1, "LessThan"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->LessThan:LJAVARuntime/AnimationTrigger$ConditionType;

    new-instance v0, LJAVARuntime/AnimationTrigger$ConditionType;

    const-string v1, "BiggerOrEqual"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->BiggerOrEqual:LJAVARuntime/AnimationTrigger$ConditionType;

    new-instance v0, LJAVARuntime/AnimationTrigger$ConditionType;

    const-string v1, "LesserOrEqual"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->LesserOrEqual:LJAVARuntime/AnimationTrigger$ConditionType;

    new-instance v0, LJAVARuntime/AnimationTrigger$ConditionType;

    const-string v1, "IsOn"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->IsOn:LJAVARuntime/AnimationTrigger$ConditionType;

    new-instance v0, LJAVARuntime/AnimationTrigger$ConditionType;

    const-string v1, "IsOff"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LJAVARuntime/AnimationTrigger$ConditionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->IsOff:LJAVARuntime/AnimationTrigger$ConditionType;

    invoke-static {}, LJAVARuntime/AnimationTrigger$ConditionType;->$values()[LJAVARuntime/AnimationTrigger$ConditionType;

    move-result-object v0

    sput-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->$VALUES:[LJAVARuntime/AnimationTrigger$ConditionType;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/AnimationTrigger$ConditionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/AnimationTrigger$ConditionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/AnimationTrigger$ConditionType;

    return-object p0
.end method

.method public static values()[LJAVARuntime/AnimationTrigger$ConditionType;
    .locals 1

    sget-object v0, LJAVARuntime/AnimationTrigger$ConditionType;->$VALUES:[LJAVARuntime/AnimationTrigger$ConditionType;

    invoke-virtual {v0}, [LJAVARuntime/AnimationTrigger$ConditionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/AnimationTrigger$ConditionType;

    return-object v0
.end method
