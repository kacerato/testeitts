.class public Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/LabeledStatementTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCLabeledStatement"
.end annotation


# instance fields
.field public body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

.field public label:Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

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
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/TreeVisitor;->visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V

    return-void
.end method

.method public getKind()Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->LABELED_STATEMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object v0
.end method

.method public bridge synthetic getLabel()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->getLabel()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method

.method public bridge synthetic getStatement()Lorg/openjdk/source/tree/StatementTree;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->getStatement()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    return-object v0
.end method

.method public getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LABELLED:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object v0
.end method
