.class abstract Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;
.super Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BasicLookupHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v6, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    .line 3
    invoke-direct/range {p0 .. p6}, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-void
.end method


# virtual methods
.method public access(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9
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

    iget-object p1, p4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    const/4 v6, 0x1

    move-object v1, p4

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->accessMethod(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p4

    :cond_0
    return-object p4
.end method

.method public debug(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->reportVerboseResolutionDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public abstract doLookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
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
.end method

.method public final lookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1
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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;->doLookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->mergeAbstracts(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    :cond_0
    return-object p1
.end method
