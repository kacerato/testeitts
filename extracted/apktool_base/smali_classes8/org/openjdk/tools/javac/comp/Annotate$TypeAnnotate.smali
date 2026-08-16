.class Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Annotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeAnnotate"
.end annotation


# instance fields
.field private deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private final env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final sym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Annotate;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void
.end method


# virtual methods
.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Annotate;->enterTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Annotate;->enterTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Annotate;->enterTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Annotate;->enterTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;->deferPos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    throw p1
.end method
