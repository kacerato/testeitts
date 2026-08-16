.class public Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;
.super Lorg/eclipse/jdt/core/formatter/CodeFormatter;
.source "SourceFile"


# static fields
.field public static DEBUG:Z = false

.field private static final FORMAT_TO_PARSER_KIND:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final K_COMMENTS_MASK:I = 0x70

.field private static final K_MASK:I = 0xff


# instance fields
.field private astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private formatRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jface/text/IRegion;",
            ">;"
        }
    .end annotation
.end field

.field private oldCommentFormatOption:Ljava/lang/Object;

.field private originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field sourceArray:[C

.field private sourceLevel:Ljava/lang/String;

.field private sourceString:Ljava/lang/String;

.field private tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field private workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->FORMAT_TO_PARSER_KIND:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-static {}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->getJavaConventionsSettings()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/eclipse/jdt/core/formatter/CodeFormatter;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->initOptions(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/Map;)V

    return-void
.end method

.method private applyFormatOff()V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getDisableFormatTokenPairs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/formatter/Token;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget v4, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    const/4 v5, 0x1

    aget-object v6, v1, v5

    iget v6, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findSourcePositionInLine(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatRegions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatRegions:Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v3}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v7

    invoke-interface {v3}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v8

    invoke-interface {v3}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v5

    if-lt v6, v7, :cond_6

    if-ge v8, v4, :cond_3

    goto :goto_2

    :cond_3
    if-gt v4, v7, :cond_4

    if-le v8, v6, :cond_1

    :cond_4
    if-ge v7, v4, :cond_5

    new-instance v3, Lorg/eclipse/jface/text/Region;

    sub-int v9, v4, v7

    invoke-direct {v3, v7, v9}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-ge v6, v8, :cond_1

    new-instance v3, Lorg/eclipse/jface/text/Region;

    add-int/lit8 v7, v6, 0x1

    sub-int/2addr v8, v6

    invoke-direct {v3, v7, v8}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :goto_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private canFormatComment(II)Z
    .locals 3

    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "false"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->oldCommentFormatOption:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, p1, 0xff

    if-ne v0, p2, :cond_2

    return v1

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "true"

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->oldCommentFormatOption:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private createDummyModuleInfoCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 7

    new-instance v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$1;

    invoke-direct {v5, p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$1;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;)V

    new-instance v6, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$2;

    const-string v3, "module-info.java"

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$2;-><init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IJavaProject;)V

    return-object v6
.end method

