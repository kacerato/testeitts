.class abstract Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Check$CheckContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "MethodCheckContext"
.end annotation


# instance fields
.field deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

.field rsWarner:Lorg/openjdk/tools/javac/util/Warner;

.field strict:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;ZLorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->strict:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->rsWarner:Lorg/openjdk/tools/javac/util/Warner;

    return-void
.end method


# virtual methods
.method public checkWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->rsWarner:Lorg/openjdk/tools/javac/util/Warner;

    return-object p1
.end method

.method public compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->strict:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->isConvertible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    return-object v0
.end method

.method public inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-object v0
.end method

.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->access$300(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MethodCheckContext"

    return-object v0
.end method
