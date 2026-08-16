.class final enum Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphInferenceSteps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

.field public static final enum EQ:Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

.field public static final enum EQ_LOWER:Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

.field public static final enum EQ_LOWER_THROWS_UPPER_CAPTURED:Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;


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
    .locals 8

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->EQ:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v3, "EQ"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->EQ:Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    sget-object v3, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->LOWER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string v5, "EQ_LOWER"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v4}, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->EQ_LOWER:Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    new-instance v4, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->UPPER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    sget-object v6, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->THROWS:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    sget-object v7, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->CAPTURED:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-static {v1, v3, v5, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v3, "EQ_LOWER_THROWS_UPPER_CAPTURED"

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5, v1}, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v4, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->EQ_LOWER_THROWS_UPPER_CAPTURED:Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    filled-new-array {v0, v2, v4}, [Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->$VALUES:[Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->steps:Ljava/util/EnumSet;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->$VALUES:[Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    return-object v0
.end method
