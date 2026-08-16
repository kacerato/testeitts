.class Lorg/openjdk/tools/javac/api/JavacTrees$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/DocSourcePositions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/api/JavacTrees;->getSourcePositions()Lorg/openjdk/source/util/DocSourcePositions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/api/JavacTrees;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/JavacTrees;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$1;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPosition(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/doctree/DocTree;)J
    .locals 5

    .line 3
    move-object v0, p2

    check-cast v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    .line 4
    instance-of v1, p3, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p3

    check-cast v1, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;->getEndPos(Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-long p1, v1

    return-wide p1

    .line 6
    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/api/JavacTrees$7;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    invoke-interface {p3}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTrees$1;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-static {v0, p3}, Lorg/openjdk/tools/javac/api/JavacTrees;->access$100(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/doctree/DocTree;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/api/JavacTrees$1;->getEndPosition(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/doctree/DocTree;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1

    .line 9
    :pswitch_0
    move-object v1, p3

    check-cast v1, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;

    .line 10
    iget-boolean v4, v1, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;->isTypeParameter:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/DCTree$DCParam;->getDescription()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    .line 11
    :cond_2
    :pswitch_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$1;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-static {v1, p3}, Lorg/openjdk/tools/javac/api/JavacTrees;->access$100(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/doctree/DocTree;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0, p1, p2, v1}, Lorg/openjdk/tools/javac/api/JavacTrees$1;->getEndPosition(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/doctree/DocTree;)J

    move-result-wide p1

    int-to-long v0, v3

    add-long/2addr p1, v0

    return-wide p1

    .line 13
    :cond_3
    check-cast p3, Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;

    .line 14
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iget p2, p3, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;->getTagName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, v2

    invoke-interface {p1, p2}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 15
    :pswitch_2
    check-cast p3, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    .line 16
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iget p2, p3, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    iget-object v0, p3, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;->name:Lorg/openjdk/javax/lang/model/element/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTrees$1;->this$0:Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-static {v1}, Lorg/openjdk/tools/javac/api/JavacTrees;->access$000(Lorg/openjdk/tools/javac/api/JavacTrees;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_4

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;->name:Lorg/openjdk/javax/lang/model/element/Name;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :cond_4
    add-int/2addr p2, v3

    invoke-interface {p1, p2}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 17
    :pswitch_3
    check-cast p3, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;

    .line 18
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iget p2, p3, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->body:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 19
    :pswitch_4
    check-cast p3, Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    .line 20
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iget p2, p3, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/DCTree$DCText;->text:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getEndPosition(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)J
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    .line 2
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getStartPosition(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/doctree/DocTree;)J
    .locals 0

    .line 2
    check-cast p3, Lorg/openjdk/tools/javac/tree/DCTree;

    check-cast p2, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/tree/DCTree;->getSourcePosition(Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStartPosition(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)J
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
