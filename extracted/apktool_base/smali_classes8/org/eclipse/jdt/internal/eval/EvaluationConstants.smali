.class public interface abstract Lorg/eclipse/jdt/internal/eval/EvaluationConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_SNIPPET_CLASS_NAME_PREFIX:[C

.field public static final CODE_SNIPPET_NAME:[C

.field public static final DELEGATE_THIS:[C

.field public static final GLOBAL_VARS_CLASS_NAME_PREFIX:[C

.field public static final LOCAL_VAR_PREFIX:[C

.field public static final PACKAGE_NAME:[C

.field public static final RESULT_TYPE_FIELD:Ljava/lang/String; = "resultType"

.field public static final RESULT_VALUE_FIELD:Ljava/lang/String; = "resultValue"

.field public static final ROOT_CLASS_NAME:[C

.field public static final ROOT_COMPOUND_NAME:[[C

.field public static final ROOT_FULL_CLASS_NAME:Ljava/lang/String;

.field public static final RUN_METHOD:Ljava/lang/String; = "run"

.field public static final SETRESULT_ARGUMENTS:[C

.field public static final SETRESULT_SELECTOR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CodeSnippet_"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->CODE_SNIPPET_CLASS_NAME_PREFIX:[C

    const-string v0, "GlobalVariables_"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->GLOBAL_VARS_CLASS_NAME_PREFIX:[C

    const-string v0, "org.eclipse.jdt.internal.eval.target"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->PACKAGE_NAME:[C

    const-string v1, "org/eclipse/jdt/internal/eval/target/CodeSnippet"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->CODE_SNIPPET_NAME:[C

    const-string v1, "CodeSnippet"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_CLASS_NAME:[C

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_FULL_CLASS_NAME:Ljava/lang/String;

    const-string v2, "setResult"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->SETRESULT_SELECTOR:[C

    const-string v2, "Ljava.lang.Object;Ljava.lang.Class;"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->SETRESULT_ARGUMENTS:[C

    const/16 v2, 0x2e

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_COMPOUND_NAME:[[C

    const-string v0, "val$"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->LOCAL_VAR_PREFIX:[C

    const-string v0, "val$this"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    return-void
.end method
