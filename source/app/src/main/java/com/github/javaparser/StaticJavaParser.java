package com.github.javaparser;

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
import com.github.javaparser.javadoc.Javadoc;
import com.github.javaparser.quality.Preconditions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.file.Path;
import java.util.function.Supplier;

public final class StaticJavaParser {
    private static final ThreadLocal<ParserConfiguration> localConfiguration = ThreadLocal.withInitial(new Supplier() {
        @Override
        public final Object get() {
            return new ParserConfiguration();
        }
    });

    private StaticJavaParser() {
    }

    @Deprecated
    public static ParserConfiguration getConfiguration() {
        return getParserConfiguration();
    }

    public static ParserConfiguration getParserConfiguration() {
        return localConfiguration.get();
    }

    @Deprecated
    private static <T extends Node> T handleResult(ParseResult<T> result) {
        if (result.isSuccessful()) {
            return result.getResult().get();
        }
        throw new ParseProblemException(result.getProblems());
    }

    private static JavaParser newParser() {
        return new JavaParser(getParserConfiguration());
    }

    private static JavaParserAdapter newParserAdapted() {
        return new JavaParserAdapter(newParser());
    }

    @Deprecated
    public static CompilationUnit parse(final InputStream in2, Charset encoding) {
        Preconditions.checkNotNull(in2, "Parameter in can't be null.");
        Preconditions.checkNotNull(encoding, "Parameter encoding can't be null.");
        return (CompilationUnit) handleResult(newParser().parse(in2, encoding));
    }

    public static AnnotationExpr parseAnnotation(final String annotation) {
        Preconditions.checkNotNull(annotation, "Parameter annotation can't be null.");
        return newParserAdapted().parseAnnotation(annotation);
    }

    public static BodyDeclaration<?> parseAnnotationBodyDeclaration(final String body) {
        Preconditions.checkNotNull(body, "Parameter body can't be null.");
        return newParserAdapted().parseAnnotationBodyDeclaration(body);
    }

    public static ArrayInitializerExpr parseArrayInitializerExpr(String arrayInitializerExpr) {
        Preconditions.checkNotNull(arrayInitializerExpr, "Parameter arrayInitializerExpr can't be null.");
        return newParserAdapted().parseArrayInitializerExpr(arrayInitializerExpr);
    }

    public static BlockStmt parseBlock(final String blockStatement) {
        Preconditions.checkNotNull(blockStatement, "Parameter blockStatement can't be null.");
        return newParserAdapted().parseBlock(blockStatement);
    }

    public static BodyDeclaration<?> parseBodyDeclaration(String body) {
        Preconditions.checkNotNull(body, "Parameter body can't be null.");
        return newParserAdapted().parseBodyDeclaration(body);
    }

    public static ClassOrInterfaceType parseClassOrInterfaceType(String type) {
        Preconditions.checkNotNull(type, "Parameter type can't be null.");
        return newParserAdapted().parseClassOrInterfaceType(type);
    }

    public static ExplicitConstructorInvocationStmt parseExplicitConstructorInvocationStmt(String statement) {
        Preconditions.checkNotNull(statement, "Parameter statement can't be null.");
        return newParserAdapted().parseExplicitConstructorInvocationStmt(statement);
    }

    public static <T extends Expression> T parseExpression(String str) {
        Preconditions.checkNotNull(str, "Parameter expression can't be null.");
        return (T) newParserAdapted().parseExpression(str);
    }

    public static ImportDeclaration parseImport(final String importDeclaration) {
        Preconditions.checkNotNull(importDeclaration, "Parameter importDeclaration can't be null.");
        return newParserAdapted().parseImport(importDeclaration);
    }

    public static Javadoc parseJavadoc(String content) {
        Preconditions.checkNotNull(content, "Parameter content can't be null.");
        return JavadocParser.parse(content);
    }

    public static MethodDeclaration parseMethodDeclaration(String methodDeclaration) {
        Preconditions.checkNotNull(methodDeclaration, "Parameter methodDeclaration can't be null.");
        return newParserAdapted().parseMethodDeclaration(methodDeclaration);
    }

    public static ModuleDeclaration parseModuleDeclaration(String moduleDeclaration) {
        Preconditions.checkNotNull(moduleDeclaration, "Parameter moduleDeclaration can't be null.");
        return newParserAdapted().parseModuleDeclaration(moduleDeclaration);
    }

    public static ModuleDirective parseModuleDirective(String moduleDirective) {
        Preconditions.checkNotNull(moduleDirective, "Parameter moduleDirective can't be null.");
        return newParserAdapted().parseModuleDirective(moduleDirective);
    }

