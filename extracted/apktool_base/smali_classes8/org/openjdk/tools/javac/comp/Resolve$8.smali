.class Lorg/openjdk/tools/javac/comp/Resolve$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$8;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgumentTypes(Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$ResolveDeferredRecoveryMap;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$8;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    sget-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v1, p3, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-direct {p1, p3, v0, p2, v1}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveDeferredRecoveryMap;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    invoke-virtual {p4, p1}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public resolveDiagnosticNeeded(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous(Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous(Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
