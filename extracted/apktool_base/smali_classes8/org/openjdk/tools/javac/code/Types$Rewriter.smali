.class Lorg/openjdk/tools/javac/code/Types$Rewriter;
.super Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rewriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$UnaryVisitor<",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# instance fields
.field high:Z

.field rewriteTypeVars:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;-><init>()V

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->high:Z

    iput-boolean p3, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->rewriteTypeVars:Z

    return-void
.end method

.method private rewriteAsWildcardType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/Types$25;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid bound kind "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean p3, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1, p3, p2}, Lorg/openjdk/tools/javac/code/Types;->access$1400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->B(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->access$1400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    iget-boolean p3, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->B(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->access$1300(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1, p3, p2}, Lorg/openjdk/tools/javac/code/Types;->access$1300(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1, p3, p2}, Lorg/openjdk/tools/javac/code/Types;->access$1300(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public B(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    :cond_0
    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getExtendsBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;->getSuperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->high:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public bridge synthetic visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$CapturedType;->wildcard:Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 3
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 4
    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    .line 6
    :goto_0
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$CapturedType;->wildcard:Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-direct {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->rewriteAsWildcardType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    .line 2
    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    .line 4
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_0
    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 7
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 8
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 9
    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-boolean p2, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->rewriteTypeVars:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->contains(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$Rewriter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    .line 4
    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    .line 6
    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/code/BoundKind;->EXTENDS:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-direct {p0, p2, p1, v0}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->rewriteAsWildcardType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->bound:Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-direct {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/code/Types$Rewriter;->rewriteAsWildcardType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_0
    return-object p1
.end method
