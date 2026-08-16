.class Lorg/openjdk/tools/javac/comp/Resolve$4$1;
.super Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Resolve$4;->methodCheckResult(ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field methodDiag:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Resolve$4;

.field final synthetic val$varargsCheck:Z


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$4;ZLorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$4$1;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$4;

    iput-boolean p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$4$1;->val$varargsCheck:Z

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$4;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;ZLorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    if-eqz p5, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->VARARG_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARG_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$4$1;->methodDiag:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    return-void
.end method


# virtual methods
.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$4$1;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$4;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$4$1;->methodDiag:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->reportMC(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;Lorg/openjdk/tools/javac/comp/InferenceContext;[Ljava/lang/Object;)V

    return-void
.end method
