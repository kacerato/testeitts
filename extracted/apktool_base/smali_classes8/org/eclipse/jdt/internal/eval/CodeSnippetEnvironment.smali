.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


# instance fields
.field context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

.field env:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->env:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->env:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    return-void
.end method

.method public findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->env:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 14
    :cond_0
    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->env:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_COMPOUND_NAME:[[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getRootCodeSnippetBinary()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object v0

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->installedVars:Lorg/eclipse/jdt/internal/eval/VariablesInfo;

    .line 6
    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/VariablesInfo;->classFiles:[Lorg/eclipse/jdt/internal/compiler/ClassFile;

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_3

    return-object v1

    .line 8
    :cond_3
    aget-object v3, v0, v2

    .line 9
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getCompoundName()[[C

    move-result-object v4

    invoke-static {p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    :try_start_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getBytes()[B

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isPackage([[C[C)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetEnvironment;->env:Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->isPackage([[C[C)Z

    move-result p1

    return p1
.end method
