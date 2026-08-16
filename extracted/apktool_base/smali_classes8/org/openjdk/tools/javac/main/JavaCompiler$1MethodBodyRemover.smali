.class Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;
.super Lorg/openjdk/tools/javac/tree/TreeTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/main/JavaCompiler;->removeMethodBodies(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodBodyRemover"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

.field final synthetic val$isInterface:Z


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/main/JavaCompiler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 13

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/main/JavaCompiler$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const-wide/16 v5, 0x2

    const-wide/16 v7, 0x5

    const-wide/16 v9, 0x0

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v11, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v7, v11

    cmp-long v4, v7, v9

    if-nez v4, :cond_1

    and-long v4, v11, v5

    cmp-long v4, v4, v9

    if-nez v4, :cond_6

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v4, v4, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->java_lang:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_6

    :cond_1
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    if-nez v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v11, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v7, v11

    cmp-long v4, v7, v9

    if-nez v4, :cond_3

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v7, v7, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-eq v4, v7, :cond_3

    and-long v4, v11, v5

    cmp-long v4, v4, v9

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v4, v4, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->java_lang:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_6

    :cond_3
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->val$isInterface:Z

    if-nez v3, :cond_5

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v11, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v7, v11

    cmp-long v4, v7, v9

    if-nez v4, :cond_5

    and-long v4, v11, v5

    cmp-long v4, v4, v9

    if-nez v4, :cond_6

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;->this$0:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v4, v4, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->java_lang:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_6

    :cond_5
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_6
    :goto_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v3, -0x21

    and-long/2addr v1, v3

    iput-wide v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, -0x11

    and-long/2addr v2, v4

    iput-wide v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    return-void
.end method
