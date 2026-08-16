.class Lorg/openjdk/tools/javac/comp/Infer$3;
.super Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$3;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;-><init>(Lorg/openjdk/tools/javac/comp/Infer;)V

    return-void
.end method


# virtual methods
.method public getIncorporationActions(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar;",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$3;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-direct {v1, v2, p1, p2, v3}, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$3;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {v1, v2, p1, p3, p2}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p4, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-ne p2, p4, :cond_2

    new-instance p4, Lorg/openjdk/tools/javac/comp/Infer$CheckUpperBounds;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$3;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p4, v1, p1, p3}, Lorg/openjdk/tools/javac/comp/Infer$CheckUpperBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p4, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$3;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p4, v1, p1, p3, p2}, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method
