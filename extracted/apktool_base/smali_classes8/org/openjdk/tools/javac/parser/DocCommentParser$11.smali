.class Lorg/openjdk/tools/javac/parser/DocCommentParser$11;
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
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$11;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-direct {p0, p2, p3, p4}, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;-><init>(Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;Z)V

    return-void
.end method


# virtual methods
.method public parse(I)Lorg/openjdk/tools/javac/tree/DCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$11;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    sget-object v1, Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;->REMOVE_FIRST_SPACE:Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->access$000(Lorg/openjdk/tools/javac/parser/DocCommentParser;Lorg/openjdk/tools/javac/parser/DocCommentParser$WhitespaceRetentionPolicy;)Lorg/openjdk/tools/javac/tree/DCTree;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$11;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->nextChar()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$11;->this$0:Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/DocCommentParser;->m:Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/DocTreeMaker;

    move-result-object p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/DCTree$DCText;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/DocTreeMaker;->newLiteralTree(Lorg/openjdk/source/doctree/TextTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;

    move-result-object p1

    return-object p1
.end method
