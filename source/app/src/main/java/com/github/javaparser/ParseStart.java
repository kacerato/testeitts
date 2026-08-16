package com.github.javaparser;

import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.ImportDeclaration;
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

@FunctionalInterface
public interface ParseStart<R> {
    public static final ParseStart<CompilationUnit> COMPILATION_UNIT = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.CompilationUnit();
        }
    };
    public static final ParseStart<BlockStmt> BLOCK = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.BlockParseStart();
        }
    };
    public static final ParseStart<Statement> STATEMENT = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.BlockStatementParseStart();
        }
    };
    public static final ParseStart<ImportDeclaration> IMPORT_DECLARATION = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ImportDeclarationParseStart();
        }
    };
    public static final ParseStart<Expression> EXPRESSION = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ExpressionParseStart();
        }
    };
    public static final ParseStart<AnnotationExpr> ANNOTATION = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.AnnotationParseStart();
        }
    };
    public static final ParseStart<BodyDeclaration<?>> ANNOTATION_BODY = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.AnnotationBodyDeclarationParseStart();
        }
    };
    public static final ParseStart<BodyDeclaration<?>> CLASS_BODY = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ClassOrInterfaceBodyDeclarationParseStart();
        }
    };
    public static final ParseStart<ClassOrInterfaceType> CLASS_OR_INTERFACE_TYPE = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ClassOrInterfaceTypeParseStart();
        }
    };
    public static final ParseStart<Type> TYPE = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ResultTypeParseStart();
        }
    };
    public static final ParseStart<TypeParameter> TYPE_PARAMETER = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.TypeParameterParseStart();
        }
    };
    public static final ParseStart<VariableDeclarationExpr> VARIABLE_DECLARATION_EXPR = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.VariableDeclarationExpressionParseStart();
        }
    };
    public static final ParseStart<ExplicitConstructorInvocationStmt> EXPLICIT_CONSTRUCTOR_INVOCATION_STMT = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ExplicitConstructorInvocationParseStart();
        }
    };
    public static final ParseStart<Name> NAME = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.NameParseStart();
        }
    };
    public static final ParseStart<SimpleName> SIMPLE_NAME = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.SimpleNameParseStart();
        }
    };
    public static final ParseStart<Parameter> PARAMETER = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ParameterParseStart();
        }
    };
    public static final ParseStart<PackageDeclaration> PACKAGE_DECLARATION = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.PackageDeclarationParseStart();
        }
    };
    public static final ParseStart<TypeDeclaration<?>> TYPE_DECLARATION = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.TypeDeclarationParseStart();
        }
    };
    public static final ParseStart<ModuleDeclaration> MODULE_DECLARATION = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ModuleDeclarationParseStart();
        }
    };
    public static final ParseStart<ModuleDirective> MODULE_DIRECTIVE = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ModuleDirectiveParseStart();
        }
    };
    public static final ParseStart<MethodDeclaration> METHOD_DECLARATION = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.MethodDeclarationParseStart();
        }
    };
    public static final ParseStart<ArrayInitializerExpr> ARRAY_INITIALIZER_EXPR = new ParseStart() {
        @Override
        public final Object parse(GeneratedJavaParser generatedJavaParser) {
            return generatedJavaParser.ArrayInitializer();
        }
    };

    R parse(GeneratedJavaParser parser) throws ParseException;
}
