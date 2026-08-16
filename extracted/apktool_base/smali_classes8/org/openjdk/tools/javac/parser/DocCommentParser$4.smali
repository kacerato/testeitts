.class Lorg/openjdk/tools/javac/parser/DocCommentParser$4;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$4;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

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

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$4;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$4;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newDocRootTree()Lorg/openjdk/tools/javac/tree/DCTree$DCDocRoot;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;->REMOVE_ALL:Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->access$000(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;)Lorg/openjdk/tools/javac/tree/DCTree;

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$4;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.unexpected.content"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
