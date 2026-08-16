.class Lorg/openjdk/tools/javac/parser/DocCommentParser$7;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

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

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const-string v2, "dc.no.content"

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_3

    const/16 v4, 0x22

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->quotedString()Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->inlineWord()Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v4, v2, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-eq v4, v3, :cond_1

    invoke-static {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->access$100(Lorg/openjdk/tools/javac/parser/DocCommentParser;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$7;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newIndexTree(Lorg/openjdk/source/doctree/DocTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    invoke-direct {p1, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    invoke-direct {p1, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
