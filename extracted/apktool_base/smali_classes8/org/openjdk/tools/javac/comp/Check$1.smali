.class Lorg/openjdk/tools/javac/comp/Check$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Check$CheckContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Check;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$1;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$1;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->convertWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;

    move-result-object p1

    return-object p1
.end method

.method public compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$1;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$100(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->isAssignable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1
.end method

.method public deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$1;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$300(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    return-object v0
.end method

.method public inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$1;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$200(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/comp/Infer;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-object v0
.end method

.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$1;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    const-string v1, "prob.found.req"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckContext: basicHandler"

    return-object v0
.end method
