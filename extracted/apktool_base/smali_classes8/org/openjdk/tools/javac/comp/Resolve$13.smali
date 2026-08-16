.class Lorg/openjdk/tools/javac/comp/Resolve$13;
.super Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Resolve;->resolveDiamond(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$13;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method public access(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTHS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;->access(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p4

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->errCandidate()Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    :cond_1
    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$13;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p3, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v1, p3, p4, v0}, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$13;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, v0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, p3, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    const/4 v5, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->accessMethod(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p4

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$13;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object p2, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    :cond_2
    :goto_0
    return-object p4
.end method

.method public doLookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$13;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v5

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v6

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1100(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method
