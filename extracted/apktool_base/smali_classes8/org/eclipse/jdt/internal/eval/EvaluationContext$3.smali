.class Lorg/eclipse/jdt/internal/eval/EvaluationContext$3;
.super Lorg/eclipse/jdt/internal/compiler/ClassFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/EvaluationContext;->deployCodeSnippetClassIfNeeded(Lorg/eclipse/jdt/internal/eval/IRequestor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$3;->this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$3;->this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getCodeSnippetBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getCompoundName()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_COMPOUND_NAME:[[C

    return-object v0
.end method
