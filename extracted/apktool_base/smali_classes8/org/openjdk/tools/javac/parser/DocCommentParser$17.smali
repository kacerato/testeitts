.class Lorg/openjdk/tools/javac/parser/DocCommentParser$17;
.super Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/parser/DocCommentParser;->initTagParsers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    return-void
.end method


# virtual methods
.method public parse(I)Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->identifier()Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->reference(Z)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v3, v2, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$17;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSerialFieldTree(Lorg/openjdk/source/doctree/IdentifierTree;Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;

    move-result-object p1

    return-object p1
.end method
