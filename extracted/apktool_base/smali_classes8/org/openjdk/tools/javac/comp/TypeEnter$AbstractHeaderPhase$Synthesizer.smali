.class Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Synthesizer"
.end annotation


# instance fields
.field interfaceExpected:Z

.field msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field originalType:Lorg/openjdk/tools/javac/code/Type;

.field result:Lorg/openjdk/tools/javac/code/Type;

.field synthesizedSymbols:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Type;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizedSymbols:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->originalType:Lorg/openjdk/tools/javac/code/Type;

    iput-boolean p4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->interfaceExpected:Z

    return-void
.end method


# virtual methods
.method public synthesizeClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->interfaceExpected:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance p1, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;

    invoke-direct {p1, v1}, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    new-instance p1, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer$2;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->originalType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, p0, p2, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer$2;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizedSymbols:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizedSymbols:Lorg/openjdk/tools/javac/util/List;

    return-object v1
.end method

.method public synthesizeTyparams(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;I)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    const/4 v1, 0x1

    const-string v2, "T"

    if-ne p2, v1, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p2, v1, p1, v2}, Lorg/openjdk/tools/javac/code/Type$TypeVar;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v1, v3, p1, v4}, Lorg/openjdk/tools/javac/code/Type$TypeVar;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public visit(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    .line 2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public visit(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 5
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->visit(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizeClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->interfaceExpected:Z

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->interfaceExpected:Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->visit(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->interfaceExpected:Z

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizeClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->interfaceExpected:Z

    throw p1
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->this$1:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->visit(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizedSymbols:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizeTyparams(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;I)V

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->visit(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer$1;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer$1;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)V

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->result:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method
