.class public final Lcom/github/javaparser/StaticJavaParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final localConfiguration:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/github/javaparser/ParserConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/z0;

    invoke-direct {v0}, Lcom/github/javaparser/z0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/StaticJavaParser;->localConfiguration:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 1

    sget-object v0, Lcom/github/javaparser/StaticJavaParser;->localConfiguration:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method private static handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ParseResult<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    return-object p0

    :cond_0
    new-instance v0, Lcom/github/javaparser/ParseProblemException;

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/javaparser/ParseProblemException;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method private static newParser()Lcom/github/javaparser/JavaParser;
    .locals 2

    new-instance v0, Lcom/github/javaparser/JavaParser;

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/JavaParser;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-object v0
.end method

.method private static newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;
    .locals 2

    new-instance v0, Lcom/github/javaparser/JavaParserAdapter;

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParser()Lcom/github/javaparser/JavaParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/JavaParserAdapter;-><init>(Lcom/github/javaparser/JavaParser;)V

    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 9
    const-string v0, "Parameter file can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parse(Ljava/io/File;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    const-string v0, "Parameter file can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const-string v0, "Parameter encoding can\'t be null."

    invoke-static {p1, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/StaticJavaParser;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .line 4
    const-string v0, "Parameter in can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parse(Ljava/io/InputStream;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "in",
            "encoding"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "Parameter in can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    const-string v0, "Parameter encoding can\'t be null."

    invoke-static {p1, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/StaticJavaParser;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .line 16
    const-string v0, "Parameter reader can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parse(Ljava/io/Reader;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 18
    const-string v0, "Parameter code can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parse(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/nio/file/Path;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    const-string v0, "Parameter path can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parse(Ljava/nio/file/Path;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    const-string v0, "Parameter path can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    const-string v0, "Parameter encoding can\'t be null."

    invoke-static {p1, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/StaticJavaParser;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p0
.end method

.method public static parseAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/AnnotationExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotation"
        }
    .end annotation

    const-string v0, "Parameter annotation can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/AnnotationExpr;

    move-result-object p0

    return-object p0
.end method

.method public static parseAnnotationBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;"
        }
    .end annotation

    const-string v0, "Parameter body can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseAnnotationBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/BodyDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static parseArrayInitializerExpr(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayInitializerExpr"
        }
    .end annotation

    const-string v0, "Parameter arrayInitializerExpr can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseArrayInitializerExpr(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    move-result-object p0

    return-object p0
.end method

.method public static parseBlock(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "blockStatement"
        }
    .end annotation

    const-string v0, "Parameter blockStatement can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseBlock(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p0

    return-object p0
.end method

.method public static parseBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/BodyDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;"
        }
    .end annotation

    const-string v0, "Parameter body can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/BodyDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static parseClassOrInterfaceType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "Parameter type can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseClassOrInterfaceType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p0

    return-object p0
.end method

.method public static parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    const-string v0, "Parameter statement can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    move-result-object p0

    return-object p0
.end method

.method public static parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Parameter expression can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static parseImport(Ljava/lang/String;)Lcom/github/javaparser/ast/ImportDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    const-string v0, "Parameter importDeclaration can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseImport(Ljava/lang/String;)Lcom/github/javaparser/ast/ImportDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static parseJavadoc(Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    const-string v0, "Parameter content can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/github/javaparser/JavadocParser;->parse(Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;

    move-result-object p0

    return-object p0
.end method

.method public static parseMethodDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    const-string v0, "Parameter methodDeclaration can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseMethodDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static parseModuleDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDeclaration"
        }
    .end annotation

    const-string v0, "Parameter moduleDeclaration can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseModuleDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static parseModuleDirective(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDirective;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDirective"
        }
    .end annotation

    const-string v0, "Parameter moduleDirective can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseModuleDirective(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDirective;

    move-result-object p0

    return-object p0
.end method

.method public static parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    const-string v0, "Parameter qualifiedName can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p0

    return-object p0
.end method

.method public static parsePackageDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/PackageDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    const-string v0, "Parameter packageDeclaration can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parsePackageDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/PackageDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static parseParameter(Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    const-string v0, "Parameter parameter can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseParameter(Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p0

    return-object p0
.end method

.method public static parseResource(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "classLoader",
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    const-string v0, "Parameter classLoader can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    const-string v0, "Parameter path can\'t be null."

    invoke-static {p1, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    const-string v0, "Parameter encoding can\'t be null."

    invoke-static {p2, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/github/javaparser/JavaParser;->parseResource(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/StaticJavaParser;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p0
.end method

.method public static parseResource(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Parameter path can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseResource(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parseResource(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    const-string v0, "Parameter path can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const-string v0, "Parameter encoding can\'t be null."

    invoke-static {p1, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/github/javaparser/JavaParser;->parseResource(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/StaticJavaParser;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p0
.end method

.method public static parseSimpleName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "Parameter name can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseSimpleName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p0

    return-object p0
.end method

.method public static parseStatement(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statement"
        }
    .end annotation

    const-string v0, "Parameter statement can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseStatement(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p0

    return-object p0
.end method

.method public static parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "Parameter type can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public static parseTypeDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/TypeDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    const-string v0, "Parameter typeDeclaration can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseTypeDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/TypeDeclaration;

    move-result-object p0

    return-object p0
.end method

.method public static parseTypeParameter(Ljava/lang/String;)Lcom/github/javaparser/ast/type/TypeParameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    const-string v0, "Parameter typeParameter can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseTypeParameter(Ljava/lang/String;)Lcom/github/javaparser/ast/type/TypeParameter;

    move-result-object p0

    return-object p0
.end method

.method public static parseVariableDeclarationExpr(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    const-string v0, "Parameter declaration can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/github/javaparser/StaticJavaParser;->newParserAdapted()Lcom/github/javaparser/JavaParserAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;->parseVariableDeclarationExpr(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object p0

    return-object p0
.end method

.method public static setConfiguration(Lcom/github/javaparser/ParserConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    const-string v0, "Parameter configuration can\'t be null."

    invoke-static {p0, v0}, Lcom/github/javaparser/quality/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/github/javaparser/StaticJavaParser;->localConfiguration:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
