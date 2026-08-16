.class public Lorg/google/googlejavaformat/java/ImportOrderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;,
        Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;,
        Lorg/google/googlejavaformat/java/ImportOrderer$Import;
    }
.end annotation


# static fields
.field private static final CLASS_START:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPORT_OR_CLASS_START:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lineSeparator:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final toks:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CLASS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTERFACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ENUM:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/r1;->C(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/ImportOrderer;->CLASS_START:Lcom/google/common/collect/r1;

    const-string v0, "interface"

    const-string v1, "enum"

    const-string v2, "import"

    const-string v3, "class"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/collect/r1;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/ImportOrderer;->IMPORT_OR_CLASS_START:Lcom/google/common/collect/r1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "toks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-static {p1}, Lorg/google/googlejavaformat/Newlines;->guessLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/ImportOrderer;->lambda$reorderImports$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/google/googlejavaformat/java/ImportOrderer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    return-object p0
.end method

.method private findIdentifier(ILcom/google/common/collect/r1;)Lw2/C;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "identifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/r1<",
            "Ljava/lang/String;",
            ">;)",
            "Lw2/C<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isIdentifierToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object p1

    return-object p1
.end method

.method private isIdentifierToken(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNewlineToken(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isNewline()Z

    move-result p1

    return p1
.end method

.method private isSlashSlashCommentToken(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->isSlashSlashComment()Z

    move-result p1

    return p1
.end method

.method private isSpaceToken(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, " \t\u000c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static synthetic lambda$reorderImports$0(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private reorderImports()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/google/googlejavaformat/java/ImportOrderer;->IMPORT_OR_CLASS_START:Lcom/google/common/collect/r1;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/google/googlejavaformat/java/ImportOrderer;->findIdentifier(ILcom/google/common/collect/r1;)Lw2/C;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lw2/C;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "import"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-direct {p0, v2}, Lorg/google/googlejavaformat/java/ImportOrderer;->unindent(I)I

    move-result v3

    .line 7
    invoke-direct {p0, v2}, Lorg/google/googlejavaformat/java/ImportOrderer;->scanImports(I)Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;

    move-result-object v2

    .line 8
    iget v5, v2, Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->index:I

    .line 9
    invoke-direct {p0, v5, v0}, Lorg/google/googlejavaformat/java/ImportOrderer;->findIdentifier(ILcom/google/common/collect/r1;)Lw2/C;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lw2/C;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Lorg/google/googlejavaformat/java/FormatterException;

    const-string v1, "Imports not contiguous (perhaps a comment separates them?)"

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-direct {p0, v1, v3}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokString(II)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lorg/google/googlejavaformat/Newlines;->getLineEnding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_3
    iget-object v1, v2, Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->imports:Lcom/google/common/collect/x1;

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->reorderedImportsString(Lcom/google/common/collect/x1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-static {}, Lw2/e;->X()Lw2/e;

    move-result-object v2

    iget-object v3, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    invoke-direct {p0, v5, v3}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lw2/e;->V(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v2, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    iget-object v2, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-static {v2}, Lcom/google/common/collect/D1;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    .line 22
    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getPosition()I

    move-result v3

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->length()I

    move-result v2

    add-int/2addr v3, v2

    .line 23
    iget-object v2, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/google/googlejavaformat/java/c;

    invoke-direct {v3}, Lorg/google/googlejavaformat/java/c;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 25
    iget-object v2, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v2, Lcom/android/tools/r8/kotlin/h1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/h1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 27
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static reorderImports(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/google/googlejavaformat/java/ImportOrderer;->CLASS_START:Lcom/google/common/collect/r1;

    invoke-static {p0, v0}, Lorg/google/googlejavaformat/java/JavaInput;->buildToks(Ljava/lang/String;Lcom/google/common/collect/r1;)Lcom/google/common/collect/g1;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/google/googlejavaformat/java/ImportOrderer;

    invoke-direct {v1, p0, v0}, Lorg/google/googlejavaformat/java/ImportOrderer;-><init>(Ljava/lang/String;Lcom/google/common/collect/g1;)V

    invoke-direct {v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->reorderImports()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reorderedImportsString(Lcom/google/common/collect/x1;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x1<",
            "Lorg/google/googlejavaformat/java/ImportOrderer$Import;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "imports"

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;

    iget-boolean v0, v0, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/java/ImportOrderer$Import;

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, v2, Lorg/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private scanImported(I)Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isIdentifierToken(I)Z

    move-result v1

    invoke-static {v1}, Lw2/H;->g0(Z)V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    invoke-direct {v1, v0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isIdentifierToken(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/google/googlejavaformat/java/FormatterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse imported name, at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private scanImports(I)Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/x1;->g0()Lcom/google/common/collect/x1$a;

    move-result-object v0

    move v1, p1

    :cond_0
    iget-object v2, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge p1, v2, :cond_c

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "import"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, p1, 0x2

    :cond_1
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "static"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isIdentifierToken(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->scanImported(I)Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;

    move-result-object v1

    invoke-static {v1}, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->access$100(Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->access$200(Lorg/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_1
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_6
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isSlashSlashCommentToken(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_7
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isNewlineToken(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_8
    new-instance v4, Lorg/google/googlejavaformat/java/ImportOrderer$Import;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p0, v2, v3, p1}, Lorg/google/googlejavaformat/java/ImportOrderer$Import;-><init>(Lorg/google/googlejavaformat/java/ImportOrderer;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Lcom/google/common/collect/x1$a;->q(Ljava/lang/Object;)Lcom/google/common/collect/x1$a;

    move p1, v1

    :goto_2
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isNewlineToken(I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_a
    new-instance p1, Lorg/google/googlejavaformat/java/FormatterException;

    const-string v0, "Expected ; after import"

    invoke-direct {p1, v0}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lorg/google/googlejavaformat/java/FormatterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token after import: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;

    invoke-virtual {v0}, Lcom/google/common/collect/x1$a;->u()Lcom/google/common/collect/x1;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lorg/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;-><init>(Lcom/google/common/collect/x1;I)V

    return-object p1
.end method

.method private tokString(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tokenAt(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/g1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/JavaInput$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unindent(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    return p1
.end method
