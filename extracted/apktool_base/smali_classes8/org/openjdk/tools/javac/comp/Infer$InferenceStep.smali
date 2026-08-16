.class abstract enum Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "InferenceStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

.field public static final enum CAPTURED:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

.field public static final enum EQ:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

.field public static final enum LOWER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

.field public static final enum THROWS:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

.field public static final enum UPPER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

.field public static final enum UPPER_LEGACY:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;


# instance fields
.field final ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$1;

    const/4 v1, 0x0

    sget-object v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    const-string v3, "EQ"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$1;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->EQ:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$2;

    const/4 v3, 0x1

    sget-object v4, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    const-string v5, "LOWER"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$2;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->LOWER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    new-instance v4, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$3;

    sget-object v5, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    const-string v6, "THROWS"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v5}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$3;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    sput-object v4, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->THROWS:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    new-instance v6, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$4;

    const-string v8, "UPPER"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v5}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$4;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    sput-object v6, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->UPPER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    new-instance v8, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$5;

    const-string v10, "UPPER_LEGACY"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v5}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$5;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    sput-object v8, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->UPPER_LEGACY:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    new-instance v10, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$6;

    const-string v12, "CAPTURED"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v5}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$6;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    sput-object v10, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->CAPTURED:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    const/4 v5, 0x6

    new-array v5, v5, [Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    aput-object v0, v5, v1

    aput-object v2, v5, v3

    aput-object v4, v5, v7

    aput-object v6, v5, v9

    aput-object v8, v5, v11

    aput-object v10, v5, v13

    sput-object v5, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->$VALUES:[Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/comp/Infer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->$VALUES:[Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    return-object v0
.end method


# virtual methods
.method public accepts(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->filterBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isCaptured()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public filterBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar;",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->filter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;
.end method
