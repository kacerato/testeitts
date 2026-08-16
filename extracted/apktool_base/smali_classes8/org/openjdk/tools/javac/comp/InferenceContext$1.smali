.class Lorg/openjdk/tools/javac/comp/InferenceContext$1;
.super Lorg/openjdk/tools/javac/comp/Infer$LeafSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/util/Warner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Infer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$1;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Infer$LeafSolver;-><init>(Lorg/openjdk/tools/javac/comp/Infer;)V

    return-void
.end method


# virtual methods
.method public done()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$1;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
