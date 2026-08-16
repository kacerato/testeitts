.class public final enum LJAVARuntime/Bloom$QualityLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Bloom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QualityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Bloom$QualityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Bloom$QualityLevel;

.field public static final enum HIGH:LJAVARuntime/Bloom$QualityLevel;

.field public static final enum LOW:LJAVARuntime/Bloom$QualityLevel;

.field public static final enum MEDIUM:LJAVARuntime/Bloom$QualityLevel;

.field public static final enum ULTRA:LJAVARuntime/Bloom$QualityLevel;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Bloom$QualityLevel;
    .locals 4

    sget-object v0, LJAVARuntime/Bloom$QualityLevel;->LOW:LJAVARuntime/Bloom$QualityLevel;

    sget-object v1, LJAVARuntime/Bloom$QualityLevel;->MEDIUM:LJAVARuntime/Bloom$QualityLevel;

    sget-object v2, LJAVARuntime/Bloom$QualityLevel;->HIGH:LJAVARuntime/Bloom$QualityLevel;

    sget-object v3, LJAVARuntime/Bloom$QualityLevel;->ULTRA:LJAVARuntime/Bloom$QualityLevel;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/Bloom$QualityLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Bloom$QualityLevel;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Bloom$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Bloom$QualityLevel;->LOW:LJAVARuntime/Bloom$QualityLevel;

    new-instance v0, LJAVARuntime/Bloom$QualityLevel;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Bloom$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Bloom$QualityLevel;->MEDIUM:LJAVARuntime/Bloom$QualityLevel;

    new-instance v0, LJAVARuntime/Bloom$QualityLevel;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Bloom$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Bloom$QualityLevel;->HIGH:LJAVARuntime/Bloom$QualityLevel;

    new-instance v0, LJAVARuntime/Bloom$QualityLevel;

    const-string v1, "ULTRA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/Bloom$QualityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Bloom$QualityLevel;->ULTRA:LJAVARuntime/Bloom$QualityLevel;

    invoke-static {}, LJAVARuntime/Bloom$QualityLevel;->$values()[LJAVARuntime/Bloom$QualityLevel;

    move-result-object v0

    sput-object v0, LJAVARuntime/Bloom$QualityLevel;->$VALUES:[LJAVARuntime/Bloom$QualityLevel;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Bloom$QualityLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Bloom$QualityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Bloom$QualityLevel;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Bloom$QualityLevel;
    .locals 1

    sget-object v0, LJAVARuntime/Bloom$QualityLevel;->$VALUES:[LJAVARuntime/Bloom$QualityLevel;

    invoke-virtual {v0}, [LJAVARuntime/Bloom$QualityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Bloom$QualityLevel;

    return-object v0
.end method
