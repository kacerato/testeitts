package com.github.javaparser.printer;

import com.github.javaparser.ast.ArrayCreationLevel;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.PackageDeclaration;
import com.github.javaparser.ast.body.AnnotationDeclaration;
import com.github.javaparser.ast.body.AnnotationMemberDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.CompactConstructorDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.EnumConstantDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.InitializerDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.ReceiverParameter;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.comments.Comment;
import com.github.javaparser.ast.expr.ArrayAccessExpr;
import com.github.javaparser.ast.expr.ArrayCreationExpr;
import com.github.javaparser.ast.expr.ArrayInitializerExpr;
import com.github.javaparser.ast.expr.AssignExpr;
import com.github.javaparser.ast.expr.BinaryExpr;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.CastExpr;
import com.github.javaparser.ast.expr.CharLiteralExpr;
import com.github.javaparser.ast.expr.ClassExpr;
import com.github.javaparser.ast.expr.ConditionalExpr;
import com.github.javaparser.ast.expr.DoubleLiteralExpr;
import com.github.javaparser.ast.expr.EnclosedExpr;
import com.github.javaparser.ast.expr.FieldAccessExpr;
import com.github.javaparser.ast.expr.InstanceOfExpr;
import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.LongLiteralExpr;
import com.github.javaparser.ast.expr.MarkerAnnotationExpr;
import com.github.javaparser.ast.expr.MemberValuePair;
import com.github.javaparser.ast.expr.MethodCallExpr;
import com.github.javaparser.ast.expr.MethodReferenceExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.NormalAnnotationExpr;
import com.github.javaparser.ast.expr.NullLiteralExpr;
import com.github.javaparser.ast.expr.ObjectCreationExpr;
import com.github.javaparser.ast.expr.RecordPatternExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.expr.SingleMemberAnnotationExpr;
import com.github.javaparser.ast.expr.StringLiteralExpr;
import com.github.javaparser.ast.expr.SuperExpr;
import com.github.javaparser.ast.expr.SwitchExpr;
import com.github.javaparser.ast.expr.TextBlockLiteralExpr;
import com.github.javaparser.ast.expr.ThisExpr;
import com.github.javaparser.ast.expr.TypeExpr;
import com.github.javaparser.ast.expr.TypePatternExpr;
import com.github.javaparser.ast.expr.UnaryExpr;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.modules.ModuleDeclaration;
import com.github.javaparser.ast.modules.ModuleExportsDirective;
import com.github.javaparser.ast.modules.ModuleOpensDirective;
import com.github.javaparser.ast.modules.ModuleProvidesDirective;
import com.github.javaparser.ast.modules.ModuleRequiresDirective;
import com.github.javaparser.ast.modules.ModuleUsesDirective;
import com.github.javaparser.ast.observer.ObservableProperty;
import com.github.javaparser.ast.stmt.AssertStmt;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.BreakStmt;
import com.github.javaparser.ast.stmt.CatchClause;
import com.github.javaparser.ast.stmt.ContinueStmt;
import com.github.javaparser.ast.stmt.DoStmt;
import com.github.javaparser.ast.stmt.EmptyStmt;
import com.github.javaparser.ast.stmt.ExplicitConstructorInvocationStmt;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.stmt.ForStmt;
import com.github.javaparser.ast.stmt.IfStmt;
import com.github.javaparser.ast.stmt.LabeledStmt;
import com.github.javaparser.ast.stmt.LocalClassDeclarationStmt;
import com.github.javaparser.ast.stmt.LocalRecordDeclarationStmt;
import com.github.javaparser.ast.stmt.ReturnStmt;
import com.github.javaparser.ast.stmt.SwitchEntry;
import com.github.javaparser.ast.stmt.SwitchStmt;
import com.github.javaparser.ast.stmt.SynchronizedStmt;
import com.github.javaparser.ast.stmt.ThrowStmt;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.stmt.UnparsableStmt;
import com.github.javaparser.ast.stmt.WhileStmt;
import com.github.javaparser.ast.stmt.YieldStmt;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.IntersectionType;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.type.UnionType;
import com.github.javaparser.ast.type.UnknownType;
import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.type.VoidType;
import com.github.javaparser.ast.type.WildcardType;
import com.github.javaparser.metamodel.BaseNodeMetaModel;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.printer.concretesyntaxmodel.CsmConditional;
import com.github.javaparser.printer.concretesyntaxmodel.CsmElement;
import com.github.javaparser.printer.concretesyntaxmodel.CsmMix;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class ConcreteSyntaxModel {
    private static final Map<Class, CsmElement> concreteSyntaxModelByClass;
    private static Optional<String> initializationError;

    static {
        HashMap hashMap = new HashMap();
        concreteSyntaxModelByClass = hashMap;
        CsmElement comment = CsmElement.comment();
        CsmElement memberAnnotations = memberAnnotations();
        CsmElement modifiers = modifiers();
        CsmElement csmElement = CsmElement.token(111);
        CsmElement csmElement2 = CsmElement.token(39);
        CsmElement space = CsmElement.space();
        ObservableProperty observableProperty = ObservableProperty.NAME;
        CsmElement child = CsmElement.child(observableProperty);
        CsmElement space2 = CsmElement.space();
        CsmElement csmElement3 = CsmElement.token(103);
        CsmElement newline = CsmElement.newline();
        CsmElement indent = CsmElement.indent();
        ObservableProperty observableProperty2 = ObservableProperty.MEMBERS;
        hashMap.put(AnnotationDeclaration.class, CsmElement.sequence(comment, memberAnnotations, modifiers, csmElement, csmElement2, space, child, space2, csmElement3, newline, indent, CsmElement.list(observableProperty2, CsmElement.newline(), CsmElement.none(), CsmElement.none(), CsmElement.newline()), CsmElement.unindent(), CsmElement.token(104)));
        CsmElement comment2 = CsmElement.comment();
        CsmElement memberAnnotations2 = memberAnnotations();
        CsmElement modifiers2 = modifiers();
        ObservableProperty observableProperty3 = ObservableProperty.TYPE;
        CsmElement child2 = CsmElement.child(observableProperty3);
        CsmElement space3 = CsmElement.space();
        CsmElement child3 = CsmElement.child(observableProperty);
        CsmElement csmElement4 = CsmElement.token(101);
        CsmElement csmElement5 = CsmElement.token(102);
        ObservableProperty observableProperty4 = ObservableProperty.DEFAULT_VALUE;
        CsmConditional.Condition condition = CsmConditional.Condition.IS_PRESENT;
        hashMap.put(AnnotationMemberDeclaration.class, CsmElement.sequence(comment2, memberAnnotations2, modifiers2, child2, space3, child3, csmElement4, csmElement5, CsmElement.conditional(observableProperty4, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(22), CsmElement.space(), CsmElement.child(observableProperty4))), CsmElement.semicolon()));
        CsmElement comment3 = CsmElement.comment();
        CsmElement memberAnnotations3 = memberAnnotations();
        CsmElement modifiers3 = modifiers();
        ObservableProperty observableProperty5 = ObservableProperty.INTERFACE;
        CsmConditional.Condition condition2 = CsmConditional.Condition.FLAG;
        CsmElement conditional = CsmElement.conditional(observableProperty5, condition2, CsmElement.token(39), CsmElement.token(19));
        CsmElement space4 = CsmElement.space();
        CsmElement child4 = CsmElement.child(observableProperty);
        ObservableProperty observableProperty6 = ObservableProperty.TYPE_PARAMETERS;
        CsmElement list = CsmElement.list(observableProperty6, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.string(114), CsmElement.string(150));
        CsmElement list2 = CsmElement.list(ObservableProperty.EXTENDED_TYPES, CsmElement.sequence(CsmElement.string(108), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(27), CsmElement.space()), CsmElement.none());
        ObservableProperty observableProperty7 = ObservableProperty.IMPLEMENTED_TYPES;
        hashMap.put(ClassOrInterfaceDeclaration.class, CsmElement.sequence(comment3, memberAnnotations3, modifiers3, conditional, space4, child4, list, list2, CsmElement.list(observableProperty7, CsmElement.sequence(CsmElement.string(108), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(35), CsmElement.space()), CsmElement.none()), CsmElement.space(), CsmElement.list(ObservableProperty.PERMITTED_TYPES, CsmElement.sequence(CsmElement.string(108), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(46), CsmElement.space()), CsmElement.none()), CsmElement.block(CsmElement.sequence(CsmElement.newline(), CsmElement.list(observableProperty2, CsmElement.sequence(CsmElement.newline(), CsmElement.newline()), CsmElement.newline(), CsmElement.newline())))));
        CsmElement comment4 = CsmElement.comment();
        CsmElement memberAnnotations4 = memberAnnotations();
        CsmElement modifiers4 = modifiers();
        CsmElement typeParameters = typeParameters();
        CsmElement child5 = CsmElement.child(observableProperty);
        CsmElement csmElement6 = CsmElement.token(101);
        ObservableProperty observableProperty8 = ObservableProperty.PARAMETERS;
        CsmElement list3 = CsmElement.list(observableProperty8, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.none(), CsmElement.none());
        CsmElement csmElement7 = CsmElement.token(102);
        ObservableProperty observableProperty9 = ObservableProperty.THROWN_EXCEPTIONS;
        CsmElement list4 = CsmElement.list(observableProperty9, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(61), CsmElement.space()), CsmElement.none());
        CsmElement space5 = CsmElement.space();
        ObservableProperty observableProperty10 = ObservableProperty.BODY;
        hashMap.put(ConstructorDeclaration.class, CsmElement.sequence(comment4, memberAnnotations4, modifiers4, typeParameters, child5, csmElement6, list3, csmElement7, list4, space5, CsmElement.child(observableProperty10)));
        hashMap.put(RecordDeclaration.class, CsmElement.sequence(CsmElement.comment(), memberAnnotations(), modifiers(), CsmElement.token(50), CsmElement.space(), CsmElement.child(observableProperty), CsmElement.token(101), CsmElement.list(observableProperty8, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.none(), CsmElement.none()), CsmElement.token(102), CsmElement.list(observableProperty6, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.string(114), CsmElement.string(150)), CsmElement.list(observableProperty7, CsmElement.sequence(CsmElement.string(108), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(35), CsmElement.space()), CsmElement.none()), CsmElement.space(), CsmElement.block(CsmElement.sequence(CsmElement.newline(), CsmElement.list(observableProperty2, CsmElement.sequence(CsmElement.newline(), CsmElement.newline()), CsmElement.newline(), CsmElement.newline())))));
        hashMap.put(CompactConstructorDeclaration.class, CsmElement.sequence(CsmElement.comment(), memberAnnotations(), modifiers(), typeParameters(), CsmElement.child(observableProperty), CsmElement.list(observableProperty9, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(61), CsmElement.space()), CsmElement.none()), CsmElement.space(), CsmElement.child(observableProperty10)));
        CsmElement comment5 = CsmElement.comment();
        CsmElement memberAnnotations5 = memberAnnotations();
        CsmElement child6 = CsmElement.child(observableProperty);
        ObservableProperty observableProperty11 = ObservableProperty.ARGUMENTS;
        CsmElement list5 = CsmElement.list(observableProperty11, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.token(101), CsmElement.token(102));
        ObservableProperty observableProperty12 = ObservableProperty.CLASS_BODY;
        CsmConditional.Condition condition3 = CsmConditional.Condition.IS_NOT_EMPTY;
        hashMap.put(EnumConstantDeclaration.class, CsmElement.sequence(comment5, memberAnnotations5, child6, list5, CsmElement.conditional(observableProperty12, condition3, CsmElement.sequence(CsmElement.space(), CsmElement.token(103), CsmElement.newline(), CsmElement.indent(), CsmElement.newline(), CsmElement.list(observableProperty12, CsmElement.newline(), CsmElement.newline(), CsmElement.none(), CsmElement.newline()), CsmElement.unindent(), CsmElement.token(104), CsmElement.newline()))));
        CsmElement comment6 = CsmElement.comment();
        CsmElement annotations = annotations();
        CsmElement modifiers5 = modifiers();
        CsmElement csmElement8 = CsmElement.token(26);
        CsmElement space6 = CsmElement.space();
        CsmElement child7 = CsmElement.child(observableProperty);
        CsmElement list6 = CsmElement.list(observableProperty7, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(35), CsmElement.space()), CsmElement.none());
        CsmElement space7 = CsmElement.space();
        CsmElement csmElement9 = CsmElement.token(103);
        CsmElement newline2 = CsmElement.newline();
        CsmElement indent2 = CsmElement.indent();
        CsmElement newline3 = CsmElement.newline();
        ObservableProperty observableProperty13 = ObservableProperty.ENTRIES;
        hashMap.put(EnumDeclaration.class, CsmElement.sequence(comment6, annotations, modifiers5, csmElement8, space6, child7, list6, space7, csmElement9, newline2, indent2, newline3, CsmElement.list(observableProperty13, CsmElement.sequence(CsmElement.comma(), CsmElement.newline()), CsmElement.none(), CsmElement.none()), CsmElement.conditional(observableProperty2, CsmConditional.Condition.IS_EMPTY, CsmElement.conditional(observableProperty13, condition3, CsmElement.newline()), CsmElement.sequence(CsmElement.semicolon(), CsmElement.newline(), CsmElement.newline(), CsmElement.list(observableProperty2, CsmElement.newline(), CsmElement.newline(), CsmElement.none(), CsmElement.newline()))), CsmElement.unindent(), CsmElement.token(104)));
        CsmElement orphanCommentsBeforeThis = CsmElement.orphanCommentsBeforeThis();
        CsmElement comment7 = CsmElement.comment();
        CsmElement mix = mix(annotations(), modifiers());
        ObservableProperty observableProperty14 = ObservableProperty.VARIABLES;
        ObservableProperty observableProperty15 = ObservableProperty.MAXIMUM_COMMON_TYPE;
        hashMap.put(FieldDeclaration.class, CsmElement.sequence(orphanCommentsBeforeThis, comment7, mix, CsmElement.conditional(observableProperty14, condition3, CsmElement.child(observableProperty15)), CsmElement.space(), CsmElement.list(observableProperty14, CsmElement.sequence(CsmElement.comma(), CsmElement.space())), CsmElement.semicolon()));
        CsmElement comment8 = CsmElement.comment();
        ObservableProperty observableProperty16 = ObservableProperty.STATIC;
        hashMap.put(InitializerDeclaration.class, CsmElement.sequence(comment8, CsmElement.conditional(observableProperty16, condition2, CsmElement.sequence(CsmElement.token(54), CsmElement.space())), CsmElement.child(observableProperty10)));
        CsmElement orphanCommentsBeforeThis2 = CsmElement.orphanCommentsBeforeThis();
        CsmElement comment9 = CsmElement.comment();
        CsmElement mix2 = mix(memberAnnotations(), modifiers());
        CsmElement typeParameters2 = typeParameters();
        CsmElement child8 = CsmElement.child(observableProperty3);
        CsmElement space8 = CsmElement.space();
        CsmElement child9 = CsmElement.child(observableProperty);
        CsmElement csmElement10 = CsmElement.token(101);
        ObservableProperty observableProperty17 = ObservableProperty.RECEIVER_PARAMETER;
        hashMap.put(MethodDeclaration.class, CsmElement.sequence(orphanCommentsBeforeThis2, comment9, mix2, typeParameters2, child8, space8, child9, csmElement10, CsmElement.conditional(observableProperty17, condition, CsmElement.sequence(CsmElement.child(observableProperty17), CsmElement.comma(), CsmElement.space())), CsmElement.list(observableProperty8, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.none(), CsmElement.none()), CsmElement.token(102), CsmElement.list(observableProperty9, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(61), CsmElement.space()), CsmElement.none()), CsmElement.conditional(observableProperty10, condition, CsmElement.sequence(CsmElement.space(), CsmElement.child(observableProperty10)), CsmElement.semicolon())));
        hashMap.put(Parameter.class, CsmElement.sequence(CsmElement.comment(), mix(onlineAnnotations(), modifiers()), CsmElement.child(observableProperty3), CsmElement.conditional(ObservableProperty.VAR_ARGS, condition2, CsmElement.sequence(CsmElement.list(ObservableProperty.VAR_ARGS_ANNOTATIONS, CsmElement.space(), CsmElement.none(), CsmElement.none()), CsmElement.token(110))), CsmElement.space(), CsmElement.child(observableProperty)));
        hashMap.put(ReceiverParameter.class, CsmElement.sequence(CsmElement.comment(), onlineAnnotations(), CsmElement.child(observableProperty3), CsmElement.space(), CsmElement.child(observableProperty)));
        CsmElement comment10 = CsmElement.comment();
        CsmElement child10 = CsmElement.child(observableProperty);
        ObservableProperty observableProperty18 = ObservableProperty.INITIALIZER;
        hashMap.put(VariableDeclarator.class, CsmElement.sequence(comment10, child10, CsmElement.conditional(observableProperty18, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(113), CsmElement.space(), CsmElement.child(observableProperty18)))));
        hashMap.put(ArrayAccessExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty), CsmElement.token(105), CsmElement.child(ObservableProperty.INDEX), CsmElement.token(106)));
        hashMap.put(ArrayCreationExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(42), CsmElement.space(), CsmElement.child(ObservableProperty.ELEMENT_TYPE), CsmElement.list(ObservableProperty.LEVELS), CsmElement.conditional(observableProperty18, condition, CsmElement.sequence(CsmElement.space(), CsmElement.child(observableProperty18)))));
        hashMap.put(ArrayInitializerExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(103), CsmElement.list(ObservableProperty.VALUES, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.space(), CsmElement.space()), CsmElement.orphanCommentsEnding(), CsmElement.token(104)));
        CsmElement comment11 = CsmElement.comment();
        CsmElement child11 = CsmElement.child(ObservableProperty.TARGET);
        CsmElement space9 = CsmElement.space();
        ObservableProperty observableProperty19 = ObservableProperty.OPERATOR;
        CsmElement attribute = CsmElement.attribute(observableProperty19);
        CsmElement space10 = CsmElement.space();
        ObservableProperty observableProperty20 = ObservableProperty.VALUE;
        hashMap.put(AssignExpr.class, CsmElement.sequence(comment11, child11, space9, attribute, space10, CsmElement.child(observableProperty20)));
        hashMap.put(BinaryExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(ObservableProperty.LEFT), CsmElement.space(), CsmElement.attribute(observableProperty19), CsmElement.space(), CsmElement.child(ObservableProperty.RIGHT)));
        hashMap.put(BooleanLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.attribute(observableProperty20)));
        CsmElement comment12 = CsmElement.comment();
        CsmElement csmElement11 = CsmElement.token(101);
        CsmElement child12 = CsmElement.child(observableProperty3);
        CsmElement csmElement12 = CsmElement.token(102);
        CsmElement space11 = CsmElement.space();
        ObservableProperty observableProperty21 = ObservableProperty.EXPRESSION;
        hashMap.put(CastExpr.class, CsmElement.sequence(comment12, csmElement11, child12, csmElement12, space11, CsmElement.child(observableProperty21)));
        hashMap.put(CharLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.charToken(observableProperty20)));
        hashMap.put(ClassExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty3), CsmElement.token(109), CsmElement.token(19)));
        CsmElement comment13 = CsmElement.comment();
        ObservableProperty observableProperty22 = ObservableProperty.CONDITION;
        hashMap.put(ConditionalExpr.class, CsmElement.sequence(comment13, CsmElement.child(observableProperty22), CsmElement.space(), CsmElement.token(117), CsmElement.space(), CsmElement.child(ObservableProperty.THEN_EXPR), CsmElement.space(), CsmElement.token(118), CsmElement.space(), CsmElement.child(ObservableProperty.ELSE_EXPR)));
        hashMap.put(DoubleLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.attribute(observableProperty20)));
        hashMap.put(EnclosedExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(101), CsmElement.child(ObservableProperty.INNER), CsmElement.token(102)));
        CsmElement comment14 = CsmElement.comment();
        ObservableProperty observableProperty23 = ObservableProperty.SCOPE;
        hashMap.put(FieldAccessExpr.class, CsmElement.sequence(comment14, CsmElement.child(observableProperty23), CsmElement.token(109), CsmElement.child(observableProperty)));
        hashMap.put(InstanceOfExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty21), CsmElement.space(), CsmElement.token(37), CsmElement.space(), CsmElement.child(observableProperty3)));
        hashMap.put(IntegerLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.attribute(observableProperty20)));
        CsmElement comment15 = CsmElement.comment();
        ObservableProperty observableProperty24 = ObservableProperty.ENCLOSING_PARAMETERS;
        CsmElement conditional2 = CsmElement.conditional(observableProperty24, condition2, CsmElement.token(101));
        CsmElement list7 = CsmElement.list(observableProperty8, CsmElement.sequence(CsmElement.comma(), CsmElement.space()));
        CsmElement conditional3 = CsmElement.conditional(observableProperty24, condition2, CsmElement.token(102));
        CsmElement space12 = CsmElement.space();
        CsmElement csmElement13 = CsmElement.token(119);
        CsmElement space13 = CsmElement.space();
        ObservableProperty observableProperty25 = ObservableProperty.EXPRESSION_BODY;
        hashMap.put(LambdaExpr.class, CsmElement.sequence(comment15, conditional2, list7, conditional3, space12, csmElement13, space13, CsmElement.conditional(observableProperty25, condition, CsmElement.child(observableProperty25), CsmElement.child(observableProperty10))));
        hashMap.put(LongLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.attribute(observableProperty20)));
        hashMap.put(MarkerAnnotationExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(111), CsmElement.attribute(observableProperty)));
        hashMap.put(MemberValuePair.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty), CsmElement.space(), CsmElement.token(113), CsmElement.space(), CsmElement.child(observableProperty20)));
        hashMap.put(MethodCallExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.conditional(observableProperty23, condition, CsmElement.sequence(CsmElement.child(observableProperty23), CsmElement.token(109))), typeArguments(), CsmElement.child(observableProperty), CsmElement.token(101), CsmElement.list(observableProperty11, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.none(), CsmElement.none()), CsmElement.token(102)));
        CsmElement comment16 = CsmElement.comment();
        CsmElement child13 = CsmElement.child(observableProperty23);
        CsmElement csmElement14 = CsmElement.token(112);
        CsmElement typeArguments = typeArguments();
        ObservableProperty observableProperty26 = ObservableProperty.IDENTIFIER;
        hashMap.put(MethodReferenceExpr.class, CsmElement.sequence(comment16, child13, csmElement14, typeArguments, CsmElement.attribute(observableProperty26)));
        hashMap.put(Modifier.class, CsmElement.attribute(ObservableProperty.KEYWORD));
        CsmElement comment17 = CsmElement.comment();
        ObservableProperty observableProperty27 = ObservableProperty.QUALIFIER;
        hashMap.put(Name.class, CsmElement.sequence(comment17, CsmElement.conditional(observableProperty27, condition, CsmElement.sequence(CsmElement.child(observableProperty27), CsmElement.token(109))), CsmElement.attribute(observableProperty26), CsmElement.orphanCommentsEnding()));
        hashMap.put(NameExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty), CsmElement.orphanCommentsEnding()));
        CsmElement comment18 = CsmElement.comment();
        CsmElement csmElement15 = CsmElement.token(111);
        CsmElement child14 = CsmElement.child(observableProperty);
        ObservableProperty observableProperty28 = ObservableProperty.PAIRS;
        hashMap.put(NormalAnnotationExpr.class, CsmElement.sequence(comment18, csmElement15, child14, CsmElement.conditional(observableProperty28, condition3, CsmElement.token(101)), CsmElement.list(observableProperty28, CsmElement.sequence(CsmElement.comma(), CsmElement.space())), CsmElement.conditional(observableProperty28, condition3, CsmElement.token(102))));
        hashMap.put(NullLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(44)));
        CsmElement comment19 = CsmElement.comment();
        CsmElement conditional4 = CsmElement.conditional(observableProperty23, condition, CsmElement.sequence(CsmElement.child(observableProperty23), CsmElement.token(109)));
        CsmElement csmElement16 = CsmElement.token(42);
        CsmElement space14 = CsmElement.space();
        ObservableProperty observableProperty29 = ObservableProperty.TYPE_ARGUMENTS;
        CsmElement list8 = CsmElement.list(observableProperty29, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.token(114), CsmElement.token(150));
        CsmElement conditional5 = CsmElement.conditional(observableProperty29, condition3, CsmElement.space());
        CsmElement child15 = CsmElement.child(observableProperty3);
        CsmElement csmElement17 = CsmElement.token(101);
        CsmElement list9 = CsmElement.list(observableProperty11, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.none(), CsmElement.none());
        CsmElement csmElement18 = CsmElement.token(102);
        ObservableProperty observableProperty30 = ObservableProperty.ANONYMOUS_CLASS_BODY;
        hashMap.put(ObjectCreationExpr.class, CsmElement.sequence(comment19, conditional4, csmElement16, space14, list8, conditional5, child15, csmElement17, list9, csmElement18, CsmElement.conditional(observableProperty30, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(103), CsmElement.newline(), CsmElement.indent(), CsmElement.list(observableProperty30, CsmElement.newline(), CsmElement.newline(), CsmElement.newline(), CsmElement.newline()), CsmElement.unindent(), CsmElement.token(104)))));
        hashMap.put(RecordPatternExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty3), CsmElement.space(), CsmElement.token(101), CsmElement.list(ObservableProperty.PATTERN_LIST, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.none(), CsmElement.none()), CsmElement.token(102)));
        hashMap.put(SimpleName.class, CsmElement.attribute(observableProperty26));
        hashMap.put(SingleMemberAnnotationExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(111), CsmElement.child(observableProperty), CsmElement.token(101), CsmElement.child(ObservableProperty.MEMBER_VALUE), CsmElement.token(102)));
        hashMap.put(StringLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.stringToken(observableProperty20)));
        CsmElement comment20 = CsmElement.comment();
        ObservableProperty observableProperty31 = ObservableProperty.TYPE_NAME;
        hashMap.put(SuperExpr.class, CsmElement.sequence(comment20, CsmElement.conditional(observableProperty31, condition, CsmElement.sequence(CsmElement.child(observableProperty31), CsmElement.token(109))), CsmElement.token(56)));
        hashMap.put(TextBlockLiteralExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.textBlockToken(observableProperty20)));
        hashMap.put(TypePatternExpr.class, CsmElement.sequence(CsmElement.child(observableProperty3), CsmElement.space(), CsmElement.child(observableProperty)));
        hashMap.put(ThisExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.conditional(observableProperty31, condition, CsmElement.sequence(CsmElement.child(observableProperty31), CsmElement.token(109))), CsmElement.token(59)));
        hashMap.put(TypeExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty3)));
        hashMap.put(UnaryExpr.class, CsmElement.sequence(CsmElement.conditional(ObservableProperty.PREFIX, condition2, CsmElement.attribute(observableProperty19)), CsmElement.child(observableProperty21), CsmElement.conditional(ObservableProperty.POSTFIX, condition2, CsmElement.attribute(observableProperty19))));
        hashMap.put(VariableDeclarationExpr.class, CsmElement.sequence(CsmElement.comment(), onlineAnnotations(), modifiers(), CsmElement.child(observableProperty15), CsmElement.space(), CsmElement.list(observableProperty14, CsmElement.sequence(CsmElement.comma(), CsmElement.space()))));
        CsmElement comment21 = CsmElement.comment();
        CsmElement csmElement19 = CsmElement.token(12);
        CsmElement space15 = CsmElement.space();
        CsmElement child16 = CsmElement.child(ObservableProperty.CHECK);
        ObservableProperty observableProperty32 = ObservableProperty.MESSAGE;
        hashMap.put(AssertStmt.class, CsmElement.sequence(comment21, csmElement19, space15, child16, CsmElement.conditional(observableProperty32, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(118), CsmElement.space(), CsmElement.child(observableProperty32))), CsmElement.semicolon()));
        CsmElement orphanCommentsBeforeThis3 = CsmElement.orphanCommentsBeforeThis();
        CsmElement comment22 = CsmElement.comment();
        CsmElement csmElement20 = CsmElement.token(103);
        CsmElement newline4 = CsmElement.newline();
        ObservableProperty observableProperty33 = ObservableProperty.STATEMENTS;
        hashMap.put(BlockStmt.class, CsmElement.sequence(orphanCommentsBeforeThis3, comment22, csmElement20, newline4, CsmElement.list(observableProperty33, CsmElement.newline(), CsmElement.indent(), CsmElement.sequence(CsmElement.newline(), CsmElement.unindent())), CsmElement.orphanCommentsEnding(), CsmElement.token(104)));
        CsmElement comment23 = CsmElement.comment();
        CsmElement csmElement21 = CsmElement.token(14);
        ObservableProperty observableProperty34 = ObservableProperty.LABEL;
        hashMap.put(BreakStmt.class, CsmElement.sequence(comment23, csmElement21, CsmElement.conditional(observableProperty34, condition, CsmElement.sequence(CsmElement.space(), CsmElement.child(observableProperty34))), CsmElement.semicolon()));
        hashMap.put(CatchClause.class, CsmElement.sequence(CsmElement.comment(), CsmElement.space(), CsmElement.token(17), CsmElement.space(), CsmElement.token(101), CsmElement.child(ObservableProperty.PARAMETER), CsmElement.token(102), CsmElement.space(), CsmElement.child(observableProperty10)));
        hashMap.put(ContinueStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(21), CsmElement.conditional(observableProperty34, condition, CsmElement.sequence(CsmElement.space(), CsmElement.child(observableProperty34))), CsmElement.semicolon()));
        hashMap.put(DoStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(23), CsmElement.space(), CsmElement.child(observableProperty10), CsmElement.space(), CsmElement.token(67), CsmElement.space(), CsmElement.token(101), CsmElement.child(observableProperty22), CsmElement.token(102), CsmElement.semicolon()));
        hashMap.put(EmptyStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(107)));
        hashMap.put(UnparsableStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(107)));
        hashMap.put(ExplicitConstructorInvocationStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.conditional(ObservableProperty.THIS, condition2, CsmElement.sequence(typeArguments(), CsmElement.token(59)), CsmElement.sequence(CsmElement.conditional(observableProperty21, condition, CsmElement.sequence(CsmElement.child(observableProperty21), CsmElement.token(109))), typeArguments(), CsmElement.token(56))), CsmElement.token(101), CsmElement.list(observableProperty11, CsmElement.sequence(CsmElement.comma(), CsmElement.space())), CsmElement.token(102), CsmElement.semicolon()));
        hashMap.put(ExpressionStmt.class, CsmElement.sequence(CsmElement.orphanCommentsBeforeThis(), CsmElement.comment(), CsmElement.child(observableProperty21), CsmElement.semicolon()));
        hashMap.put(ForEachStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(32), CsmElement.space(), CsmElement.token(101), CsmElement.child(ObservableProperty.VARIABLE), CsmElement.space(), CsmElement.token(118), CsmElement.space(), CsmElement.child(ObservableProperty.ITERABLE), CsmElement.token(102), CsmElement.space(), CsmElement.child(observableProperty10)));
        hashMap.put(ForStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(32), CsmElement.space(), CsmElement.token(101), CsmElement.list(ObservableProperty.INITIALIZATION, CsmElement.sequence(CsmElement.comma(), CsmElement.space())), CsmElement.semicolon(), CsmElement.space(), CsmElement.child(ObservableProperty.COMPARE), CsmElement.semicolon(), CsmElement.space(), CsmElement.list(ObservableProperty.UPDATE, CsmElement.sequence(CsmElement.comma(), CsmElement.space())), CsmElement.token(102), CsmElement.space(), CsmElement.child(observableProperty10)));
        CsmElement comment24 = CsmElement.comment();
        CsmElement csmElement22 = CsmElement.token(34);
        CsmElement space16 = CsmElement.space();
        CsmElement csmElement23 = CsmElement.token(101);
        CsmElement child17 = CsmElement.child(observableProperty22);
        CsmElement csmElement24 = CsmElement.token(102);
        ObservableProperty observableProperty35 = ObservableProperty.THEN_BLOCK;
        CsmElement space17 = CsmElement.space();
        ObservableProperty observableProperty36 = ObservableProperty.THEN_STMT;
        CsmElement child18 = CsmElement.child(observableProperty36);
        ObservableProperty observableProperty37 = ObservableProperty.ELSE_STMT;
        hashMap.put(IfStmt.class, CsmElement.sequence(comment24, csmElement22, space16, csmElement23, child17, csmElement24, CsmElement.conditional(observableProperty35, condition2, CsmElement.sequence(space17, child18, CsmElement.conditional(observableProperty37, condition, CsmElement.space())), CsmElement.sequence(CsmElement.newline(), CsmElement.indent(), CsmElement.child(observableProperty36), CsmElement.conditional(observableProperty37, condition, CsmElement.newline()), CsmElement.unindent())), CsmElement.conditional(observableProperty37, condition, CsmElement.sequence(CsmElement.token(25), CsmElement.conditional((List<ObservableProperty>) Arrays.asList(ObservableProperty.ELSE_BLOCK, ObservableProperty.CASCADING_IF_STMT), condition2, CsmElement.sequence(CsmElement.space(), CsmElement.child(observableProperty37)), CsmElement.sequence(CsmElement.newline(), CsmElement.indent(), CsmElement.child(observableProperty37), CsmElement.unindent()))))));
        hashMap.put(LabeledStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(observableProperty34), CsmElement.token(118), CsmElement.space(), CsmElement.child(ObservableProperty.STATEMENT)));
        hashMap.put(LocalClassDeclarationStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(ObservableProperty.CLASS_DECLARATION)));
        hashMap.put(LocalRecordDeclarationStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(ObservableProperty.RECORD_DECLARATION)));
        hashMap.put(ReturnStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(51), CsmElement.conditional(observableProperty21, condition, CsmElement.sequence(CsmElement.space(), CsmElement.child(observableProperty21))), CsmElement.semicolon()));
        hashMap.put(YieldStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(68), CsmElement.conditional(observableProperty21, condition, CsmElement.sequence(CsmElement.space(), CsmElement.child(observableProperty21))), CsmElement.semicolon()));
        CsmElement comment25 = CsmElement.comment();
        ObservableProperty observableProperty38 = ObservableProperty.SWITCH_STATEMENT_ENTRY;
        ObservableProperty observableProperty39 = ObservableProperty.LABELS;
        CsmElement sequence = CsmElement.sequence(CsmElement.conditional(observableProperty39, condition3, CsmElement.sequence(CsmElement.token(16), CsmElement.space(), CsmElement.list(observableProperty39)), CsmElement.token(22)), CsmElement.token(118), CsmElement.newline());
        ObservableProperty observableProperty40 = ObservableProperty.DEFAULT;
        CsmElement sequence2 = CsmElement.sequence(CsmElement.token(16), CsmElement.space(), CsmElement.list(observableProperty39), CsmElement.comma(), CsmElement.space(), CsmElement.token(22));
        CsmElement csmElement25 = CsmElement.token(16);
        CsmElement space18 = CsmElement.space();
        CsmElement list10 = CsmElement.list(observableProperty39);
        ObservableProperty observableProperty41 = ObservableProperty.GUARD;
        hashMap.put(SwitchEntry.class, CsmElement.sequence(comment25, CsmElement.conditional(observableProperty38, condition2, sequence, CsmElement.sequence(CsmElement.conditional(observableProperty39, condition3, CsmElement.conditional(observableProperty40, condition2, sequence2, CsmElement.sequence(csmElement25, space18, list10, CsmElement.conditional(observableProperty41, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(79), CsmElement.space(), CsmElement.child(observableProperty41))))), CsmElement.token(22)), CsmElement.space(), CsmElement.token(119), CsmElement.space())), CsmElement.indent(), CsmElement.list(observableProperty33, CsmElement.newline(), CsmElement.none(), CsmElement.newline()), CsmElement.unindent()));
        CsmElement comment26 = CsmElement.comment();
        CsmElement csmElement26 = CsmElement.token(57);
        CsmElement csmElement27 = CsmElement.token(101);
        ObservableProperty observableProperty42 = ObservableProperty.SELECTOR;
        hashMap.put(SwitchStmt.class, CsmElement.sequence(comment26, csmElement26, csmElement27, CsmElement.child(observableProperty42), CsmElement.token(102), CsmElement.space(), CsmElement.token(103), CsmElement.newline(), CsmElement.list(observableProperty13, CsmElement.none(), CsmElement.indent(), CsmElement.unindent()), CsmElement.token(104)));
        hashMap.put(SwitchExpr.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(57), CsmElement.token(101), CsmElement.child(observableProperty42), CsmElement.token(102), CsmElement.space(), CsmElement.token(103), CsmElement.newline(), CsmElement.list(observableProperty13, CsmElement.none(), CsmElement.indent(), CsmElement.unindent()), CsmElement.token(104)));
        hashMap.put(SynchronizedStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(58), CsmElement.space(), CsmElement.token(101), CsmElement.child(observableProperty21), CsmElement.token(102), CsmElement.space(), CsmElement.child(observableProperty10)));
        hashMap.put(ThrowStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(60), CsmElement.space(), CsmElement.child(observableProperty21), CsmElement.semicolon()));
        CsmElement comment27 = CsmElement.comment();
        CsmElement csmElement28 = CsmElement.token(64);
        CsmElement space19 = CsmElement.space();
        ObservableProperty observableProperty43 = ObservableProperty.RESOURCES;
        CsmElement conditional6 = CsmElement.conditional(observableProperty43, condition3, CsmElement.sequence(CsmElement.token(101), CsmElement.list(observableProperty43, CsmElement.sequence(CsmElement.semicolon(), CsmElement.newline()), CsmElement.indent(), CsmElement.unindent()), CsmElement.token(102), CsmElement.space()));
        CsmElement child19 = CsmElement.child(ObservableProperty.TRY_BLOCK);
        CsmElement list11 = CsmElement.list(ObservableProperty.CATCH_CLAUSES);
        ObservableProperty observableProperty44 = ObservableProperty.FINALLY_BLOCK;
        hashMap.put(TryStmt.class, CsmElement.sequence(comment27, csmElement28, space19, conditional6, child19, list11, CsmElement.conditional(observableProperty44, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(30), CsmElement.space(), CsmElement.child(observableProperty44)))));
        hashMap.put(WhileStmt.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(67), CsmElement.space(), CsmElement.token(101), CsmElement.child(observableProperty22), CsmElement.token(102), CsmElement.space(), CsmElement.child(observableProperty10)));
        CsmElement child20 = CsmElement.child(ObservableProperty.COMPONENT_TYPE);
        ObservableProperty observableProperty45 = ObservableProperty.ANNOTATIONS;
        hashMap.put(ArrayType.class, CsmElement.sequence(child20, CsmElement.list(observableProperty45), CsmElement.string(105), CsmElement.string(106)));
        hashMap.put(ClassOrInterfaceType.class, CsmElement.sequence(CsmElement.comment(), CsmElement.conditional(observableProperty23, condition, CsmElement.sequence(CsmElement.child(observableProperty23), CsmElement.string(109))), CsmElement.list(observableProperty45, CsmElement.space(), CsmElement.none(), CsmElement.space()), CsmElement.child(observableProperty), CsmElement.conditional(ObservableProperty.USING_DIAMOND_OPERATOR, condition2, CsmElement.sequence(CsmElement.string(114), CsmElement.string(150)), typeArguments())));
        CsmElement comment28 = CsmElement.comment();
        CsmElement annotations2 = annotations();
        ObservableProperty observableProperty46 = ObservableProperty.ELEMENTS;
        hashMap.put(IntersectionType.class, CsmElement.sequence(comment28, annotations2, CsmElement.list(observableProperty46, CsmElement.sequence(CsmElement.space(), CsmElement.token(132), CsmElement.space()))));
        hashMap.put(PrimitiveType.class, CsmElement.sequence(CsmElement.comment(), CsmElement.list(observableProperty45), CsmElement.attribute(observableProperty3)));
        hashMap.put(TypeParameter.class, CsmElement.sequence(CsmElement.comment(), annotations(), CsmElement.child(observableProperty), CsmElement.list(ObservableProperty.TYPE_BOUND, CsmElement.sequence(CsmElement.space(), CsmElement.token(132), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(27), CsmElement.space()), CsmElement.none())));
        hashMap.put(UnionType.class, CsmElement.sequence(CsmElement.comment(), annotations(), CsmElement.list(observableProperty46, CsmElement.sequence(CsmElement.space(), CsmElement.token(133), CsmElement.space()))));
        hashMap.put(UnknownType.class, CsmElement.none());
        hashMap.put(VoidType.class, CsmElement.sequence(CsmElement.comment(), annotations(), CsmElement.token(65)));
        hashMap.put(VarType.class, CsmElement.sequence(CsmElement.comment(), annotations(), CsmElement.string(98, "var")));
        CsmElement comment29 = CsmElement.comment();
        CsmElement annotations3 = annotations();
        CsmElement csmElement29 = CsmElement.token(117);
        ObservableProperty observableProperty47 = ObservableProperty.EXTENDED_TYPE;
        CsmElement conditional7 = CsmElement.conditional(observableProperty47, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(27), CsmElement.space(), CsmElement.child(observableProperty47)));
        ObservableProperty observableProperty48 = ObservableProperty.SUPER_TYPE;
        hashMap.put(WildcardType.class, CsmElement.sequence(comment29, annotations3, csmElement29, conditional7, CsmElement.conditional(observableProperty48, condition, CsmElement.sequence(CsmElement.space(), CsmElement.token(56), CsmElement.space(), CsmElement.child(observableProperty48)))));
        hashMap.put(ArrayCreationLevel.class, CsmElement.sequence(annotations(), CsmElement.token(105), CsmElement.child(ObservableProperty.DIMENSION), CsmElement.token(106)));
        hashMap.put(CompilationUnit.class, CsmElement.sequence(CsmElement.comment(), CsmElement.child(ObservableProperty.PACKAGE_DECLARATION), CsmElement.list(ObservableProperty.IMPORTS, CsmElement.newline(), CsmElement.none(), CsmElement.sequence(CsmElement.newline(), CsmElement.newline())), CsmElement.list(ObservableProperty.TYPES, CsmElement.newline(), CsmElement.newline(), CsmElement.none(), CsmElement.newline()), CsmElement.child(ObservableProperty.MODULE), CsmElement.orphanCommentsEnding()));
        hashMap.put(ImportDeclaration.class, CsmElement.sequence(CsmElement.comment(), CsmElement.token(36), CsmElement.space(), CsmElement.conditional(observableProperty16, condition2, CsmElement.sequence(CsmElement.token(54), CsmElement.space())), CsmElement.child(observableProperty), CsmElement.conditional(ObservableProperty.ASTERISK, condition2, CsmElement.sequence(CsmElement.token(109), CsmElement.token(130))), CsmElement.semicolon(), CsmElement.orphanCommentsEnding()));
        hashMap.put(PackageDeclaration.class, CsmElement.sequence(CsmElement.comment(), memberAnnotations(), CsmElement.token(45), CsmElement.space(), CsmElement.child(observableProperty), CsmElement.semicolon(), CsmElement.newline(), CsmElement.newline(), CsmElement.orphanCommentsEnding()));
        hashMap.put(ModuleDeclaration.class, CsmElement.sequence(memberAnnotations(), CsmElement.conditional(ObservableProperty.OPEN, condition2, CsmElement.sequence(CsmElement.token(72), CsmElement.space())), CsmElement.token(75), CsmElement.space(), CsmElement.child(observableProperty), CsmElement.space(), CsmElement.token(103), CsmElement.newline(), CsmElement.indent(), CsmElement.list(ObservableProperty.DIRECTIVES), CsmElement.unindent(), CsmElement.token(104), CsmElement.newline()));
        CsmElement csmElement30 = CsmElement.token(76);
        CsmElement space20 = CsmElement.space();
        CsmElement child21 = CsmElement.child(observableProperty);
        ObservableProperty observableProperty49 = ObservableProperty.MODULE_NAMES;
        hashMap.put(ModuleExportsDirective.class, CsmElement.sequence(csmElement30, space20, child21, CsmElement.list(observableProperty49, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(70), CsmElement.space()), CsmElement.none()), CsmElement.semicolon(), CsmElement.newline()));
        hashMap.put(ModuleOpensDirective.class, CsmElement.sequence(CsmElement.token(73), CsmElement.space(), CsmElement.child(observableProperty), CsmElement.list(observableProperty49, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(70), CsmElement.space()), CsmElement.none()), CsmElement.semicolon(), CsmElement.newline()));
        hashMap.put(ModuleProvidesDirective.class, CsmElement.sequence(CsmElement.token(77), CsmElement.space(), CsmElement.child(observableProperty), CsmElement.list(ObservableProperty.WITH, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.sequence(CsmElement.space(), CsmElement.token(71), CsmElement.space()), CsmElement.none()), CsmElement.semicolon(), CsmElement.newline()));
        hashMap.put(ModuleRequiresDirective.class, CsmElement.sequence(CsmElement.token(69), CsmElement.space(), modifiers(), CsmElement.child(observableProperty), CsmElement.semicolon(), CsmElement.newline()));
        hashMap.put(ModuleUsesDirective.class, CsmElement.sequence(CsmElement.token(74), CsmElement.space(), CsmElement.child(observableProperty), CsmElement.semicolon(), CsmElement.newline()));
        List list12 = (List) JavaParserMetaModel.getNodeMetaModels().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$static$0;
                lambda$static$0 = ConcreteSyntaxModel.lambda$static$0((BaseNodeMetaModel) obj);
                return lambda$static$0;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$static$1;
                lambda$static$1 = ConcreteSyntaxModel.lambda$static$1((BaseNodeMetaModel) obj);
                return lambda$static$1;
            }
        }).collect(Collectors.toList());
        if (list12.isEmpty()) {
            initializationError = Optional.empty();
            return;
        }
        initializationError = Optional.of("The " + ConcreteSyntaxModel.class.getSimpleName() + " should include support for these classes: " + String.join(", ", list12));
    }

    private ConcreteSyntaxModel() {
    }

    private static CsmElement annotations() {
        return CsmElement.list(ObservableProperty.ANNOTATIONS, CsmElement.space(), CsmElement.none(), CsmElement.newline());
    }

    public static CsmElement forClass(Class<? extends Node> nodeClazz) {
        initializationError.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ConcreteSyntaxModel.lambda$forClass$2((String) obj);
            }
        });
        Map<Class, CsmElement> map = concreteSyntaxModelByClass;
        if (map.containsKey(nodeClazz)) {
            return map.get(nodeClazz);
        }
        throw new UnsupportedOperationException("Class " + nodeClazz.getSimpleName() + " not found!");
    }

    public static void genericPrettyPrint(Node node, SourcePrinter printer) {
        forClass(node.getClass()).prettyPrint(node, printer);
    }

    public static void lambda$forClass$2(String s10) {
        throw new IllegalStateException(s10);
    }

    public static boolean lambda$static$0(BaseNodeMetaModel c10) {
        return (c10.isAbstract() || Comment.class.isAssignableFrom(c10.getType()) || concreteSyntaxModelByClass.containsKey(c10.getType())) ? false : true;
    }

    public static String lambda$static$1(BaseNodeMetaModel nm2) {
        return nm2.getType().getSimpleName();
    }

    private static CsmElement memberAnnotations() {
        return CsmElement.list(ObservableProperty.ANNOTATIONS, CsmElement.newline(), CsmElement.none(), CsmElement.newline());
    }

    private static CsmElement mix(CsmElement... elements) {
        return new CsmMix(Arrays.asList(elements));
    }

    private static CsmElement modifiers() {
        return CsmElement.list(ObservableProperty.MODIFIERS, CsmElement.space(), CsmElement.none(), CsmElement.space());
    }

    private static CsmElement onlineAnnotations() {
        return CsmElement.list(ObservableProperty.ANNOTATIONS, CsmElement.space(), CsmElement.none(), CsmElement.space());
    }

    private static CsmElement typeArguments() {
        return CsmElement.list(ObservableProperty.TYPE_ARGUMENTS, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.token(114), CsmElement.sequence(CsmElement.token(150)));
    }

    private static CsmElement typeParameters() {
        return CsmElement.list(ObservableProperty.TYPE_PARAMETERS, CsmElement.sequence(CsmElement.comma(), CsmElement.space()), CsmElement.token(114), CsmElement.sequence(CsmElement.token(150), CsmElement.space()));
    }

    public static String genericPrettyPrint(Node node) {
        SourcePrinter sourcePrinter = new SourcePrinter();
        forClass(node.getClass()).prettyPrint(node, sourcePrinter);
        return sourcePrinter.toString();
    }
}
