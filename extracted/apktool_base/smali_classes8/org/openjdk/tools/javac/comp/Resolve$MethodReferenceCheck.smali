.class Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;
.super Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodReferenceCheck"
.end annotation


# instance fields
.field pendingInferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;->pendingInferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-void
.end method

.method private methodCheckResult(ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck$1;

    iget-object v0, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck$1;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;ZLorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;Z)V

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p1, p3, p2, v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object p1
.end method


# virtual methods
.method public checkArg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    invoke-direct {p0, p2, p4, p5, p6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;->methodCheckResult(ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public mostSpecificCheck(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MethodReferenceCheck"

    return-object v0
.end method
