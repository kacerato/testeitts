.class public Lcom/github/javaparser/JavaParserAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final parser:Lcom/github/javaparser/JavaParser;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/JavaParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "A non-null parser should be provided."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/github/javaparser/JavaParserAdapter;->parser:Lcom/github/javaparser/JavaParser;

    return-void
.end method

.method private handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;
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

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1

    :cond_0
    new-instance v0, Lcom/github/javaparser/ParseProblemException;

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/ParseProblemException;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method public static of(Lcom/github/javaparser/JavaParser;)Lcom/github/javaparser/JavaParserAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/JavaParserAdapter;

    invoke-direct {v0, p0}, Lcom/github/javaparser/JavaParserAdapter;-><init>(Lcom/github/javaparser/JavaParser;)V

    return-object v0
.end method


# virtual methods
.method public getParser()Lcom/github/javaparser/JavaParser;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/JavaParserAdapter;->parser:Lcom/github/javaparser/JavaParser;

    return-object v0
.end method

.method public getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/JavaParserAdapter;->parser:Lcom/github/javaparser/JavaParser;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaParser;->getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/File;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/io/File;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/io/InputStream;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p1
.end method

.method public parse(Ljava/io/Reader;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/io/Reader;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p1
.end method

.method public parse(Ljava/nio/file/Path;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/nio/file/Path;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p1
.end method

.method public parseAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/AnnotationExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/AnnotationExpr;

    return-object p1
.end method

.method public parseAnnotationBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/BodyDeclaration;
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

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseAnnotationBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/BodyDeclaration;

    return-object p1
.end method

.method public parseArrayInitializerExpr(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayInitializerExpr"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseArrayInitializerExpr(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    return-object p1
.end method

.method public parseBlock(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockStatement"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseBlock(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    return-object p1
.end method

.method public parseBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/BodyDeclaration;
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

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/BodyDeclaration;

    return-object p1
.end method

.method public parseClassOrInterfaceType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseClassOrInterfaceType(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object p1
.end method

.method public parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    return-object p1
.end method

.method public parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    return-object p1
.end method

.method public parseImport(Ljava/lang/String;)Lcom/github/javaparser/ast/ImportDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseImport(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/ImportDeclaration;

    return-object p1
.end method

.method public parseJavadoc(Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/JavadocParser;->parse(Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;

    move-result-object p1

    return-object p1
.end method

.method public parseMethodDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseMethodDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-object p1
.end method

.method public parseModuleDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDeclaration"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseModuleDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    return-object p1
.end method

.method public parseModuleDirective(Ljava/lang/String;)Lcom/github/javaparser/ast/modules/ModuleDirective;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDirective"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseModuleDirective(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/modules/ModuleDirective;

    return-object p1
.end method

.method public parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Name;

    return-object p1
.end method

.method public parsePackageDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/PackageDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parsePackageDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/PackageDeclaration;

    return-object p1
.end method

.method public parseParameter(Ljava/lang/String;)Lcom/github/javaparser/ast/body/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseParameter(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/Parameter;

    return-object p1
.end method

.method public parseResource(Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseResource(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p1
.end method

.method public parseSimpleName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseSimpleName(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/SimpleName;

    return-object p1
.end method

.method public parseStatement(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseStatement(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/Statement;

    return-object p1
.end method

.method public parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/Type;

    return-object p1
.end method

.method public parseTypeDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ast/body/TypeDeclaration;
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

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseTypeDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/TypeDeclaration;

    return-object p1
.end method

.method public parseTypeParameter(Ljava/lang/String;)Lcom/github/javaparser/ast/type/TypeParameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseTypeParameter(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/TypeParameter;

    return-object p1
.end method

.method public parseVariableDeclarationExpr(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaParserAdapter;->getParser()Lcom/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/JavaParser;->parseVariableDeclarationExpr(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/JavaParserAdapter;->handleResult(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    return-object p1
.end method
