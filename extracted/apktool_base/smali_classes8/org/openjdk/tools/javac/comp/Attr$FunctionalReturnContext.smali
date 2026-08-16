.class Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;
.super Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunctionalReturnContext"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;-><init>(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method


# virtual methods
.method public compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1
.end method

.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;->enclosingContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "incompatible.ret.type.in.lambda"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method
