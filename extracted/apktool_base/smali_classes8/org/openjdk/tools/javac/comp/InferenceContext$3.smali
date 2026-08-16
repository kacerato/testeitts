.class Lorg/openjdk/tools/javac/comp/InferenceContext$3;
.super Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/InferenceContext;->solveAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$3;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method public done()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$3;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->instvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->varsToSolve:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->intersect(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    return v0
.end method
