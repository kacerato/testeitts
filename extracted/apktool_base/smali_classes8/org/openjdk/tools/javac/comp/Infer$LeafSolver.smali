.class abstract Lorg/openjdk/tools/javac/comp/Infer$LeafSolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LeafSolver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$LeafSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pickNode(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;)Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;-><init>(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;)V

    throw v0
.end method
