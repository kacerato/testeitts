.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/SourcePrinter;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmComment;->lambda$prettyPrint$0(Lcom/github/javaparser/printer/SourcePrinter;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method

.method private static synthetic lambda$prettyPrint$0(Lcom/github/javaparser/printer/SourcePrinter;Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "printer",
            "c"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmComment;->process(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/SourcePrinter;)V

    return-void
.end method

.method public static process(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comment",
            "printer"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->normalizeEolInTextBlock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getFooter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method


# virtual methods
.method public prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/a;

    invoke-direct {v0, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/a;-><init>(Lcom/github/javaparser/printer/SourcePrinter;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
