.class Lorg/openjdk/tools/javac/comp/Infer$EqCheckLegacy;
.super Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EqCheckLegacy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 7

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$EqCheckLegacy;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    new-instance v4, Lorg/openjdk/tools/javac/comp/l0;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/comp/l0;-><init>()V

    new-instance v5, Lorg/openjdk/tools/javac/comp/m0;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/comp/m0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Ljava/util/function/BiFunction;Ljava/util/function/BiPredicate;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-void
.end method


# virtual methods
.method public boundsToCheck()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-ne v0, v1, :cond_0

    const-class v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$EqCheckLegacy;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$EqCheckLegacy;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;->from:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/openjdk/tools/javac/comp/Infer$EqCheckLegacy;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-object v0
.end method
