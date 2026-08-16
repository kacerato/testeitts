.class Lorg/openjdk/tools/javac/comp/Check$Validator;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Validator"
.end annotation


# instance fields
.field checkRaw:Z

.field env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field isOuter:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Check;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-void
.end method


# virtual methods
.method public validateTree(Lorg/openjdk/tools/javac/tree/JCTree;ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->checkRaw:Z

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->checkRaw:Z

    iput-boolean p3, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->isOuter:Z

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkRaw(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->checkRaw:Z

    goto :goto_3

    :goto_1
    :try_start_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->checkRaw:Z

    throw p1

    :cond_1
    :goto_3
    return-void
.end method

.method public validateTrees(Lorg/openjdk/tools/javac/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;ZZ)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Check$Validator;->validateTree(Lorg/openjdk/tools/javac/tree/JCTree;ZZ)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check$Validator;->visitSelectInternal(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "improperly.formed.type.param.missing"

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitSelectInternal(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cant.select.static.class.from.param.type"

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :goto_0
    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 8

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->access$400(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v5, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v5, v2, :cond_0

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v5

    iget-object v6, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "not.within.bounds"

    invoke-virtual {v5, v4, v7, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Check;->access$500(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->java_lang_Class:Lorg/openjdk/tools/javac/util/Name;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->isOuter:Z

    if-eqz v6, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v4

    :goto_3
    invoke-virtual {p0, v3, v6, v5}, Lorg/openjdk/tools/javac/comp/Check$Validator;->validateTree(Lorg/openjdk/tools/javac/tree/JCTree;ZZ)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "improperly.formed.type.inner.raw.param"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check$Validator;->visitSelectInternal(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    :cond_7
    return-void
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->checkRaw:Z

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->isOuter:Z

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Check$Validator;->validateTree(Lorg/openjdk/tools/javac/tree/JCTree;ZZ)V

    return-void
.end method

.method public visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "void.not.allowed.here"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->isOuter:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check$Validator;->validateTrees(Lorg/openjdk/tools/javac/util/List;ZZ)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkClassBounds(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Check$Validator;->isOuter:Z

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Check$Validator;->validateTree(Lorg/openjdk/tools/javac/tree/JCTree;ZZ)V

    :cond_0
    return-void
.end method
