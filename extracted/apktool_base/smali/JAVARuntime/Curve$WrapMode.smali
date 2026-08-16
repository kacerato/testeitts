.class public final enum LJAVARuntime/Curve$WrapMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Curve$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Curve$WrapMode;

.field public static final enum ClampToBorder:LJAVARuntime/Curve$WrapMode;

.field public static final enum Loop:LJAVARuntime/Curve$WrapMode;

.field public static final enum PingPong:LJAVARuntime/Curve$WrapMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Curve$WrapMode;
    .locals 3

    sget-object v0, LJAVARuntime/Curve$WrapMode;->Loop:LJAVARuntime/Curve$WrapMode;

    sget-object v1, LJAVARuntime/Curve$WrapMode;->ClampToBorder:LJAVARuntime/Curve$WrapMode;

    sget-object v2, LJAVARuntime/Curve$WrapMode;->PingPong:LJAVARuntime/Curve$WrapMode;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/Curve$WrapMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Curve$WrapMode;

    const-string v1, "Loop"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Curve$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Curve$WrapMode;->Loop:LJAVARuntime/Curve$WrapMode;

    new-instance v0, LJAVARuntime/Curve$WrapMode;

    const-string v1, "ClampToBorder"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Curve$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Curve$WrapMode;->ClampToBorder:LJAVARuntime/Curve$WrapMode;

    new-instance v0, LJAVARuntime/Curve$WrapMode;

    const-string v1, "PingPong"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Curve$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Curve$WrapMode;->PingPong:LJAVARuntime/Curve$WrapMode;

    invoke-static {}, LJAVARuntime/Curve$WrapMode;->$values()[LJAVARuntime/Curve$WrapMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/Curve$WrapMode;->$VALUES:[LJAVARuntime/Curve$WrapMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Curve$WrapMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Curve$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Curve$WrapMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Curve$WrapMode;
    .locals 1

    sget-object v0, LJAVARuntime/Curve$WrapMode;->$VALUES:[LJAVARuntime/Curve$WrapMode;

    invoke-virtual {v0}, [LJAVARuntime/Curve$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Curve$WrapMode;

    return-object v0
.end method
