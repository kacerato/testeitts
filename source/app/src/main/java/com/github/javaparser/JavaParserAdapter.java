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
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.file.Path;
import java.util.Objects;

public class JavaParserAdapter {
    private final JavaParser parser;

    public JavaParserAdapter(JavaParser parser) {
        Objects.requireNonNull(parser, "A non-null parser should be provided.");
        this.parser = parser;
    }

    private <T extends Node> T handleResult(ParseResult<T> result) {
        if (result.isSuccessful()) {
            return result.getResult().orElse(null);
        }
        throw new ParseProblemException(result.getProblems());
    }

    public static JavaParserAdapter of(JavaParser parser) {
        return new JavaParserAdapter(parser);
    }

    public JavaParser getParser() {
        return this.parser;
    }

    public ParserConfiguration getParserConfiguration() {
        return this.parser.getParserConfiguration();
    }

    public CompilationUnit parse(InputStream in2) {
        return (CompilationUnit) handleResult(getParser().parse(in2));
    }

    public AnnotationExpr parseAnnotation(String annotation) {
        return (AnnotationExpr) handleResult(getParser().parseAnnotation(annotation));
    }

    public BodyDeclaration<?> parseAnnotationBodyDeclaration(String body) {
        return (BodyDeclaration) handleResult(getParser().parseAnnotationBodyDeclaration(body));
    }

    public ArrayInitializerExpr parseArrayInitializerExpr(String arrayInitializerExpr) {
        return (ArrayInitializerExpr) handleResult(getParser().parseArrayInitializerExpr(arrayInitializerExpr));
    }

    public BlockStmt parseBlock(String blockStatement) {
        return (BlockStmt) handleResult(getParser().parseBlock(blockStatement));
    }

    public BodyDeclaration<?> parseBodyDeclaration(String body) {
        return (BodyDeclaration) handleResult(getParser().parseBodyDeclaration(body));
    }

    public ClassOrInterfaceType parseClassOrInterfaceType(String type) {
        return (ClassOrInterfaceType) handleResult(getParser().parseClassOrInterfaceType(type));
    }

    public ExplicitConstructorInvocationStmt parseExplicitConstructorInvocationStmt(String statement) {
        return (ExplicitConstructorInvocationStmt) handleResult(getParser().parseExplicitConstructorInvocationStmt(statement));
    }

    public <T extends Expression> T parseExpression(String expression) {
        return (T) handleResult(getParser().parseExpression(expression));
    }

    public ImportDeclaration parseImport(String importDeclaration) {
        return (ImportDeclaration) handleResult(getParser().parseImport(importDeclaration));
    }

    public Javadoc parseJavadoc(String content) {
        return JavadocParser.parse(content);
    }

    public MethodDeclaration parseMethodDeclaration(String methodDeclaration) {
        return (MethodDeclaration) handleResult(getParser().parseMethodDeclaration(methodDeclaration));
    }

    public ModuleDeclaration parseModuleDeclaration(String moduleDeclaration) {
        return (ModuleDeclaration) handleResult(getParser().parseModuleDeclaration(moduleDeclaration));
    }

    public ModuleDirective parseModuleDirective(String moduleDirective) {
        return (ModuleDirective) handleResult(getParser().parseModuleDirective(moduleDirective));
    }

    public Name parseName(String qualifiedName) {
        return (Name) handleResult(getParser().parseName(qualifiedName));
    }

    public PackageDeclaration parsePackageDeclaration(String packageDeclaration) {
        return (PackageDeclaration) handleResult(getParser().parsePackageDeclaration(packageDeclaration));
    }

    public Parameter parseParameter(String parameter) {
        return (Parameter) handleResult(getParser().parseParameter(parameter));
    }

    public CompilationUnit parseResource(String path) throws IOException {
        return (CompilationUnit) handleResult(getParser().parseResource(path));
    }

    public SimpleName parseSimpleName(String name) {
        return (SimpleName) handleResult(getParser().parseSimpleName(name));
    }

    public Statement parseStatement(String statement) {
        return (Statement) handleResult(getParser().parseStatement(statement));
    }

    public Type parseType(String type) {
        return (Type) handleResult(getParser().parseType(type));
    }

    public TypeDeclaration<?> parseTypeDeclaration(String typeDeclaration) {
        return (TypeDeclaration) handleResult(getParser().parseTypeDeclaration(typeDeclaration));
    }

    public TypeParameter parseTypeParameter(String typeParameter) {
        return (TypeParameter) handleResult(getParser().parseTypeParameter(typeParameter));
    }

    public VariableDeclarationExpr parseVariableDeclarationExpr(String declaration) {
        return (VariableDeclarationExpr) handleResult(getParser().parseVariableDeclarationExpr(declaration));
    }

    public CompilationUnit parse(File file) throws FileNotFoundException {
        return (CompilationUnit) handleResult(getParser().parse(file));
    }

    public CompilationUnit parse(Path path) throws IOException {
        return (CompilationUnit) handleResult(getParser().parse(path));
    }

    public CompilationUnit parse(Reader reader) {
        return (CompilationUnit) handleResult(getParser().parse(reader));
    }

    public CompilationUnit parse(String code) {
        return (CompilationUnit) handleResult(getParser().parse(code));
    }
}
