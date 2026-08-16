.class Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;
.super Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodResultInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method

.method private U(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->cvarUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    invoke-virtual {p2, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->U(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getTree()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getTree()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->cachedCapture(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->dup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;

    move-result-object p1

    return-object p1
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 2

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object v0
.end method

.method public dup(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 3

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object v0
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object v0
.end method
