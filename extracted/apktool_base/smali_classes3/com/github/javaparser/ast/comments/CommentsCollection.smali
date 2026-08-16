.class public Lcom/github/javaparser/ast/comments/CommentsCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final comments:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentsToCopy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/LineComment;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getLineComments$1(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/LineComment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getJavadocComments$6(Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/comments/CommentsCollection;Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$minus$9(Lcom/github/javaparser/ast/comments/CommentsCollection;Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d()Ljava/util/TreeSet;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getBlockComments$5()Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Ljava/util/TreeSet;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getLineComments$2()Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/BlockComment;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getBlockComments$4(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/BlockComment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getBlockComments$3(Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h()Ljava/util/TreeSet;
    .locals 1

    invoke-static {}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getJavadocComments$8()Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getJavadocComments$7(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->lambda$getLineComments$0(Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getBlockComments$3(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/comments/BlockComment;

    return p0
.end method

.method private static synthetic lambda$getBlockComments$4(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/BlockComment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/comments/BlockComment;

    return-object p0
.end method

.method private static synthetic lambda$getBlockComments$5()Ljava/util/TreeSet;
    .locals 2

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic lambda$getJavadocComments$6(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/comments/JavadocComment;

    return p0
.end method

.method private static synthetic lambda$getJavadocComments$7(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/comments/JavadocComment;

    return-object p0
.end method

.method private static synthetic lambda$getJavadocComments$8()Ljava/util/TreeSet;
    .locals 2

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic lambda$getLineComments$0(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/comments/LineComment;

    return p0
.end method

.method private static synthetic lambda$getLineComments$1(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/LineComment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/comments/LineComment;

    return-object p0
.end method

.method private static synthetic lambda$getLineComments$2()Ljava/util/TreeSet;
    .locals 2

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/github/javaparser/ast/Node;->NODE_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic lambda$minus$9(Lcom/github/javaparser/ast/comments/CommentsCollection;Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "other",
            "comment"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/comments/CommentsCollection;->contains(Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addComment(Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->getComments()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/Range;

    iget-object v3, v2, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object v4, p1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    invoke-virtual {v3, v4}, Lcom/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget v3, v2, Lcom/github/javaparser/Position;->line:I

    iget-object v4, p1, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    iget v5, v4, Lcom/github/javaparser/Position;->line:I

    if-ne v3, v5, :cond_1

    iget v2, v2, Lcom/github/javaparser/Position;->column:I

    iget v3, v4, Lcom/github/javaparser/Position;->column:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public copy()Lcom/github/javaparser/ast/comments/CommentsCollection;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/comments/CommentsCollection;

    iget-object v1, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/comments/CommentsCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBlockComments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/ast/comments/BlockComment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/e;

    invoke-direct {v1}, La0/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/f;

    invoke-direct {v1}, La0/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/g;

    invoke-direct {v1}, La0/g;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getComments()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getJavadocComments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/ast/comments/JavadocComment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/h;

    invoke-direct {v1}, La0/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/i;

    invoke-direct {v1}, La0/i;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/j;

    invoke-direct {v1}, La0/j;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getLineComments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/ast/comments/LineComment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/a;

    invoke-direct {v1}, La0/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/b;

    invoke-direct {v1}, La0/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La0/c;

    invoke-direct {v1}, La0/c;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public minus(Lcom/github/javaparser/ast/comments/CommentsCollection;)Lcom/github/javaparser/ast/comments/CommentsCollection;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lcom/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    iget-object v1, v0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, La0/d;

    invoke-direct {v3, p1}, La0/d;-><init>(Lcom/github/javaparser/ast/comments/CommentsCollection;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/comments/CommentsCollection;->comments:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method
