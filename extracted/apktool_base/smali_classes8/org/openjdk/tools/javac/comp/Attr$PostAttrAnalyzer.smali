.class Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostAttrAnalyzer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method

.method private dummyMethodType()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->dummyMethodType(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method private dummyMethodType(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unknownType:Lorg/openjdk/tools/javac/code/Type;

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEIDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    .line 4
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    .line 6
    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 7
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p1, v1, v0, v2, v3}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object p1
.end method

.method private initTypeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->dummyMethodType(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unknownType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->dummyMethodType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->dummyMethodType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unknownSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :cond_0
    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->dummyMethodType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unknownType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 7

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->dummyMethodType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    :cond_1
    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unknownSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->dummyMethodType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;ILorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 7

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->initTypeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    const/4 v1, 0x0

    iput v1, v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous()Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    return-void
.end method
