.class public Lcom/github/javaparser/ParserConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;,
        Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;,
        Lcom/github/javaparser/ParserConfiguration$LanguageLevel;
    }
.end annotation


# instance fields
.field private attributeComments:Z

.field private characterEncoding:Ljava/nio/charset/Charset;

.field private detectOriginalLineSeparator:Z

.field private doNotAssignCommentsPrecedingEmptyLines:Z

.field private ignoreAnnotationsWhenAttributingComments:Z

.field private languageLevel:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field private lexicalPreservationEnabled:Z

.field private preprocessUnicodeEscapes:Z

.field private final processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Supplier<",
            "Lcom/github/javaparser/Processor;",
            ">;>;"
        }
    .end annotation
.end field

.field private storeTokens:Z

.field private symbolResolver:Lcom/github/javaparser/resolution/SymbolResolver;

.field private tabSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->detectOriginalLineSeparator:Z

    iput-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->storeTokens:Z

    iput-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->attributeComments:Z

    iput-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->doNotAssignCommentsPrecedingEmptyLines:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/javaparser/ParserConfiguration;->ignoreAnnotationsWhenAttributingComments:Z

    iput-boolean v1, p0, Lcom/github/javaparser/ParserConfiguration;->lexicalPreservationEnabled:Z

    iput-boolean v1, p0, Lcom/github/javaparser/ParserConfiguration;->preprocessUnicodeEscapes:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/javaparser/ParserConfiguration;->symbolResolver:Lcom/github/javaparser/resolution/SymbolResolver;

    iput v0, p0, Lcom/github/javaparser/ParserConfiguration;->tabSize:I

    sget-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->POPULAR:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    iput-object v0, p0, Lcom/github/javaparser/ParserConfiguration;->languageLevel:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    sget-object v0, Lcom/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/github/javaparser/ParserConfiguration;->characterEncoding:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ParserConfiguration;->processors:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/b0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/b0;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/c0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/c0;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/d0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/d0;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/e0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/e0;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/f0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/f0;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/github/javaparser/g0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/g0;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/Processor;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ParserConfiguration;->lambda$new$2()Lcom/github/javaparser/Processor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/Processor;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ParserConfiguration;->lambda$new$1()Lcom/github/javaparser/Processor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/Processor;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ParserConfiguration;->lambda$new$0()Lcom/github/javaparser/Processor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/Processor;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ParserConfiguration;->lambda$new$5()Lcom/github/javaparser/Processor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/Processor;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ParserConfiguration;->lambda$new$4()Lcom/github/javaparser/Processor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/Processor;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ParserConfiguration;->lambda$new$3()Lcom/github/javaparser/Processor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()Lcom/github/javaparser/Processor;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;-><init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ParserConfiguration$1;)V

    return-object v0
.end method

.method private synthetic lambda$new$1()Lcom/github/javaparser/Processor;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;-><init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ParserConfiguration$1;)V

    return-object v0
.end method

.method private synthetic lambda$new$2()Lcom/github/javaparser/Processor;
    .locals 1

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ParserConfiguration$1;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-object v0
.end method

.method private synthetic lambda$new$3()Lcom/github/javaparser/Processor;
    .locals 1

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$2;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ParserConfiguration$2;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-object v0
.end method

.method private synthetic lambda$new$4()Lcom/github/javaparser/Processor;
    .locals 1

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$3;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ParserConfiguration$3;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-object v0
.end method

.method private synthetic lambda$new$5()Lcom/github/javaparser/Processor;
    .locals 1

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$4;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ParserConfiguration$4;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public getCharacterEncoding()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration;->characterEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getLanguageLevel()Lcom/github/javaparser/ParserConfiguration$LanguageLevel;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration;->languageLevel:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    return-object v0
.end method

.method public getProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/function/Supplier<",
            "Lcom/github/javaparser/Processor;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration;->processors:Ljava/util/List;

    return-object v0
.end method

.method public getSymbolResolver()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/SymbolResolver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration;->symbolResolver:Lcom/github/javaparser/resolution/SymbolResolver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getTabSize()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/ParserConfiguration;->tabSize:I

    return v0
.end method

.method public isAttributeComments()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->attributeComments:Z

    return v0
.end method

.method public isDetectOriginalLineSeparator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->detectOriginalLineSeparator:Z

    return v0
.end method

.method public isDoNotAssignCommentsPrecedingEmptyLines()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->doNotAssignCommentsPrecedingEmptyLines:Z

    return v0
.end method

.method public isIgnoreAnnotationsWhenAttributingComments()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->ignoreAnnotationsWhenAttributingComments:Z

    return v0
.end method

.method public isLexicalPreservationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->lexicalPreservationEnabled:Z

    return v0
.end method

.method public isPreprocessUnicodeEscapes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->preprocessUnicodeEscapes:Z

    return v0
.end method

.method public isStoreTokens()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ParserConfiguration;->storeTokens:Z

    return v0
.end method

.method public setAttributeComments(Z)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeComments"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/ParserConfiguration;->attributeComments:Z

    return-object p0
.end method

.method public setCharacterEncoding(Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "characterEncoding"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration;->characterEncoding:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setDetectOriginalLineSeparator(Z)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detectOriginalLineSeparator"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/ParserConfiguration;->detectOriginalLineSeparator:Z

    return-object p0
.end method

.method public setDoNotAssignCommentsPrecedingEmptyLines(Z)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doNotAssignCommentsPrecedingEmptyLines"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/ParserConfiguration;->doNotAssignCommentsPrecedingEmptyLines:Z

    return-object p0
.end method

.method public setIgnoreAnnotationsWhenAttributingComments(Z)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreAnnotationsWhenAttributingComments"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/ParserConfiguration;->ignoreAnnotationsWhenAttributingComments:Z

    return-object p0
.end method

.method public setLanguageLevel(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageLevel"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration;->languageLevel:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    return-object p0
.end method

.method public setLexicalPreservationEnabled(Z)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lexicalPreservationEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/ParserConfiguration;->lexicalPreservationEnabled:Z

    return-object p0
.end method

.method public setPreprocessUnicodeEscapes(Z)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preprocessUnicodeEscapes"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/ParserConfiguration;->preprocessUnicodeEscapes:Z

    return-object p0
.end method

.method public setStoreTokens(Z)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeTokens"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/ParserConfiguration;->storeTokens:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ParserConfiguration;->setAttributeComments(Z)Lcom/github/javaparser/ParserConfiguration;

    :cond_0
    return-object p0
.end method

.method public setSymbolResolver(Lcom/github/javaparser/resolution/SymbolResolver;)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "symbolResolver"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration;->symbolResolver:Lcom/github/javaparser/resolution/SymbolResolver;

    return-object p0
.end method

.method public setTabSize(I)Lcom/github/javaparser/ParserConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabSize"
        }
    .end annotation

    iput p1, p0, Lcom/github/javaparser/ParserConfiguration;->tabSize:I

    return-object p0
.end method
