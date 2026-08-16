.class Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/EvaluationContext;->select([CIILorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

.field private final synthetic val$className:[C

.field private final synthetic val$mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;[CLorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;->this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;->val$className:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;->val$mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;->val$mapper:Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;->this$0:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->getCUSource(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public getFileName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;->val$className:[C

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0
.end method

.method public getMainTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationContext$5;->val$className:[C

    return-object v0
.end method

.method public getModuleName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()[[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
