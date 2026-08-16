.class public final enum LJAVARuntime/SSAO$QualityLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/SSAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QualityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/SSAO$QualityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/SSAO$QualityLevel;

.field public static final enum HIGH:LJAVARuntime/SSAO$QualityLevel;

.field public static final enum LOW:LJAVARuntime/SSAO$QualityLevel;

.field public static final enum MEDIUM:LJAVARuntime/SSAO$QualityLevel;

.field public static final enum ULTRA:LJAVARuntime/SSAO$QualityLevel;


# direct methods
.method private static synthetic $values()[LJAVARuntime/SSAO$QualityLevel;
    .locals 4

    sget-object v0, LJAVARuntime/SSAO$QualityLevel;->LOW:LJAVARuntime/SSAO$QualityLevel;

    sget-object v1, LJAVARuntime/SSAO$QualityLevel;->MEDIUM:LJAVARuntime/SSAO$QualityLevel;

    sget-object v2, LJAVARuntime/SSAO$QualityLevel;->HIGH:LJAVARuntime/SSAO$QualityLevel;

    sget-object v3, LJAVARuntime/SSAO$QualityLevel;->ULTRA:LJAVARuntime/SSAO$QualityLevel;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/SSAO$QualityLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/SSAO$QualityLevel;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/SSAO$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/SSAO$QualityLevel;->LOW:LJAVARuntime/SSAO$QualityLevel;

    new-instance v0, LJAVARuntime/SSAO$QualityLevel;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/SSAO$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/SSAO$QualityLevel;->MEDIUM:LJAVARuntime/SSAO$QualityLevel;

    new-instance v0, LJAVARuntime/SSAO$QualityLevel;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/SSAO$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/SSAO$QualityLevel;->HIGH:LJAVARuntime/SSAO$QualityLevel;

    new-instance v0, LJAVARuntime/SSAO$QualityLevel;

    const-string v1, "ULTRA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/SSAO$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/SSAO$QualityLevel;->ULTRA:LJAVARuntime/SSAO$QualityLevel;

    invoke-static {}, LJAVARuntime/SSAO$QualityLevel;->$values()[LJAVARuntime/SSAO$QualityLevel;

    move-result-object v0

    sput-object v0, LJAVARuntime/SSAO$QualityLevel;->$VALUES:[LJAVARuntime/SSAO$QualityLevel;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/SSAO$QualityLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/SSAO$QualityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/SSAO$QualityLevel;

    return-object p0
.end method

.method public static values()[LJAVARuntime/SSAO$QualityLevel;
    .locals 1

    sget-object v0, LJAVARuntime/SSAO$QualityLevel;->$VALUES:[LJAVARuntime/SSAO$QualityLevel;

    invoke-virtual {v0}, [LJAVARuntime/SSAO$QualityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/SSAO$QualityLevel;

    return-object v0
.end method