    public static Name parseName(String qualifiedName) {
        Preconditions.checkNotNull(qualifiedName, "Parameter qualifiedName can't be null.");
        return newParserAdapted().parseName(qualifiedName);
    }

    public static PackageDeclaration parsePackageDeclaration(String packageDeclaration) {
        Preconditions.checkNotNull(packageDeclaration, "Parameter packageDeclaration can't be null.");
        return newParserAdapted().parsePackageDeclaration(packageDeclaration);
    }

    public static Parameter parseParameter(String parameter) {
        Preconditions.checkNotNull(parameter, "Parameter parameter can't be null.");
        return newParserAdapted().parseParameter(parameter);
    }

    public static CompilationUnit parseResource(final String path) throws IOException {
        Preconditions.checkNotNull(path, "Parameter path can't be null.");
        return newParserAdapted().parseResource(path);
    }

    public static SimpleName parseSimpleName(String name) {
        Preconditions.checkNotNull(name, "Parameter name can't be null.");
        return newParserAdapted().parseSimpleName(name);
    }

    public static Statement parseStatement(final String statement) {
        Preconditions.checkNotNull(statement, "Parameter statement can't be null.");
        return newParserAdapted().parseStatement(statement);
    }

    public static Type parseType(String type) {
        Preconditions.checkNotNull(type, "Parameter type can't be null.");
        return newParserAdapted().parseType(type);
    }

    public static TypeDeclaration<?> parseTypeDeclaration(String typeDeclaration) {
        Preconditions.checkNotNull(typeDeclaration, "Parameter typeDeclaration can't be null.");
        return newParserAdapted().parseTypeDeclaration(typeDeclaration);
    }

    public static TypeParameter parseTypeParameter(String typeParameter) {
        Preconditions.checkNotNull(typeParameter, "Parameter typeParameter can't be null.");
        return newParserAdapted().parseTypeParameter(typeParameter);
    }

    public static VariableDeclarationExpr parseVariableDeclarationExpr(String declaration) {
        Preconditions.checkNotNull(declaration, "Parameter declaration can't be null.");
        return newParserAdapted().parseVariableDeclarationExpr(declaration);
    }

    public static void setConfiguration(ParserConfiguration configuration) {
        Preconditions.checkNotNull(configuration, "Parameter configuration can't be null.");
        localConfiguration.set(configuration);
    }

    @Deprecated
    public static CompilationUnit parseResource(final String path, Charset encoding) throws IOException {
        Preconditions.checkNotNull(path, "Parameter path can't be null.");
        Preconditions.checkNotNull(encoding, "Parameter encoding can't be null.");
        return (CompilationUnit) handleResult(newParser().parseResource(path, encoding));
    }

    public static CompilationUnit parse(final InputStream in2) {
        Preconditions.checkNotNull(in2, "Parameter in can't be null.");
        return newParserAdapted().parse(in2);
    }

    @Deprecated
    public static CompilationUnit parse(final File file, final Charset encoding) throws FileNotFoundException {
        Preconditions.checkNotNull(file, "Parameter file can't be null.");
        Preconditions.checkNotNull(encoding, "Parameter encoding can't be null.");
        return (CompilationUnit) handleResult(newParser().parse(file, encoding));
    }

    @Deprecated
    public static CompilationUnit parseResource(final ClassLoader classLoader, final String path, Charset encoding) throws IOException {
        Preconditions.checkNotNull(classLoader, "Parameter classLoader can't be null.");
        Preconditions.checkNotNull(path, "Parameter path can't be null.");
        Preconditions.checkNotNull(encoding, "Parameter encoding can't be null.");
        return (CompilationUnit) handleResult(newParser().parseResource(classLoader, path, encoding));
    }

    public static CompilationUnit parse(final File file) throws FileNotFoundException {
        Preconditions.checkNotNull(file, "Parameter file can't be null.");
        return newParserAdapted().parse(file);
    }

    @Deprecated
    public static CompilationUnit parse(final Path path, final Charset encoding) throws IOException {
        Preconditions.checkNotNull(path, "Parameter path can't be null.");
        Preconditions.checkNotNull(encoding, "Parameter encoding can't be null.");
        return (CompilationUnit) handleResult(newParser().parse(path, encoding));
    }

    public static CompilationUnit parse(final Path path) throws IOException {
        Preconditions.checkNotNull(path, "Parameter path can't be null.");
        return newParserAdapted().parse(path);
    }

    public static CompilationUnit parse(final Reader reader) {
        Preconditions.checkNotNull(reader, "Parameter reader can't be null.");
        return newParserAdapted().parse(reader);
    }

    public static CompilationUnit parse(String code) {
        Preconditions.checkNotNull(code, "Parameter code can't be null.");
        return newParserAdapted().parse(code);
    }
}
