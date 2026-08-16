.class public final enum LJAVARuntime/TrailRenderer$Alignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TrailRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/TrailRenderer$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/TrailRenderer$Alignment;

.field public static final enum Billboard:LJAVARuntime/TrailRenderer$Alignment;

.field public static final enum Movement:LJAVARuntime/TrailRenderer$Alignment;


# direct methods
.method private static synthetic $values()[LJAVARuntime/TrailRenderer$Alignment;
    .locals 2

    sget-object v0, LJAVARuntime/TrailRenderer$Alignment;->Billboard:LJAVARuntime/TrailRenderer$Alignment;

    sget-object v1, LJAVARuntime/TrailRenderer$Alignment;->Movement:LJAVARuntime/TrailRenderer$Alignment;

    filled-new-array {v0, v1}, [LJAVARuntime/TrailRenderer$Alignment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/TrailRenderer$Alignment;

    const-string v1, "Billboard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$Alignment;->Billboard:LJAVARuntime/TrailRenderer$Alignment;

    new-instance v0, LJAVARuntime/TrailRenderer$Alignment;

    const-string v1, "Movement"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$Alignment;->Movement:LJAVARuntime/TrailRenderer$Alignment;

    invoke-static {}, LJAVARuntime/TrailRenderer$Alignment;->$values()[LJAVARuntime/TrailRenderer$Alignment;

    move-result-object v0

    sput-object v0, LJAVARuntime/TrailRenderer$Alignment;->$VALUES:[LJAVARuntime/TrailRenderer$Alignment;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/TrailRenderer$Alignment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/TrailRenderer$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/TrailRenderer$Alignment;

    return-object p0
.end method

.method public static values()[LJAVARuntime/TrailRenderer$Alignment;
    .locals 1

    sget-object v0, LJAVARuntime/TrailRenderer$Alignment;->$VALUES:[LJAVARuntime/TrailRenderer$Alignment;

    invoke-virtual {v0}, [LJAVARuntime/TrailRenderer$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/TrailRenderer$Alignment;

    return-object v0
.end method
