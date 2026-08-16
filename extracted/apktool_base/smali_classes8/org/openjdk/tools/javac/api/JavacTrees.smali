.class public Lorg/openjdk/tools/javac/api/JavacTrees;
.super Lorg/openjdk/source/util/DocTrees;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/api/JavacTrees$Copier;,
        Lorg/openjdk/tools/javac/api/JavacTrees$HtmlFileObject;
    }
.end annotation


# instance fields
.field private attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private breakIterator:Ljava/text/BreakIterator;

.field private docTreeMaker:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

.field private elements:Lorg/openjdk/tools/javac/model/JavacElements;

.field private enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field fuzzyMatcher:Lorg/openjdk/tools/javac/code/Types$TypeRelation;

.field private javacTaskImpl:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

.field private log:Lorg/openjdk/tools/javac/util/Log;

.field private memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

.field private modules:Lorg/openjdk/tools/javac/comp/Modules;

.field private names:Lorg/openjdk/tools/javac/util/Names;

.field private parser:Lorg/openjdk/tools/javac/parser/ParserFactory;

.field private resolve:Lorg/openjdk/tools/javac/comp/Resolve;

.field private syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private treeMaker:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/source/util/DocTrees;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTrees$3;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/JavacTrees$3;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->fuzzyMatcher:Lorg/openjdk/tools/javac/code/Types$TypeRelation;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->breakIterator:Ljava/text/BreakIterator;

    const-class v0, Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->init(Lorg/openjdk/tools/javac/util/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/api/JavacTrees;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/doctree/DocTree;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getLastChild(Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/doctree/DocTree;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/api/JavacTrees;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static asJavaFileObject(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2

    instance-of v0, p0, Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->HTML:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {p0, v1}, Lorg/openjdk/tools/javac/api/JavacTrees;->checkHtmlKind(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/openjdk/tools/javac/api/JavacTrees;->checkHtmlKind(Lorg/openjdk/javax/tools/FileObject;)V

    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTrees$HtmlFileObject;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/JavacTrees$HtmlFileObject;-><init>(Lorg/openjdk/javax/tools/FileObject;)V

    return-object v0
.end method

.method private attribExprToTree(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr;->attribExprToTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method private attribStatToTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr;->attribStatToTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method private attributeDocReference(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 8

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getAttrContext(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    :try_start_0
    iget-object v2, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v2, :cond_1

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->memberName:Lorg/openjdk/javax/lang/model/element/Name;

    check-cast v3, Lorg/openjdk/tools/javac/util/Name;

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v3, v2, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->treeMaker:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v4, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3, v4, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribIdent(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v3, v4, :cond_2

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v5, :cond_5

    :cond_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->memberName:Lorg/openjdk/javax/lang/model/element/Name;

    check-cast v5, Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/Abort; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v4, :cond_4

    if-eqz v5, :cond_4

    :catch_0
    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-object v0

    :cond_4
    move-object v2, v3

    move-object v3, v5

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->qualifierExpression:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_0

    :cond_6
    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->memberName:Lorg/openjdk/javax/lang/model/element/Name;

    check-cast v3, Lorg/openjdk/tools/javac/util/Name;
    :try_end_1
    .catch Lorg/openjdk/tools/javac/util/Abort; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v3, :cond_7

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-object v2

    :cond_7
    :try_start_2
    iget-object v4, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->paramTypes:Ljava/util/List;

    if-nez v4, :cond_8

    move-object p1, v0

    goto :goto_2

    :cond_8
    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v5, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->paramTypes:Ljava/util/List;

    check-cast v5, Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v7, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v7, v6, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_2
    iget-object v4, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_a

    invoke-virtual {p0, v2, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->findConstructor(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4

    goto :goto_3

    :cond_a
    invoke-direct {p0, v2, v3, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->findMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4
    :try_end_2
    .catch Lorg/openjdk/tools/javac/util/Abort; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz p1, :cond_c

    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-object v4

    :cond_c
    :try_start_3
    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;->paramTypes:Ljava/util/List;

    if-eqz p1, :cond_d

    move-object p1, v0

    goto :goto_4

    :cond_d
    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/api/JavacTrees;->findField(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_b

    if-eqz v4, :cond_e

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2
    :try_end_3
    .catch Lorg/openjdk/tools/javac/util/Abort; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_b

    :cond_e
    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-object p1

    :goto_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    throw p1
.end method

.method private attributeParamIdentifier(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/tools/javac/tree/DCTree$DCParam;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v1, v3, :cond_3

    sget-object v3, Lorg/openjdk/javax/lang/model/element/ElementKind;->CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/javax/lang/model/element/ElementKind;->isClass()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/openjdk/javax/lang/model/element/ElementKind;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getTypeParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;->isTypeParameter()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getTypeParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;->getName()Lorg/openjdk/source/doctree/IdentifierTree;

    move-result-object v3

    invoke-interface {v3}, Lorg/openjdk/source/doctree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v3

    if-ne v2, v3, :cond_6

    return-object v1

    :cond_7
    return-object v0
.end method

.method private static checkHtmlKind(Lorg/openjdk/javax/tools/FileObject;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->checkHtmlKind(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)V

    return-void
.end method

.method private static checkHtmlKind(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->HTML:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTML file expected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findField(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchField(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object p1

    return-object p1
.end method

.method private findMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    return-object p1
.end method

.method private getAttrContext(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/util/TreePath;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->javacTaskImpl:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->treeMaker:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->forToplevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->createCopier(Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/api/JavacTrees$Copier;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    move-object v3, p1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lorg/openjdk/source/util/TreePath;->getParentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/source/tree/Tree;

    sget-object v7, Lorg/openjdk/tools/javac/api/JavacTrees$7;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v6}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->getInitializer()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    if-ne v7, v6, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/comp/MemberEnter;->getInitEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0, v6, p1}, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->leafCopy:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->attribExprToTree(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    return-object p1

    :pswitch_0
    if-eqz v5, :cond_3

    :try_start_0
    iget-object v1, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-ne v1, v6, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    move-object v1, v6

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object p1, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->leafCopy:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, p1, v4, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->attribStatToTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object v6, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    goto :goto_3

    :catchall_0
    move-exception p1

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object v6, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    throw p1

    :cond_3
    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0, v6, p1}, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;->leafCopy:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, p1, v4, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->attribStatToTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_1
    move-object v3, v6

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    goto :goto_4

    :pswitch_2
    move-object v5, v6

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v6, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-virtual {v6, v5, v4}, Lorg/openjdk/tools/javac/comp/MemberEnter;->getMethodEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v4

    goto :goto_4

    :pswitch_3
    iget-object v4, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/comp/Enter;->getClassEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v1

    :pswitch_4
    iget-object v4, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/comp/Enter;->getTopLevelEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v4

    :cond_4
    :goto_4
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-virtual {p1, v3, v4}, Lorg/openjdk/tools/javac/comp/MemberEnter;->getInitEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v4

    :cond_6
    return-object v4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLastChild(Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/doctree/DocTree;
    .locals 3

    const/4 v0, 0x0

    filled-new-array {v0}, [Lorg/openjdk/source/doctree/DocTree;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/api/JavacTrees$2;

    invoke-direct {v2, p0, v1}, Lorg/openjdk/tools/javac/api/JavacTrees$2;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;[Lorg/openjdk/source/doctree/DocTree;)V

    invoke-interface {p1, v2, v0}, Lorg/openjdk/source/doctree/DocTree;->accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p1, v1, p1

    return-object p1
.end method

.method private hasParameterTypes(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasureRecursive(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->fuzzyMatch(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/code/Types;->isSameTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private init(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/model/JavacElements;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacElements;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->elements:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->treeMaker:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/MemberEnter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/MemberEnter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->docTreeMaker:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->parser:Lorg/openjdk/tools/javac/parser/ParserFactory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    const-class v0, Lorg/openjdk/source/util/JavacTask;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/util/JavacTask;

    instance-of v0, p1, Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->javacTaskImpl:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    :cond_0
    return-void
.end method

.method public static instance(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)Lorg/openjdk/tools/javac/api/JavacTrees;
    .locals 1

    .line 4
    instance-of v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lorg/openjdk/tools/javac/util/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/api/JavacTrees;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/JavacTrees;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static instance(Lorg/openjdk/javax/tools/JavaCompiler$CompilationTask;)Lorg/openjdk/tools/javac/api/JavacTrees;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->getContext()Lorg/openjdk/tools/javac/util/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/api/JavacTrees;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/JavacTrees;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/JavacTrees;
    .locals 1

    .line 7
    const-class v0, Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/api/JavacTrees;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/JavacTrees;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private makeTreePath(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/doctree/DocCommentTree;)Lorg/openjdk/source/util/TreePath;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTrees$5;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/openjdk/tools/javac/api/JavacTrees$5;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/javax/tools/JavaFileObject;)V

    new-instance v1, Lorg/openjdk/tools/javac/api/JavacTrees$6;

    invoke-direct {v1, p0, p3}, Lorg/openjdk/tools/javac/api/JavacTrees$6;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/source/doctree/DocCommentTree;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object p3

    iput-object p3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    new-instance p2, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    iget-object p3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-direct {p2, p1, p3}, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    iput-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    new-instance p2, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    new-instance p1, Lorg/openjdk/source/util/TreePath;

    invoke-direct {p1, v0}, Lorg/openjdk/source/util/TreePath;-><init>(Lorg/openjdk/source/tree/CompilationUnitTree;)V

    return-object p1
.end method

.method private printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/source/tree/CompilationUnitTree;)V
    .locals 2

    .line 3
    invoke-interface {p4}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p3, 0x0

    move-object p4, p3

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p4

    .line 5
    :goto_0
    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/api/JavacTrees$7;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const-string v1, "proc.messager"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 6
    :try_start_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MULTIPLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p3, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p4, :cond_4

    .line 10
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_4
    return-void

    :goto_2
    if-eqz p4, :cond_5

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 11
    :cond_5
    throw p1
.end method

.method private searchField(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_1

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-object v2

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p2, p3}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchField(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v0, :cond_4

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v0, p2, p3}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchField(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getInterfaces()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v0, p2, p3}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchField(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private searchMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, p2, :cond_2

    move-object v2, v3

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_6

    return-object v2

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_5

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {p0, v2, p3}, Lorg/openjdk/tools/javac/api/JavacTrees;->hasParameterTypes(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v2

    :cond_6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v0, :cond_7

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getInterfaces()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v2, p2, p3, p4}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    if-eqz v2, :cond_9

    return-object v2

    :cond_9
    :goto_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_a
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/api/JavacTrees;->searchMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    return-object v1
.end method


# virtual methods
.method public createCopier(Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/api/JavacTrees$Copier;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees$Copier;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    return-object v0
.end method

.method public findConstructor(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/api/JavacTrees;->hasParameterTypes(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public fuzzyMatch(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->fuzzyMatcher:Lorg/openjdk/tools/javac/code/Types$TypeRelation;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 6
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fuzzyMatch(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/api/JavacTrees;->fuzzyMatch(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    .line 4
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getBreakIterator()Ljava/text/BreakIterator;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->breakIterator:Ljava/text/BreakIterator;

    return-object v0
.end method

.method public getDocComment(Lorg/openjdk/source/util/TreePath;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->getCommentText(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocCommentTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/source/doctree/DocCommentTree;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getPath(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getDocCommentTree(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/doctree/DocCommentTree;

    move-result-object p1

    return-object p1
.end method

.method public getDocCommentTree(Lorg/openjdk/javax/lang/model/element/Element;Ljava/lang/String;)Lorg/openjdk/source/doctree/DocCommentTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->elements:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getPackageOf(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/PackageElement;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    .line 11
    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/PackageElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-interface {v0, v1, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getDocCommentTree(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/source/doctree/DocCommentTree;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDocCommentTree(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/source/doctree/DocCommentTree;
    .locals 3

    .line 15
    invoke-static {p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->asJavaFileObject(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    .line 16
    new-instance v1, Lorg/openjdk/tools/javac/util/DiagnosticSource;

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/util/DiagnosticSource;-><init>(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/AbstractLog;)V

    .line 17
    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTrees$4;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees$4;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/javax/tools/FileObject;)V

    .line 18
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->parser:Lorg/openjdk/tools/javac/parser/ParserFactory;

    invoke-direct {p1, v2, v1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;-><init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parse()Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    move-result-object p1

    return-object p1
.end method

.method public getDocCommentTree(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/doctree/DocCommentTree;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    .line 3
    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 5
    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->getCommentTree(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getDocTreeFactory()Lorg/openjdk/source/util/DocTreeFactory;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTrees;->getDocTreeFactory()Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object v0

    return-object v0
.end method

.method public getDocTreeFactory()Lorg/openjdk/tools/javac/tree/DocTreeMaker;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->docTreeMaker:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    return-object v0
.end method

.method public getDocTreePath(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/lang/model/element/PackageElement;)Lorg/openjdk/source/util/DocTreePath;
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->asJavaFileObject(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getDocCommentTree(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/source/doctree/DocCommentTree;

    move-result-object v0

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {p0, p2, p1, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->makeTreePath(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/source/doctree/DocCommentTree;)Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    new-instance p2, Lorg/openjdk/source/util/DocTreePath;

    invoke-direct {p2, p1, v0}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;)V

    return-object p2
.end method

.method public getElement(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/javax/lang/model/element/Element;
    .locals 2

    .line 12
    invoke-virtual {p1}, Lorg/openjdk/source/util/DocTreePath;->getLeaf()Lorg/openjdk/source/doctree/DocTree;

    move-result-object v0

    .line 13
    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p1}, Lorg/openjdk/source/util/DocTreePath;->getTreePath()Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->attributeDocReference(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/tools/javac/tree/DCTree$DCReference;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    instance-of v0, v0, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, Lorg/openjdk/source/util/DocTreePath;->getParentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/source/util/DocTreePath;->getLeaf()Lorg/openjdk/source/doctree/DocTree;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lorg/openjdk/source/util/DocTreePath;->getTreePath()Lorg/openjdk/source/util/TreePath;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/source/util/DocTreePath;->getParentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/source/util/DocTreePath;->getLeaf()Lorg/openjdk/source/doctree/DocTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->attributeParamIdentifier(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/tools/javac/tree/DCTree$DCParam;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/element/Element;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public getElement(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 3
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbolFor(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 5
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 7
    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v3, :cond_0

    .line 8
    iget-wide v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v5, 0x10000000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 10
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbolFor(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getParentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getFirstSentence(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->docTreeMaker:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->getFirstSentence(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLub(Lorg/openjdk/source/tree/CatchTree;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 2

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->UNION:Lorg/openjdk/javax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$UnionClassType;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UnionClassType;->getLub()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public getOriginalType(Lorg/openjdk/javax/lang/model/type/ErrorType;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type$ErrorType;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ErrorType;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    return-object p1
.end method

.method public getPath(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/source/util/TreePath;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->getPath(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/source/util/TreePath;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->getPath(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/source/util/TreePath;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->elements:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object p2, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/source/tree/CompilationUnitTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/source/tree/Tree;

    invoke-static {p2, p1}, Lorg/openjdk/source/util/TreePath;->getPath(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/openjdk/source/util/TreePath;->getPath(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getScope(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/tree/Scope;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getScope(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/api/JavacScope;

    move-result-object p1

    return-object p1
.end method

.method public getScope(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/api/JavacScope;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getAttrContext(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/api/JavacScope;->create(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/api/JavacScope;

    move-result-object p1

    return-object p1
.end method

.method public getSourcePositions()Lorg/openjdk/source/util/DocSourcePositions;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/api/JavacTrees$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/JavacTrees$1;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;)V

    return-object v0
.end method

.method public bridge synthetic getSourcePositions()Lorg/openjdk/source/util/SourcePositions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTrees;->getSourcePositions()Lorg/openjdk/source/util/DocSourcePositions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTree(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/source/tree/ClassTree;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTree(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Lorg/openjdk/source/tree/MethodTree;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/source/tree/Tree;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/source/tree/Tree;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/source/tree/Tree;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public getTree(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    return-object p1
.end method

.method public getTree(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    return-object p1
.end method

.method public getTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public getTree(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->elements:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p1
.end method

.method public getTypeMirror(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->stripMetadataIfNeeded()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isAccessible(Lorg/openjdk/source/tree/Scope;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/type/DeclaredType;)Z
    .locals 2

    .line 4
    instance-of v0, p1, Lorg/openjdk/tools/javac/api/JavacScope;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lorg/openjdk/tools/javac/api/JavacScope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    check-cast p3, Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p3, p2, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAccessible(Lorg/openjdk/source/tree/Scope;Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/openjdk/tools/javac/api/JavacScope;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/openjdk/tools/javac/api/JavacScope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/api/JavacScope;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/tree/CompilationUnitTree;)V
    .locals 0

    .line 2
    check-cast p3, Lorg/openjdk/tools/javac/tree/DCTree;

    check-cast p4, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/tree/DCTree;->pos(Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/openjdk/tools/javac/api/JavacTrees;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    return-void
.end method

.method public printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/tree/CompilationUnitTree;)V
    .locals 0

    .line 1
    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/api/JavacTrees;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    return-void
.end method

.method public setBreakIterator(Ljava/text/BreakIterator;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees;->breakIterator:Ljava/text/BreakIterator;

    return-void
.end method

.method public updateContext(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTrees;->init(Lorg/openjdk/tools/javac/util/Context;)V

    return-void
.end method
