.class Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;
.super Lorg/openjdk/tools/javac/code/Type$ErrorType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->modelMissingTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private modelType:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

.field final synthetic val$env:Lorg/openjdk/tools/javac/comp/Env;

.field final synthetic val$interfaceExpected:Z

.field final synthetic val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->val$env:Lorg/openjdk/tools/javac/comp/Env;

    iput-boolean p5, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->val$interfaceExpected:Z

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Type$ErrorType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public getModelType()Lorg/openjdk/tools/javac/code/Type;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->modelType:Lorg/openjdk/tools/javac/code/Type;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->val$env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-boolean v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->val$interfaceExpected:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Type;Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->visit(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->modelType:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$1;->modelType:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method
