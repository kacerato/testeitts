.class public final enum LJAVARuntime/TrailRenderer$AlphaBased;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TrailRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlphaBased"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/TrailRenderer$AlphaBased;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/TrailRenderer$AlphaBased;

.field public static final enum AlphaOverLifetime:LJAVARuntime/TrailRenderer$AlphaBased;

.field public static final enum BySpeed:LJAVARuntime/TrailRenderer$AlphaBased;

.field public static final enum None:LJAVARuntime/TrailRenderer$AlphaBased;


# direct methods
.method private static synthetic $values()[LJAVARuntime/TrailRenderer$AlphaBased;
    .locals 3

    sget-object v0, LJAVARuntime/TrailRenderer$AlphaBased;->None:LJAVARuntime/TrailRenderer$AlphaBased;

    sget-object v1, LJAVARuntime/TrailRenderer$AlphaBased;->AlphaOverLifetime:LJAVARuntime/TrailRenderer$AlphaBased;

    sget-object v2, LJAVARuntime/TrailRenderer$AlphaBased;->BySpeed:LJAVARuntime/TrailRenderer$AlphaBased;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/TrailRenderer$AlphaBased;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/TrailRenderer$AlphaBased;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$AlphaBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$AlphaBased;->None:LJAVARuntime/TrailRenderer$AlphaBased;

    new-instance v0, LJAVARuntime/TrailRenderer$AlphaBased;

    const-string v1, "AlphaOverLifetime"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$AlphaBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$AlphaBased;->AlphaOverLifetime:LJAVARuntime/TrailRenderer$AlphaBased;

    new-instance v0, LJAVARuntime/TrailRenderer$AlphaBased;

    const-string v1, "BySpeed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$AlphaBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$AlphaBased;->BySpeed:LJAVARuntime/TrailRenderer$AlphaBased;

    invoke-static {}, LJAVARuntime/TrailRenderer$AlphaBased;->$values()[LJAVARuntime/TrailRenderer$AlphaBased;

    move-result-object v0

    sput-object v0, LJAVARuntime/TrailRenderer$AlphaBased;->$VALUES:[LJAVARuntime/TrailRenderer$AlphaBased;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/TrailRenderer$AlphaBased;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/TrailRenderer$AlphaBased;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/TrailRenderer$AlphaBased;

    return-object p0
.end method

.method public static values()[LJAVARuntime/TrailRenderer$AlphaBased;
    .locals 1

    sget-object v0, LJAVARuntime/TrailRenderer$AlphaBased;->$VALUES:[LJAVARuntime/TrailRenderer$AlphaBased;

    invoke-virtual {v0}, [LJAVARuntime/TrailRenderer$AlphaBased;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/TrailRenderer$AlphaBased;

    return-object v0
.end method
