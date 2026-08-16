.class Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;
.super Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiamondError"
.end annotation


# instance fields
.field sym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "diamondError"

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public getDetails()Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->errCandidate()Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->getDetails()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p5}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1500(Lorg/openjdk/tools/javac/comp/Resolve;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p6, p5, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p5, p5, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p5

    invoke-static {p6, p2, p5, p1, p3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;->rewrite(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p5

    if-eqz p5, :cond_0

    return-object p5

    :cond_0
    if-nez p3, :cond_1

    const-string p5, "cant.apply.diamond"

    :goto_0
    move-object v4, p5

    goto :goto_1

    :cond_1
    const-string p5, "cant.apply.diamond.1"

    goto :goto_0

    :goto_1
    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p5, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p5, p5, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p5, p5, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string p6, "diamond"

    invoke-virtual {p5, p6, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p4

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method
