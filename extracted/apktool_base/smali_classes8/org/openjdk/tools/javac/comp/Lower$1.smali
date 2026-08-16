.class Lorg/openjdk/tools/javac/comp/Lower$1;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field currentClass:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Lower;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :try_start_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    throw p1
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Lower;->access$800(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkConflicts(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Lower;->access$800(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower$1;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkConflicts(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    return-void
.end method
