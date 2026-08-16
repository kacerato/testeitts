.class Lorg/openjdk/tools/javac/parser/DocCommentParser$22;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$22;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

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

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$22;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->reference(Z)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$22;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$22;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$22;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newValueTree(Lorg/openjdk/source/doctree/ReferenceTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCValue;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.unexpected.content"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
