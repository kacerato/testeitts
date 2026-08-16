.class public abstract Lorg/openjdk/tools/javac/tree/DCTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/DocTree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/DCTree$DCVersion;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCValue;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCUses;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownInlineTag;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCUnknownBlockTag;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCThrows;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCText;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCStartElement;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCSince;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCSerialField;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCSerialData;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCSerial;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCSee;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCReturn;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCReference;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCProvides;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCParam;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCLiteral;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCLink;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCInheritDoc;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCIndex;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCIdentifier;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCHidden;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCEntity;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCEndElement;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCDocRoot;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCDeprecated;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCComment;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCAuthor;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCAttribute;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCInlineTag;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCBlockTag;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;,
        Lorg/openjdk/tools/javac/tree/DCTree$DCEndPosTree;
    }
.end annotation


# instance fields
.field public pos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSourcePosition(Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;)J
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iget v0, p0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    invoke-interface {p1, v0}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public pos(Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    iget v1, p0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    invoke-interface {p1, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getSourcePos(I)I

    move-result p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/tree/DocPretty;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V
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
