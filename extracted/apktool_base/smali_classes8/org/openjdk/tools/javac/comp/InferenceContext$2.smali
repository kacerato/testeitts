.class Lorg/openjdk/tools/javac/comp/InferenceContext$2;
.super Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field final synthetic val$vars:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$2;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$2;->val$vars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method public done()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$2;->this$0:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/InferenceContext$2;->val$vars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
