.class public Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ExpressionStatementTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCExpressionStatement"
.end annotation


# instance fields
.field public expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V

    return-void
.end method

.method public bridge synthetic getExpression()Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EXEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/tree/Pretty;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
