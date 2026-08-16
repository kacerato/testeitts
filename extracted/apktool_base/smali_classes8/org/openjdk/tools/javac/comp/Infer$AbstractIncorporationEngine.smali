.class abstract Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractIncorporationEngine"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getIncorporationActions(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/util/List;
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
.end method

.method public varBoundChanged(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)V
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isCaptured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;->getIncorporationActions(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varInstantiated(Lorg/openjdk/tools/javac/code/Type$UndetVar;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {v1, v2, p1}, Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method
