.class Lorg/openjdk/tools/javac/parser/DocCommentParser$15;
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

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V

    return-void
.end method


# virtual methods
.method public parse(I)Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v1, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const-string v2, "dc.no.content"

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5

    const/16 v5, 0x22

    const/16 v6, 0x40

    if-eq v1, v5, :cond_3

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_2

    if-eq v1, v6, :cond_1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v0, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    const/16 v1, 0x23

    if-ne v0, v1, :cond_6

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->reference(Z)Lorg/openjdk/tools/javac/tree/DCTree$DCReference;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSeeTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSee;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean p1, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->newline:Z

    if-eqz p1, :cond_6

    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    invoke-direct {p1, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->blockContent()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSeeTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSee;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->quotedString()Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->skipWhitespace()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$15;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-char v2, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->ch:C

    if-eq v2, v6, :cond_4

    if-ne v2, v3, :cond_6

    iget v2, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget-object v3, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    array-length v3, v3

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_6

    :cond_4
    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newSeeTree(Ljava/util/List;)Lorg/openjdk/tools/javac/tree/DCTree$DCSee;

    move-result-object p1

    return-object p1

    :cond_5
    iget p1, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->bp:I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;->buf:[C

    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_6

    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    invoke-direct {p1, v2}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;

    const-string v0, "dc.unexpected.content"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
