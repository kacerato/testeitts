package com.github.javaparser;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.PackageDeclaration;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.ArrayInitializerExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.modules.ModuleDeclaration;
import com.github.javaparser.ast.modules.ModuleDirective;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.ExplicitConstructorInvocationStmt;
import com.github.javaparser.ast.stmt.Statement;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.utils.Utils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public final class JavaParser {
    private GeneratedJavaParser astParser;
    private final ParserConfiguration configuration;

    public JavaParser() {
        this(new ParserConfiguration());
    }

    private GeneratedJavaParser getParserForProvider(Provider provider) {
        GeneratedJavaParser generatedJavaParser = this.astParser;
        if (generatedJavaParser == null) {
            this.astParser = new GeneratedJavaParser(provider);
        } else {
            generatedJavaParser.reset(provider);
        }
        this.astParser.setTabSize(this.configuration.getTabSize());
        this.astParser.setStoreTokens(this.configuration.isStoreTokens());
        ParserConfiguration.LanguageLevel languageLevel = this.configuration.getLanguageLevel();
        if (languageLevel != null && languageLevel.isYieldSupported()) {
            this.astParser.setYieldSupported();
        }
        return this.astParser;
    }

    public static void lambda$parse$0(final File file, final Charset encoding, CompilationUnit cu) {
        cu.setStorage(file.toPath(), encoding);
    }

    public void lambda$parse$1(final File file, CompilationUnit cu) {
        cu.setStorage(file.toPath(), this.configuration.getCharacterEncoding());
    }

    public void lambda$parse$3(final Path path, CompilationUnit cu) {
        cu.setStorage(path, this.configuration.getCharacterEncoding());
    }

    public ParserConfiguration getParserConfiguration() {
        return this.configuration;
    }

    public <N extends Node> ParseResult<N> parse(ParseStart<N> start, Provider provider) {
        Utils.assertNotNull(start);
        Utils.assertNotNull(provider);
        List list = (List) this.configuration.getProcessors().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (Processor) ((Supplier) obj).get();
            }
        }).collect(Collectors.toList());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            provider = ((Processor) it.next()).preProcess(provider);
        }
        GeneratedJavaParser parserForProvider = getParserForProvider(provider);
        try {
            try {
                ParseResult<N> parseResult = new ParseResult<>(start.parse(parserForProvider), parserForProvider.problems, parserForProvider.getCommentsCollection());
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    ((Processor) it2.next()).postProcess(parseResult, this.configuration);
                }
                parseResult.getProblems().sort(Problem.PROBLEM_BY_BEGIN_POSITION);
                try {
                    provider.close();
                } catch (IOException unused) {
                }
                return parseResult;
            } catch (Throwable th2) {
                try {
                    provider.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        } catch (Exception e10) {
            parserForProvider.problems.add(new Problem(e10.getMessage() == null ? "Unknown error" : e10.getMessage(), null, e10));
            ParseResult<N> parseResult2 = new ParseResult<>(null, parserForProvider.problems, parserForProvider.getCommentsCollection());
            try {
                provider.close();
            } catch (IOException unused3) {
            }
            return parseResult2;
        }
    }

    public ParseResult<AnnotationExpr> parseAnnotation(final String annotation) {
        return parse(ParseStart.ANNOTATION, Providers.provider(annotation));
    }

    public ParseResult<BodyDeclaration<?>> parseAnnotationBodyDeclaration(final String body) {
        return parse(ParseStart.ANNOTATION_BODY, Providers.provider(body));
    }

    public ParseResult<ArrayInitializerExpr> parseArrayInitializerExpr(String arrayInitializerExpr) {
        return parse(ParseStart.ARRAY_INITIALIZER_EXPR, Providers.provider(arrayInitializerExpr));
    }

    public ParseResult<BlockStmt> parseBlock(final String blockStatement) {
        return parse(ParseStart.BLOCK, Providers.provider(blockStatement));
    }

    public <T extends BodyDeclaration<?>> ParseResult<T> parseBodyDeclaration(String body) {
        return parse(ParseStart.CLASS_BODY, Providers.provider(body));
    }

    public ParseResult<ClassOrInterfaceType> parseClassOrInterfaceType(String type) {
        return parse(ParseStart.CLASS_OR_INTERFACE_TYPE, Providers.provider(type));
    }

    public ParseResult<ExplicitConstructorInvocationStmt> parseExplicitConstructorInvocationStmt(String statement) {
        return parse(ParseStart.EXPLICIT_CONSTRUCTOR_INVOCATION_STMT, Providers.provider(statement));
    }

    public <T extends Expression> ParseResult<T> parseExpression(final String expression) {
        return parse(ParseStart.EXPRESSION, Providers.provider(expression));
    }

    public ParseResult<ImportDeclaration> parseImport(final String importDeclaration) {
        return parse(ParseStart.IMPORT_DECLARATION, Providers.provider(importDeclaration));
    }

    public ParseResult<MethodDeclaration> parseMethodDeclaration(String methodDeclaration) {
        return parse(ParseStart.METHOD_DECLARATION, Providers.provider(methodDeclaration));
    }

    public ParseResult<ModuleDeclaration> parseModuleDeclaration(String moduleDeclaration) {
        return parse(ParseStart.MODULE_DECLARATION, Providers.provider(moduleDeclaration));
    }

    public ParseResult<ModuleDirective> parseModuleDirective(String moduleDirective) {
        return parse(ParseStart.MODULE_DIRECTIVE, Providers.provider(moduleDirective));
    }

    public ParseResult<Name> parseName(String qualifiedName) {
        return parse(ParseStart.NAME, Providers.provider(qualifiedName));
    }

    public ParseResult<PackageDeclaration> parsePackageDeclaration(String packageDeclaration) {
        return parse(ParseStart.PACKAGE_DECLARATION, Providers.provider(packageDeclaration));
    }

    public ParseResult<Parameter> parseParameter(String parameter) {
        return parse(ParseStart.PARAMETER, Providers.provider(parameter));
    }

    public ParseResult<CompilationUnit> parseResource(final String path) throws IOException {
        return parse(ParseStart.COMPILATION_UNIT, Providers.resourceProvider(path, this.configuration.getCharacterEncoding()));
    }

    public ParseResult<SimpleName> parseSimpleName(String name) {
        return parse(ParseStart.SIMPLE_NAME, Providers.provider(name));
    }

    public ParseResult<Statement> parseStatement(final String statement) {
        return parse(ParseStart.STATEMENT, Providers.provider(statement));
    }

    public ParseResult<Type> parseType(String type) {
        return parse(ParseStart.TYPE, Providers.provider(type));
    }

    public ParseResult<TypeDeclaration<?>> parseTypeDeclaration(String typeDeclaration) {
        return parse(ParseStart.TYPE_DECLARATION, Providers.provider(typeDeclaration));
    }

    public ParseResult<TypeParameter> parseTypeParameter(String typeParameter) {
        return parse(ParseStart.TYPE_PARAMETER, Providers.provider(typeParameter));
    }

    public ParseResult<VariableDeclarationExpr> parseVariableDeclarationExpr(String declaration) {
        return parse(ParseStart.VARIABLE_DECLARATION_EXPR, Providers.provider(declaration));
    }

    public JavaParser(ParserConfiguration configuration) {
        this.astParser = null;
        this.configuration = configuration;
    }

    @Deprecated
    public ParseResult<CompilationUnit> parseResource(final String path, Charset encoding) throws IOException {
        return parse(ParseStart.COMPILATION_UNIT, Providers.resourceProvider(path, encoding));
    }

    @Deprecated
    public ParseResult<CompilationUnit> parseResource(final ClassLoader classLoader, final String path, Charset encoding) throws IOException {
        return parse(ParseStart.COMPILATION_UNIT, Providers.resourceProvider(classLoader, path, encoding));
    }

    public ParseResult<CompilationUnit> parse(final InputStream in2, Charset encoding) {
        return parse(ParseStart.COMPILATION_UNIT, Providers.provider(in2, encoding));
    }

    public ParseResult<CompilationUnit> parse(final InputStream in2) {
        return parse(in2, this.configuration.getCharacterEncoding());
    }

    @Deprecated
    public ParseResult<CompilationUnit> parse(final File file, final Charset encoding) throws FileNotFoundException {
        ParseResult<CompilationUnit> parse = parse(ParseStart.COMPILATION_UNIT, Providers.provider(file, encoding));
        parse.getResult().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaParser.lambda$parse$0(File.this, encoding, (CompilationUnit) obj);
            }
        });
        return parse;
    }

    public ParseResult<CompilationUnit> parse(final File file) throws FileNotFoundException {
        ParseResult<CompilationUnit> parse = parse(ParseStart.COMPILATION_UNIT, Providers.provider(file, this.configuration.getCharacterEncoding()));
        parse.getResult().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaParser.this.lambda$parse$1(file, (CompilationUnit) obj);
            }
        });
        return parse;
    }

    @Deprecated
    public ParseResult<CompilationUnit> parse(final Path path, final Charset encoding) throws IOException {
        ParseResult<CompilationUnit> parse = parse(ParseStart.COMPILATION_UNIT, Providers.provider(path, encoding));
        parse.getResult().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((CompilationUnit) obj).setStorage(Path.this, encoding);
            }
        });
        return parse;
    }

    public ParseResult<CompilationUnit> parse(final Path path) throws IOException {
        ParseResult<CompilationUnit> parse = parse(ParseStart.COMPILATION_UNIT, Providers.provider(path, this.configuration.getCharacterEncoding()));
        parse.getResult().ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavaParser.this.lambda$parse$3(path, (CompilationUnit) obj);
            }
        });
        return parse;
    }

    public ParseResult<CompilationUnit> parse(final Reader reader) {
        return parse(ParseStart.COMPILATION_UNIT, Providers.provider(reader));
    }

    public ParseResult<CompilationUnit> parse(String code) {
        return parse(ParseStart.COMPILATION_UNIT, Providers.provider(code));
    }
}
