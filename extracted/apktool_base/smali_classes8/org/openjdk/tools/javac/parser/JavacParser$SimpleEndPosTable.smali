.class public Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;
.super Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavacParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEndPosTable"
.end annotation


# instance fields
.field private final endPosMap:Lorg/openjdk/tools/javac/util/IntHashTable;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/JavacParser;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;-><init>(Lorg/openjdk/tools/javac/parser/JavacParser;)V

    new-instance p1, Lorg/openjdk/tools/javac/util/IntHashTable;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/IntHashTable;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;->endPosMap:Lorg/openjdk/tools/javac/util/IntHashTable;

    return-void
.end method


# virtual methods
.method public getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;->endPosMap:Lorg/openjdk/tools/javac/util/IntHashTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/IntHashTable;->lookup(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/IntHashTable;->getFromIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public replaceTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;->endPosMap:Lorg/openjdk/tools/javac/util/IntHashTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/IntHashTable;->remove(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return p1

    :cond_0
    return v0
.end method

.method public storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;->endPosMap:Lorg/openjdk/tools/javac/util/IntHashTable;

    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-le v1, p2, :cond_0

    move p2, v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/IntHashTable;->lookup(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/util/IntHashTable;->putAtIndex(Ljava/lang/Object;II)I

    return-void
.end method

.method public to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->parser:Lorg/openjdk/tools/javac/parser/JavacParser;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-object p1
.end method

.method public toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->parser:Lorg/openjdk/tools/javac/parser/JavacParser;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-object p1
.end method
