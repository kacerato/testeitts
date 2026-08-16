.class public Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
.super Lorg/openjdk/tools/javac/tree/JCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/CompilationUnitTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCCompilationUnit"
.end annotation


# instance fields
.field public defs:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field public docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

.field public endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

.field public lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

.field public locn:Lorg/openjdk/javax/tools/JavaFileManager$Location;

.field public modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field public namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

.field public packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

.field public sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

.field public starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

.field public toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    return-void
.end method

.method public bridge synthetic getImports()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getImports()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImports()Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 4
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PACKAGEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SKIP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->COMPILATION_UNIT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getLineMap()Lorg/openjdk/source/tree/LineMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v0

    return-object v0
.end method

.method public getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    return-object v0
.end method

.method public getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPackage()Lorg/openjdk/source/tree/PackageTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PACKAGEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPackageAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackageAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageAnnotations()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPackageName()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->getPackageName()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public bridge synthetic getTypeDecls()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getTypeDecls()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeDecls()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PACKAGEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
