.class Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverloadStuckPolicy"
.end annotation


# instance fields
.field stuck:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)V

    return-void
.end method


# virtual methods
.method public isStuck()Z
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->isStuck()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;->stuck:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->IMPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;->stuck:Z

    :cond_0
    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;->visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getOverloadKind()Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->OVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;->stuck:Z

    :cond_0
    return-void
.end method
