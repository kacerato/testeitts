.class Lorg/eclipse/jdt/internal/eval/Evaluator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/eval/Evaluator;->getClasses()[Lorg/eclipse/jdt/internal/compiler/ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

.field private final synthetic val$source:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/Evaluator;[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1;->this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1;->val$source:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1;->val$source:[C

    return-object v0
.end method

.method public getFileName()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1;->this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getClassName()[C

    move-result-object v0

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/Evaluator$1;->this$0:Lorg/eclipse/jdt/internal/eval/Evaluator;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/Evaluator;->getClassName()[C

    move-result-object v0

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
