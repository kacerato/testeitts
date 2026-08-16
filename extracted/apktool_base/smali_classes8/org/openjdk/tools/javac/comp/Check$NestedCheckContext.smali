.class Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Check$CheckContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedCheckContext"
.end annotation


# instance fields
.field enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    return-void
.end method


# virtual methods
.method public checkWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->checkWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;

    move-result-object p1

    return-object p1
.end method

.method public compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1
.end method

.method public deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v0

    return-object v0
.end method

.method public inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    return-object v0
.end method

.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method
