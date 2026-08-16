.class final enum Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegacyInferenceSteps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

.field public static final enum EQ_LOWER:Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

.field public static final enum EQ_UPPER:Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;


# instance fields
.field final steps:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->EQ:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->LOWER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v3, "EQ_LOWER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->EQ_LOWER:Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    sget-object v3, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->UPPER_LEGACY:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v3, "EQ_UPPER"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->EQ_UPPER:Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    filled-new-array {v0, v2}, [Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->$VALUES:[Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->steps:Ljava/util/EnumSet;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->$VALUES:[Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    return-object v0
.end method
