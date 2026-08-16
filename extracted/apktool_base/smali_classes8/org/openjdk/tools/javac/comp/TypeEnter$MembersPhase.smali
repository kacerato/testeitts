.class final Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;
.super Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MembersPhase"
.end annotation


# instance fields
.field private completing:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

.field private todo:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->MEMBERS_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->todo:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private addEnumMembers(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    const-wide/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v6, v0, Lorg/openjdk/tools/javac/util/Names;->values:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/MemberEnter;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v5, v0, Lorg/openjdk/tools/javac/util/Names;->valueOf:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    const-wide v1, 0x200008000L

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v8

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v1, v2, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/MemberEnter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method


# virtual methods
.method public doCompleteEnvs(Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->todo:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->todo:Lorg/openjdk/tools/javac/util/List;

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->completing:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->completing:Z

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->todo:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->todo:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->todo:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->doCompleteEnvs(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->completing:Z

    return-void

    :goto_1
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->completing:Z

    throw v0
.end method

.method public finishClass(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->addEnumMembers(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/MemberEnter;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isAnnotationType()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isCompleted()Z

    move-result p2

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Annotate;->annotationTypeSourceCompleter()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->setAnnotationTypeMetadata(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;)V

    :cond_1
    return-void
.end method

.method public runPhase(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v13, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v13, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v14, v3

    check-cast v14, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v3

    const-wide/16 v15, 0x200

    and-long/2addr v3, v15

    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    const/4 v12, 0x0

    if-nez v3, :cond_5

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->hasConstructors(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v6, v13, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object v9, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v9, :cond_2

    iget-object v3, v9, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v3, v4, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v12

    :goto_0
    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v4

    iget-object v5, v13, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v9, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4, v5, v9}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iget-object v10, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v10

    const-wide v19, 0x400000000L

    and-long v10, v10, v19

    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v7, :cond_1

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    goto :goto_1

    :cond_1
    move v8, v12

    :goto_1
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    move/from16 v22, v8

    move-object v7, v9

    move-wide/from16 v20, v10

    move v8, v3

    move-object v10, v4

    move-object v9, v5

    goto :goto_2

    :cond_2
    move-object v9, v3

    move-object v7, v4

    move-object v10, v5

    move/from16 v22, v12

    move-wide/from16 v20, v17

    goto :goto_2

    :cond_3
    move-object v9, v3

    move-object v7, v4

    move-object v10, v5

    move/from16 v22, v12

    move-wide/from16 v20, v17

    const/4 v6, 0x0

    :goto_2
    if-eqz v8, :cond_5

    if-eqz v6, :cond_4

    iget-object v3, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-object v6, v3

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    iget v5, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    move-object v5, v13

    move-object v8, v9

    move-object v9, v10

    move-wide/from16 v10, v20

    move v15, v12

    move/from16 v12, v22

    invoke-virtual/range {v3 .. v12}, Lorg/openjdk/tools/javac/comp/TypeEnter;->DefaultConstructor(Lorg/openjdk/tools/javac/tree/TreeMaker;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;JZ)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    iget-object v4, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    goto :goto_4

    :cond_5
    move v15, v12

    :goto_4
    new-instance v9, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v3

    iget-object v6, v3, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, v13, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const-wide/32 v4, 0x40010

    move-object v3, v9

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput v15, v9, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v3, v9}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-wide v3, v13, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v5, 0x200

    and-long/2addr v3, v5

    cmp-long v3, v3, v17

    if-nez v3, :cond_6

    iget-object v3, v14, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v9, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v3

    iget-object v6, v3, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, v14, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    const-wide/32 v4, 0x40010

    move-object v3, v9

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput v15, v9, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v3, v9}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_6
    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->finishClass(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-boolean v3, v2, Lorg/openjdk/tools/javac/comp/TypeEnter;->allowTypeAnnos:Z

    if-eqz v3, :cond_7

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1500(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/TypeAnnotations;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->organizeTypeAnnotationsSignatures(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1500(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/TypeAnnotations;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->validateTypeAnnotationsSignatures(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    :cond_7
    return-void
.end method
