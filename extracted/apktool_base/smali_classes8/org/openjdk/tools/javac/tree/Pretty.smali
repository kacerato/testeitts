.class public Lorg/openjdk/tools/javac/tree/Pretty;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;
    }
.end annotation


# static fields
.field private static final PREFERRED_LENGTH:I = 0x14

.field private static final trimSequence:Ljava/lang/String; = "[...]"


# instance fields
.field docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

.field enclClassName:Lorg/openjdk/tools/javac/util/Name;

.field lineSep:Ljava/lang/String;

.field lmargin:I

.field out:Ljava/io/Writer;

.field prec:I

.field private final sourceOutput:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->width:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lmargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lineSep:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/tree/Pretty;->sourceOutput:Z

    return-void
.end method

.method public static lineEndPos(Ljava/lang/String;I)I
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_0
    return p1
.end method

.method private printBaseElementType(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->innermostType(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method private printBrackets(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    move-object p1, v0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static toSimpleString(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->toSimpleString(Lorg/openjdk/tools/javac/tree/JCTree;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSimpleString(Lorg/openjdk/tools/javac/tree/JCTree;I)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/tree/Pretty;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/\\*missing\\*/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x5

    mul-int/lit8 v0, p1, 0x2

    .line 6
    div-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[...]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public align()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lmargin:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public indent()V
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lmargin:I

    iget v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lmargin:I

    return-void
.end method

.method public isEnumerator(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUsed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;-><init>(Lorg/openjdk/tools/javac/tree/Pretty;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean p1, v0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    return p1
.end method

.method public open(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/Pretty$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "++"

    const-string v1, "--"

    const-string v2, "+"

    const-string v3, "-"

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :pswitch_0
    const-string p1, "%"

    return-object p1

    :pswitch_1
    const-string p1, "/"

    return-object p1

    :pswitch_2
    const-string p1, "*"

    return-object p1

    :pswitch_3
    return-object v3

    :pswitch_4
    return-object v2

    :pswitch_5
    const-string p1, ">>>"

    return-object p1

    :pswitch_6
    const-string p1, ">>"

    return-object p1

    :pswitch_7
    const-string p1, "<<"

    return-object p1

    :pswitch_8
    const-string p1, "&"

    return-object p1

    :pswitch_9
    const-string p1, "^"

    return-object p1

    :pswitch_a
    const-string p1, "|"

    return-object p1

    :pswitch_b
    const-string p1, ">="

    return-object p1

    :pswitch_c
    const-string p1, "<="

    return-object p1

    :pswitch_d
    const-string p1, ">"

    return-object p1

    :pswitch_e
    const-string p1, "<"

    return-object p1

    :pswitch_f
    const-string p1, "!="

    return-object p1

    :pswitch_10
    const-string p1, "=="

    return-object p1

    :pswitch_11
    const-string p1, "&&"

    return-object p1

    :pswitch_12
    const-string p1, "||"

    return-object p1

    :pswitch_13
    const-string p1, "<*nullchk*>"

    return-object p1

    :pswitch_14
    return-object v1

    :pswitch_15
    return-object v0

    :pswitch_16
    return-object v1

    :pswitch_17
    return-object v0

    :pswitch_18
    const-string p1, "~"

    return-object p1

    :pswitch_19
    const-string p1, "!"

    return-object p1

    :pswitch_1a
    return-object v3

    :pswitch_1b
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Convert;->escapeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printAnnotations(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printBlock(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->indent()V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStats(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->undent()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public printDocComment(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->getCommentText(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "/**"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->lineEndPos(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    const-string v2, " *"

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    const-string v2, " "

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->lineEndPos(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    const-string p1, " */"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    :cond_2
    return-void
.end method

.method public printEnumBody(Lorg/openjdk/tools/javac/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->indent()V

    const/4 v0, 0x1

    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->isEnumerator(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    iget-object v0, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->isEnumerator(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->undent()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-void
.end method

.method public printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    .line 2
    :try_start_0
    iput p2, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    if-nez p1, :cond_0

    .line 3
    const-string p1, "/*missing*/"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    iput v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    return-void

    .line 6
    :goto_1
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_2
    iput v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    .line 10
    throw p1
.end method

.method public printExprs(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    const-string v0, ", "

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public printExprs(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 3
    :goto_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printFlags(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "/*synthetic*/ "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flagNames(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    const-wide v0, 0x80000000fffL

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, " "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v0, 0x2000

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    const-string p1, "@"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-void
.end method

.method public printStats(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, " "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printTypeParameters(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string p1, ">"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public printUnit(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printDocComment(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PACKAGEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->asterisk:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v3, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/tree/Pretty;->isUsed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_4
    :goto_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    :cond_6
    return-void
.end method

.method public println()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public undent()V
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lmargin:I

    iget v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->lmargin:I

    return-void
.end method

.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/16 v2, 0xf

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    const-string v1, "."

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBaseElementType(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBrackets(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 1

    :try_start_0
    const-string v0, "@"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ">"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v2, ".<"

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 1

    :try_start_0
    const-string v0, "assert "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    const-string v0, " : "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->open(II)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    const-string v0, " = "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->open(II)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->noAssignOp()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 4

    const-string v0, " "

    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->opPrec(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I

    move-result v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->open(II)V

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 2

    :try_start_0
    iget-wide v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printFlags(J)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBlock(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 2

    :try_start_0
    const-string v0, "break"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->label:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->label:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitCase(Lorg/openjdk/tools/javac/tree/JCTree$JCCase;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_0

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "case "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_0
    const-string v0, ": "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->indent()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStats(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->undent()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)V
    .locals 1

    :try_start_0
    const-string v0, " catch ("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, ") "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printDocComment(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, -0x201

    and-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printFlags(J)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x200

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-wide/16 v7, 0x4000

    const-string v4, " extends "

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeParameters(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeParameters(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_2
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " implements "

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    :cond_3
    :goto_1
    const-string v1, " "

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printEnumBody(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBlock(Lorg/openjdk/tools/javac/util/List;)V

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_3
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->open(II)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    const-string v0, " ? "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, " : "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 2

    :try_start_0
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->label:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->label:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 2

    :try_start_0
    const-string v0, "do "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    const-string v0, " while "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitErroneous(Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;)V
    .locals 1

    :try_start_0
    const-string p1, "(ERROR)"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .locals 1

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitExports(Lorg/openjdk/tools/javac/tree/JCTree$JCExports;)V
    .locals 1

    :try_start_0
    const-string v0, "exports "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    const-string v0, " to "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 5

    const-string v0, "; "

    :try_start_0
    const-string v1, "for ("

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    :goto_0
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_0

    const-string v3, " = "

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    :cond_2
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_3
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string v0, ") "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 1

    :try_start_0
    const-string v0, "for ("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, " : "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, ") "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 1

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 2

    :try_start_0
    const-string v0, "if "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-eqz v0, :cond_1

    const-string v0, " else "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitImport(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V
    .locals 1

    :try_start_0
    const-string v0, "import "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v0, :cond_0

    const-string v0, "static "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    const-string v0, "["

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, "]"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 3

    :try_start_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->EXPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v0, ""

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    const-string v0, ","

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, ")->"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitLetExpr(Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(let "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V
    .locals 4

    const-string v0, "\""

    const-string v1, "\'"

    :try_start_0
    sget-object v2, Lorg/openjdk/tools/javac/tree/Pretty$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Convert;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "null"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Convert;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "F"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "L"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->sourceOutput:Z

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printDocComment(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeParameters(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " "

    if-ne v0, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " throws "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    :cond_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_5

    const-string v0, " default "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :cond_6
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitModifiers(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    iget-wide v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printFlags(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printDocComment(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->getModuleType()Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->OPEN:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    if-ne v0, v1, :cond_0

    const-string v0, "open "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "module "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

    if-nez p1, :cond_1

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBlock(Lorg/openjdk/tools/javac/util/List;)V

    :goto_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 6

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_4

    const-string v0, "new "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printBaseElementType(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x20

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_1

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_2

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    :cond_2
    const-string v5, "["

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v5, "]"

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printBrackets(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_5

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 6

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, "."

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    const-string v0, "new "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const-string v0, "/*enum*/"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBlock(Lorg/openjdk/tools/javac/util/List;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->enclClassName:Lorg/openjdk/tools/javac/util/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitOpens(Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;)V
    .locals 1

    :try_start_0
    const-string v0, "opens "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    const-string v0, " to "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printDocComment(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    const-string v0, "package "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 1

    :try_start_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitProvides(Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;)V
    .locals 1

    :try_start_0
    const-string v0, "provides "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->serviceName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, " with "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->implNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, "::"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_1

    :cond_1
    const-string p1, "new"

    :goto_1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitRequires(Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;)V
    .locals 1

    :try_start_0
    const-string v0, "requires "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isStaticPhase:Z

    if-eqz v0, :cond_0

    const-string v0, "static "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isTransitive:Z

    if-eqz v0, :cond_1

    const-string v0, "transitive "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 1

    :try_start_0
    const-string v0, "return"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitSkip(Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;)V
    .locals 1

    :try_start_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 2

    :try_start_0
    const-string v0, "switch "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    const-string v0, " {"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStats(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitSynchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;)V
    .locals 2

    :try_start_0
    const-string v0, "synchronized "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 1

    :try_start_0
    const-string v0, "throw "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printUnit(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 3

    :try_start_0
    const-string v0, "try "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->indent()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, ") "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_4

    const-string v0, " finally "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :goto_3
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;)V

    const-string p1, ">"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBaseElementType(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBrackets(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeBoundKind(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;)V
    .locals 1

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->open(II)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .locals 1

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/Pretty$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "error"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :pswitch_1
    const-string p1, "void"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "short"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "byte"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "boolean"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "char"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    const-string p1, "double"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "float"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    const-string p1, "long"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    const-string p1, "int"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public visitTypeIntersection(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;)V
    .locals 1

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    const-string v0, " & "

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " extends "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    const-string v0, " & "

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->open(II)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    const-string v0, " instanceof "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitTypeUnion(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;)V
    .locals 1

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    const-string v0, " | "

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExprs(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->opPrec(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I

    move-result v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->operatorName(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->open(II)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isPostUnaryOp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitUses(Lorg/openjdk/tools/javac/tree/JCTree$JCUses;)V
    .locals 1

    :try_start_0
    const-string v0, "uses "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->hasComment(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/Pretty;->align()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printDocComment(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, " "

    if-eqz v1, :cond_4

    :try_start_1
    const-string v0, "/*public static final*/ "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->sourceOutput:Z

    if-eqz v1, :cond_3

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " /*enum*/ "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printBlock(Lorg/openjdk/tools/javac/util/List;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, " /* = "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string p1, " */"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v5, 0x400000000L

    and-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    if-eqz v1, :cond_6

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/Pretty;->printTypeAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_8

    const-string v0, " = "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_8
    iget p1, p0, Lorg/openjdk/tools/javac/tree/Pretty;->prec:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    :goto_3
    return-void

    :goto_4
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 2

    :try_start_0
    const-string v0, "while "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    :goto_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V
    .locals 2

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
