.class Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/tree/TreeInfo;->declarationFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeclScanner"
.end annotation


# instance fields
.field result:Lorg/openjdk/tools/javac/tree/JCTree;

.field final synthetic val$sym:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :cond_0
    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    :goto_0
    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V

    :goto_0
    return-void
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_0
    return-void
.end method

.method public visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V

    :goto_0
    return-void
.end method

.method public visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    :goto_0
    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V

    :goto_0
    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    :goto_0
    return-void
.end method
