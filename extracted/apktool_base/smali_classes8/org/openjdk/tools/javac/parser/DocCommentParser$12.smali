.class Lorg/openjdk/tools/javac/parser/DocCommentParser$12;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    return-void
.end method


# virtual methods
.method public parse(I)Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->identifier()Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v3, v2, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.gt.expected"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$12;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newParamTree(ZLorg/openjdk/source/doctree/IdentifierTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCParam;

    move-result-object p1

    return-object p1
.end method
