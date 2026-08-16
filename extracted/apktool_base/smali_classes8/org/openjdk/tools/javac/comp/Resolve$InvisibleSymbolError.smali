.class Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;
.super Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvisibleSymbolError"
.end annotation


# instance fields
.field private final env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final suppressError:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;Z",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->HIDDEN:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "invisible class error"

    invoke-direct {p0, p1, v0, p4, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-boolean p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->suppressError:Z

    iget-object p1, p4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method


# virtual methods
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

    iget-boolean p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->suppressError:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p4, p5, :cond_1

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p3

    invoke-virtual {p4, p5, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->inaccessiblePackageReason(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p4, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p4, p4, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object v5

    const-string v4, "package.not.visible"

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p3

    invoke-virtual {p4, p5, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->inaccessiblePackageReason(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    invoke-interface {p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getTree()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getTree()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p5

    :goto_0
    iget-object p6, p4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p6, p7, :cond_2

    sget-object p6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p5, p6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p6

    if-eqz p6, :cond_2

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p5, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p5, p5, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_2
    iget-object p6, p4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p6, p7, :cond_3

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v2

    const-string v4, "package.not.visible"

    filled-new-array {p4, p3}, [Ljava/lang/Object;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p4, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p4, p4, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p5

    filled-new-array {p4, p5, p3}, [Ljava/lang/Object;

    move-result-object v5

    const-string v4, "not.def.access.package.cant.access"

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method
