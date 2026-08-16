.class Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MostSpecificCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;
    }
.end annotation


# instance fields
.field actuals:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->actuals:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public argumentsAcceptable(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    iget-object v2, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v2

    invoke-virtual {p1, p4, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->adjustArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;IZ)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p4, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->actuals:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p4, p2, p5, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->methodCheckResult(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p4

    iget-object v0, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->actuals:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->actuals:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->actuals:Lorg/openjdk/tools/javac/util/List;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->actuals:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public methodCheckResult(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    invoke-direct {v3, p0, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object v0
.end method

.method public mostSpecificCheck(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;"
        }
    .end annotation

    const-string p1, "Cannot get here!"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