.method private createParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;
    .locals 3

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    const/16 v1, 0x80

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->createDummyModuleInfoCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceArray:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource([C)V

    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->FORMAT_TO_PARSER_KIND:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setKind(I)V

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p1

    const-string v1, "org.eclipse.jdt.core.compiler.source"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceLevel:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.doc.comment.support"

    const-string v2, "enabled"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.problem.enablePreviewFeatures"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.problem.reportPreviewFeatures"

    const-string v2, "ignore"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setCompilerOptions(Ljava/util/Map;)V

    return-object v0
.end method

.method private findHeader()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->setHeaderEndIndex(I)V

    :cond_1
    return-void
.end method

.method private formatComments(Ljava/lang/String;I)Lorg/eclipse/text/edits/TextEdit;
    .locals 7

    new-instance v0, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {v0}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->init(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceLevel:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eq p2, v3, :cond_7

    const/16 v3, 0x20

    if-eq p2, v3, :cond_4

    const/16 v3, 0x40

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v5, p2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v6, 0x3eb

    if-ne v5, v6, :cond_1

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->parseSourceCode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getCommentList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v6, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findSourcePositionInLine(I)I

    move-result v5

    invoke-virtual {v2, p2, v5, v4, v4}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;IZZ)I

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    move p2, v4

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p2, v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v5, v3, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_6

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleBlockComment(I)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v6, v3, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findSourcePositionInLine(I)I

    move-result v5

    invoke-virtual {v2, v3, v5, v4, v4}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;IZZ)I

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt v4, p2, :cond_b

    :goto_3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->applyFormatOff()V

    new-instance p2, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatRegions:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {p2, p1, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->setAlignChar(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->getEdits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_9

    return-object v0

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v0, p2}, Lorg/eclipse/text/edits/MultiTextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    goto :goto_5

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->processComment(Lorg/eclipse/jdt/internal/formatter/Token;)V

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v3, p2, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v5, 0x3e9

    if-ne v3, v5, :cond_e

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->handleLineComment(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_c

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p2, :cond_d

    :cond_c
    add-int/lit8 v4, v4, -0x1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_d
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v5, p2, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findSourcePositionInLine(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method private getOldCommentFormatOption(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "org.eclipse.jdt.core.formatter.comment.format_comments"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private hasErrors(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getRoot()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getProblems()[Lorg/eclipse/jdt/core/compiler/IProblem;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;I)Z
    .locals 3

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceArray:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0, v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;-><init>(Ljava/util/List;Ljava/lang/String;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenizeSource(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private initOptions(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "12"

    if-eqz p2, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->getOldCommentFormatOption(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->oldCommentFormatOption:Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    move-object v0, p2

    :cond_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceLevel:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->getJavaConventionsSettings()Ljava/util/Map;

    move-result-object p2

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    const-string p2, "true"

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->oldCommentFormatOption:Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceLevel:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->set(Ljava/util/Map;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->set(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private parseSourceCode(I)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 6

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x8

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->createParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->hasErrors(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    const/4 p1, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    filled-new-array {v0, v4, p1, v3, v1}, [I

    move-result-object p1

    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x5

    if-lt v0, v3, :cond_4

    return-object v2

    :cond_4
    aget v3, p1, v0

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->createParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->hasErrors(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v5

    if-nez v5, :cond_6

    if-ne v3, v1, :cond_5

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenizeSource(I)V

    :cond_5
    return-object v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private prepareComments()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceLevel:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getRoot()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getCommentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/CommentsPreparator;->finishUp()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Comment;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0
.end method

.method private prepareFormattedCode(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->init(Ljava/lang/String;I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->parseSourceCode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->findHeader()V

    .line 6
    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->prepareSpaces()V

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->prepareLineBreaks()V

    .line 8
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->prepareComments()V

    .line 9
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->prepareWraps(I)V

    .line 10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    return-object p1
.end method

.method private prepareLineBreaks()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->finishUp()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/formatter/OneLineEnforcer;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    return-void
.end method

.method private prepareSpaces()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/SpacePreparator;->finishUp()V

    return-void
.end method

.method private prepareWraps(I)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    invoke-direct {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->applyFormatOff()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->astRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatRegions:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->finishUp(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/List;)V

    return-void
.end method

.method private regionsSatisfiesPreconditions([Lorg/eclipse/jface/text/IRegion;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    return v0

    :cond_1
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    if-ltz v3, :cond_6

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v3

    if-ltz v3, :cond_6

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v2

    add-int/2addr v3, v2

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    move v4, v2

    :goto_1
    if-lt v4, v1, :cond_3

    return v2

    :cond_3
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v6

    if-le v3, v6, :cond_4

    return v0

    :cond_4
    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    if-ltz v3, :cond_6

    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v3

    if-ltz v3, :cond_6

    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v6

    add-int/2addr v3, v6

    if-le v3, p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v0
.end method

.method private tokenizeSource(I)V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceLevel:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJ[[C[[CZ)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceArray:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    and-int/lit16 p1, p1, 0x80

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result p1

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_1

    return-void

    :cond_1
    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->fromCurrent(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->fromCurrent(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateWorkingOptions(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->line_separator:Ljava/lang/String;

    :goto_0
    iput-object p2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->line_separator:Ljava/lang/String;

    if-nez p2, :cond_1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object p2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->line_separator:Ljava/lang/String;

    :cond_1
    iput p1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->initial_indentation_level:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_javadoc_comment:Z

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/16 p1, 0x40

    invoke-direct {p0, p3, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->canFormatComment(II)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    iput-boolean p1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_javadoc_comment:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_block_comment:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    invoke-direct {p0, p3, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->canFormatComment(II)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, p2

    :goto_2
    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_block_comment:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    invoke-direct {p0, p3, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->canFormatComment(II)Z

    move-result p3

    if-eqz p3, :cond_4

    move p2, v1

    :cond_4
    iput-boolean p2, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    return-void
.end method


# virtual methods
.method public createIndentationString(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->originalOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->indentation_size:I

    mul-int/2addr p1, v2

    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_size:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, p1, v3}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->appendIndentationString(Ljava/lang/StringBuilder;IIII)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public format(ILjava/lang/String;IIILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;
    .locals 7

    const/4 v0, 0x1

    .line 1
    new-array v4, v0, [Lorg/eclipse/jface/text/IRegion;

    new-instance v0, Lorg/eclipse/jface/text/Region;

    invoke-direct {v0, p3, p4}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    const/4 p3, 0x0

    aput-object v0, v4, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->format(ILjava/lang/String;[Lorg/eclipse/jface/text/IRegion;ILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1
.end method

.method public format(ILjava/lang/String;[Lorg/eclipse/jface/text/IRegion;ILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->regionsSatisfiesPreconditions([Lorg/eclipse/jface/text/IRegion;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatRegions:Ljava/util/List;

    .line 4
    invoke-direct {p0, p4, p5, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->updateWorkingOptions(ILjava/lang/String;I)V

    and-int/lit8 p3, p1, 0x70

    if-eqz p3, :cond_0

    .line 5
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatComments(Ljava/lang/String;I)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->prepareFormattedCode(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {p1}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 8
    :cond_2
    new-instance p1, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {p1}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    .line 9
    new-instance p2, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceString:Ljava/lang/String;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatRegions:Ljava/util/List;

    iget-object p5, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->workingOptions:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    .line 11
    invoke-direct {p2, p3, p4, p5, v0}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    .line 12
    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->tokenManager:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    .line 13
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/TextEditsBuilder;->getEdits()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_3

    return-object p1

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/text/edits/TextEdit;

    .line 14
    invoke-virtual {p1, p3}, Lorg/eclipse/text/edits/MultiTextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    goto :goto_1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public prepareFormattedCode(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lorg/eclipse/jface/text/IRegion;

    new-instance v1, Lorg/eclipse/jface/text/Region;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/eclipse/jface/text/Region;-><init>(II)V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->formatRegions:Ljava/util/List;

    .line 2
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->prepareFormattedCode(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->initOptions(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;Ljava/util/Map;)V

    return-void
.end method
