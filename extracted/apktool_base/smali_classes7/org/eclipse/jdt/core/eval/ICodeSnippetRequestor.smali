.class public interface abstract Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_SNIPPET:I = 0x2

.field public static final DELEGATE_THIS:Ljava/lang/String;

.field public static final IMPORT:I = 0x3

.field public static final INTERNAL:I = 0x5

.field public static final LOCAL_VAR_PREFIX:Ljava/lang/String;

.field public static final PACKAGE:I = 0x4

.field public static final RESULT_TYPE_FIELD:Ljava/lang/String; = "resultType"

.field public static final RESULT_VALUE_FIELD:Ljava/lang/String; = "resultValue"

.field public static final RUN_METHOD:Ljava/lang/String; = "run"

.field public static final VARIABLE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->LOCAL_VAR_PREFIX:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;->LOCAL_VAR_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;->DELEGATE_THIS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract acceptClassFiles([[B[[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract acceptProblem(Lorg/eclipse/core/resources/IMarker;Ljava/lang/String;I)V
.end method
