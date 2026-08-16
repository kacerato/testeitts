.class Lorg/openjdk/tools/javac/parser/DocCommentParser$13;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$13;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    return-void
.end method


# virtual methods
.method public parse(I)Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$13;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$13;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->reference(Z)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$13;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$13;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newProvidesTree(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCProvides;

    move-result-object p1

    return-object p1
.end method
