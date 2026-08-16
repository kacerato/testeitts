.class Lcom/github/javaparser/CommentsInserter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final configuration:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/CommentsInserter;->configuration:Lcom/github/javaparser/ParserConfiguration;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/CommentsInserter;->lambda$insertComments$1(Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method private attributeLineCommentToNodeOrChild(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/LineComment;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "lineComment"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getBegin()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->line:I

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getBegin()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/Position;

    iget v2, v2, Lcom/github/javaparser/Position;->line:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/github/javaparser/ast/comments/Comment;

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    :cond_1
    return v3

    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/CommentsInserter;->attributeLineCommentToNodeOrChild(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/LineComment;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_4
    :goto_0
    return v1
.end method

.method private attributeLineCommentsOnSameLine(Ljava/util/TreeSet;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commentsToAttribute",
            "children"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/a;

    invoke-direct {v2}, Lcom/github/javaparser/a;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/b;

    invoke-direct {v2}, Lcom/github/javaparser/b;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/c;

    invoke-direct {v2, p0, p2, v0}, Lcom/github/javaparser/c;-><init>(Lcom/github/javaparser/CommentsInserter;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/CommentsInserter;->lambda$attributeLineCommentsOnSameLine$3(Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/Node;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/CommentsInserter;->lambda$null$4(Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method

.method private commentIsOnNextLine(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "c"
        }
    .end annotation

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/Range;

    iget-object p2, p2, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget p2, p2, Lcom/github/javaparser/Position;->line:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    iget-object p1, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget p1, p1, Lcom/github/javaparser/Position;->line:I

    if-ne p2, p1, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/Node;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/CommentsInserter;->lambda$insertComments$0(Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/CommentsInserter;Lcom/github/javaparser/ast/comments/Comment;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/CommentsInserter;->lambda$null$5(Lcom/github/javaparser/ast/comments/Comment;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic f(Lcom/github/javaparser/ast/Node;ZLcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/CommentsInserter;->lambda$insertComments$2(Lcom/github/javaparser/ast/Node;ZLcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/github/javaparser/CommentsInserter;Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/CommentsInserter;->lambda$attributeLineCommentsOnSameLine$6(Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method

.method private insertComments(Lcom/github/javaparser/ast/CompilationUnit;Ljava/util/TreeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "comments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "Ljava/util/TreeSet<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/comments/Comment;

    .line 4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    .line 7
    invoke-static {v1, v0}, Lcom/github/javaparser/utils/PositionUtils;->areInOrder(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 9
    invoke-virtual {p2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static synthetic lambda$attributeLineCommentsOnSameLine$3(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$attributeLineCommentsOnSameLine$6(Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "children",
            "attributedComments",
            "comment"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/g;

    invoke-direct {v0}, Lcom/github/javaparser/g;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/h;

    invoke-direct {v0, p0, p3, p2}, Lcom/github/javaparser/h;-><init>(Lcom/github/javaparser/CommentsInserter;Lcom/github/javaparser/ast/comments/Comment;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$insertComments$0(Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/Modifier;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$insertComments$1(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$insertComments$2(Lcom/github/javaparser/ast/Node;ZLcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "child",
            "attributeToAnnotation",
            "comment"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/github/javaparser/utils/PositionUtils;->nodeContains(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$null$4(Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "child"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$null$5(Lcom/github/javaparser/ast/comments/Comment;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "comment",
            "attributedComments",
            "child"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    invoke-virtual {p3}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    iget-object v1, v1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget v1, v1, Lcom/github/javaparser/Position;->line:I

    iget-object v0, v0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->line:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->asLineComment()Lcom/github/javaparser/ast/comments/LineComment;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/github/javaparser/CommentsInserter;->attributeLineCommentToNodeOrChild(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/LineComment;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private thereAreLinesBetween(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/github/javaparser/utils/PositionUtils;->areInOrder(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/CommentsInserter;->thereAreLinesBetween(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getEnd()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Position;

    iget p1, p1, Lcom/github/javaparser/Position;->line:I

    invoke-interface {p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getBegin()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/Position;

    iget p2, p2, Lcom/github/javaparser/Position;->line:I

    add-int/2addr p1, v1

    if-le p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public insertComments(Lcom/github/javaparser/ast/Node;Ljava/util/TreeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "commentsToAttribute"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            "Ljava/util/TreeSet<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    instance-of v0, p1, Lcom/github/javaparser/ast/CompilationUnit;

    if-eqz v0, :cond_1

    .line 12
    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/CommentsInserter;->insertComments(Lcom/github/javaparser/ast/CompilationUnit;Ljava/util/TreeSet;)V

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/d;

    invoke-direct {v1}, Lcom/github/javaparser/d;-><init>()V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 15
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 16
    iget-object v1, p0, Lcom/github/javaparser/CommentsInserter;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lcom/github/javaparser/ParserConfiguration;->isIgnoreAnnotationsWhenAttributingComments()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/Node;

    .line 18
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Lcom/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/e;

    invoke-direct {v6}, Lcom/github/javaparser/e;-><init>()V

    .line 20
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/f;

    invoke-direct {v6, v3, v1}, Lcom/github/javaparser/f;-><init>(Lcom/github/javaparser/ast/Node;Z)V

    .line 21
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 22
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 23
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-virtual {p2, v4}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 25
    invoke-virtual {p0, v3, v4}, Lcom/github/javaparser/CommentsInserter;->insertComments(Lcom/github/javaparser/ast/Node;Ljava/util/TreeSet;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/github/javaparser/CommentsInserter;->attributeLineCommentsOnSameLine(Ljava/util/TreeSet;Ljava/util/List;)V

    .line 27
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 28
    invoke-virtual {p2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/CommentsInserter;->commentIsOnNextLine(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 30
    invoke-virtual {p2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 32
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 33
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 35
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v0, p0, Lcom/github/javaparser/CommentsInserter;->configuration:Lcom/github/javaparser/ParserConfiguration;

    .line 37
    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->isIgnoreAnnotationsWhenAttributingComments()Z

    move-result v0

    .line 38
    invoke-static {v2, v0}, Lcom/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;Z)V

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    move-object v3, v2

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/ast/Node;

    .line 40
    instance-of v5, v4, Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v5, :cond_5

    .line 41
    move-object v3, v4

    check-cast v3, Lcom/github/javaparser/ast/comments/Comment;

    .line 42
    invoke-virtual {v3}, Lcom/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_4

    .line 43
    invoke-virtual {v4}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_4

    .line 44
    iget-object v5, p0, Lcom/github/javaparser/CommentsInserter;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v5}, Lcom/github/javaparser/ParserConfiguration;->isDoNotAssignCommentsPrecedingEmptyLines()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 45
    invoke-direct {p0, v3, v4}, Lcom/github/javaparser/CommentsInserter;->thereAreLinesBetween(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 46
    :cond_6
    invoke-virtual {v4, v3}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :cond_7
    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    .line 50
    invoke-virtual {v0}, Lcom/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 51
    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->addOrphanComment(Lcom/github/javaparser/ast/comments/Comment;)V

    goto :goto_2

    :cond_9
    return-void
.end method
