.class Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;
.super Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$UnaryVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    sget-object v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {p2, p1, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 3
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->lower:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    if-ne p2, v2, :cond_0

    const-string p2, ".1"

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 4
    :goto_0
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where.captured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->lower:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Type$CapturedType;->wildcard:Lorg/openjdk/tools/javac/code/Type$WildcardType;

    filled-new-array {p1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$CapturedType;->wildcard:Lorg/openjdk/tools/javac/code/Type$WildcardType;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    .line 7
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->lower:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    .line 8
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    sget-object v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->INTERSECTION:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {p2, p1, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "where.intersection"

    invoke-virtual {v2, v4, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Void;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    if-eqz p2, :cond_2

    .line 12
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    .line 15
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->addUsage(Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 16
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Void;

    .line 17
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq p2, v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Void;

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Void;

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->stripMetadataIfNeeded()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    sget-object v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {p2, p1, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_7

    .line 4
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    :goto_0
    instance-of v0, p2, Lorg/openjdk/tools/javac/code/Type$ErrorType;

    if-eqz v0, :cond_0

    .line 6
    check-cast p2, Lorg/openjdk/tools/javac/code/Type$ErrorType;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$ErrorType;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 7
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 8
    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 9
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->getBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 11
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->addUsage(Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 12
    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 13
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 14
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    .line 15
    :goto_3
    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 16
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where.typevar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v0, ".1"

    goto :goto_4

    :cond_5
    const-string v0, ""

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 17
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    filled-new-array {p1, p2, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 18
    invoke-virtual {v2, v0, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    sget-object v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->symbolPreprocessor:Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;->visit(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Void;

    goto :goto_5

    :cond_6
    xor-int/2addr v0, v2

    .line 22
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 23
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "where.fresh.typevar"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 24
    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    sget-object v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visit(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Void;

    :cond_7
    :goto_5
    return-object v1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
