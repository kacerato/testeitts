package org.eclipse.jdt.core.dom;

import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ModuleModifier;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.ExtendedStringLiteral;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.IntLiteralMinValue;
import org.eclipse.jdt.internal.compiler.ast.IntersectionCastTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.eclipse.jdt.internal.compiler.ast.LongLiteralMinValue;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.PackageVisibilityStatement;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Receiver;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.StringLiteralConcatenation;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.UsesStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.core.dom.SourceRangeVerifier;
import org.eclipse.jdt.internal.core.util.Util;

public class ASTConverter {
    protected AST ast;
    private DefaultCommentMapper commentMapper;
    protected Comment[] commentsTable;
    char[] compilationUnitSource;
    int compilationUnitSourceLength;
    protected DocCommentParser docParser;
    protected boolean insideComments;
    protected IProgressMonitor monitor;
    protected Set pendingNameScopeResolution;
    protected Set pendingThisExpressionScopeResolution;
    private ASTNode referenceContext = null;
    protected boolean resolveBindings;
    Scanner scanner;

    public interface IGetJavaDoc {
        Javadoc getJavaDoc();
    }

    public interface ISetJavaDoc {
        void setJavadoc(Javadoc javadoc);
    }

    public ASTConverter(Map<String, String> map, boolean z10, IProgressMonitor iProgressMonitor) {
        this.resolveBindings = z10;
        long versionToJdkLevel = CompilerOptions.versionToJdkLevel(map.get("org.eclipse.jdt.core.compiler.source"));
        this.scanner = new Scanner(true, false, false, versionToJdkLevel == 0 ? ClassFileConstants.JDK1_3 : versionToJdkLevel, null, null, true);
        this.monitor = iProgressMonitor;
        this.insideComments = "enabled".equals(map.get("org.eclipse.jdt.core.compiler.doc.comment.support"));
    }

    private int annotateType(AnnotatableType annotatableType, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr) {
        int i10;
        int i11 = this.ast.apiLevel;
        if (i11 == 2 || i11 == 3 || i11 == 4) {
            annotatableType.setFlags(annotatableType.getFlags() | 1);
            return 0;
        }
        if (annotationArr == null) {
            return 0;
        }
        int startPosition = annotatableType.getStartPosition();
        int length = annotatableType.getLength();
        int i12 = 0;
        for (org.eclipse.jdt.internal.compiler.ast.Annotation annotation : annotationArr) {
            if (annotation != null) {
                Annotation convert = convert(annotation);
                annotatableType.annotations().add(convert);
                i12 = convert.getLength() + convert.getStartPosition();
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Annotation annotation2 = annotationArr[0];
        if (annotation2 != null && (i10 = annotation2.sourceStart) < startPosition && i10 > 0) {
            length += startPosition - i10;
            startPosition = i10;
        }
        annotatableType.setSourceRange(startPosition, length);
        return i12;
    }

    private void annotateTypeParameter(TypeParameter typeParameter, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr) {
        int i10 = this.ast.apiLevel;
        if (i10 == 2 || i10 == 3 || i10 == 4) {
            typeParameter.setFlags(typeParameter.getFlags() | 1);
            return;
        }
        for (org.eclipse.jdt.internal.compiler.ast.Annotation annotation : annotationArr) {
            if (annotation != null) {
                typeParameter.modifiers().add(convert(annotation));
            }
        }
    }

    private void checkAndSetMalformed(ASTNode aSTNode, ASTNode aSTNode2) {
        if ((aSTNode.getFlags() & 1) != 0) {
            aSTNode2.setFlags(aSTNode2.getFlags() | 1);
        }
    }

    private int checkLength(int i10, int i11) {
        int i12 = (i11 - i10) + 1;
        if (i12 > 0) {
            return i12;
        }
        return 0;
    }

    private Type componentType(ArrayType arrayType) {
        return arrayType.getComponentType();
    }

    private void convertAndSetReceiver(AbstractMethodDeclaration abstractMethodDeclaration, MethodDeclaration methodDeclaration) {
        Receiver receiver = abstractMethodDeclaration.receiver;
        if (receiver.qualifyingName != null) {
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(receiver.qualifyingName.getName()[0]));
            NameReference nameReference = receiver.qualifyingName;
            int i10 = nameReference.sourceStart;
            simpleName.setSourceRange(i10, (nameReference.sourceEnd - i10) + 1);
            methodDeclaration.setReceiverQualifier(simpleName);
            if (this.resolveBindings) {
                recordNodes(simpleName, receiver);
            }
        }
        Type convertType = convertType(receiver.type);
        methodDeclaration.setReceiverType(convertType);
        if (receiver.modifiers != 0) {
            methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
        }
        if (this.resolveBindings) {
            recordNodes(convertType, receiver);
            convertType.resolveBinding();
        }
    }

    private AnnotationTypeDeclaration convertToAnnotationDeclaration(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        checkCanceled();
        if (this.scanner.sourceLevel < ClassFileConstants.JDK1_5) {
            return null;
        }
        AnnotationTypeDeclaration newAnnotationTypeDeclaration = this.ast.newAnnotationTypeDeclaration();
        setModifiers(newAnnotationTypeDeclaration, typeDeclaration);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(typeDeclaration.name));
        int i10 = typeDeclaration.sourceStart;
        simpleName.setSourceRange(i10, (typeDeclaration.sourceEnd - i10) + 1);
        newAnnotationTypeDeclaration.setName(simpleName);
        int i11 = typeDeclaration.declarationSourceStart;
        newAnnotationTypeDeclaration.setSourceRange(i11, (typeDeclaration.bodyEnd - i11) + 1);
        buildBodyDeclarations(typeDeclaration, newAnnotationTypeDeclaration, false);
        if (this.resolveBindings) {
            recordNodes(newAnnotationTypeDeclaration, typeDeclaration);
            recordNodes(simpleName, typeDeclaration);
            newAnnotationTypeDeclaration.resolveBinding();
        }
        return newAnnotationTypeDeclaration;
    }

    private ArrayType convertToArray(Type type, int i10, int i11, int i12, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr) {
        ArrayType newArrayType = this.ast.newArrayType(type, i12);
        if (i11 > 0) {
            newArrayType.setSourceRange(i10, i11);
        }
        if (this.ast.apiLevel() >= 8) {
            setTypeAnnotationsAndSourceRangeOnArray(newArrayType, annotationArr);
            return newArrayType;
        }
        if (annotationArr != null) {
            newArrayType.setFlags(newArrayType.getFlags() | 1);
        }
        int retrieveProperRightBracketPosition = retrieveProperRightBracketPosition(i12, i10);
        ArrayType arrayType = newArrayType;
        for (int i13 = i12 - 1; i13 > 0; i13--) {
            arrayType = (ArrayType) componentType(arrayType);
            arrayType.setSourceRange(i10, (retrieveProperRightBracketPosition(i13, i10) - i10) + 1);
        }
        int i14 = retrieveProperRightBracketPosition - i10;
        if (i11 < i14) {
            newArrayType.setSourceRange(i10, i14 + 1);
        }
        return newArrayType;
    }

    private Dimension convertToDimensions(int i10, int i11, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr) {
        int length = annotationArr == null ? 0 : annotationArr.length;
        Dimension newDimension = this.ast.newDimension();
        for (int i12 = 0; i12 < length; i12++) {
            newDimension.annotations().add(convert(annotationArr[i12]));
        }
        retrieveDimensionAndSetPositions(i10, i11, newDimension);
        return newDimension;
    }

    private EnumDeclaration convertToEnumDeclaration(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        checkCanceled();
        EnumDeclaration enumDeclaration = new EnumDeclaration(this.ast);
        setModifiers(enumDeclaration, typeDeclaration);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(typeDeclaration.name));
        int i10 = typeDeclaration.sourceStart;
        simpleName.setSourceRange(i10, (typeDeclaration.sourceEnd - i10) + 1);
        enumDeclaration.setName(simpleName);
        int i11 = typeDeclaration.declarationSourceStart;
        enumDeclaration.setSourceRange(i11, (typeDeclaration.bodyEnd - i11) + 1);
        TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
        if (typeReferenceArr != null) {
            for (TypeReference typeReference : typeReferenceArr) {
                enumDeclaration.superInterfaceTypes().add(convertType(typeReference));
            }
        }
        buildBodyDeclarations(typeDeclaration, enumDeclaration);
        if (this.resolveBindings) {
            recordNodes(enumDeclaration, typeDeclaration);
            recordNodes(simpleName, typeDeclaration);
            enumDeclaration.resolveBinding();
        }
        return enumDeclaration;
    }

    private Type createBaseType(TypeReference typeReference, long[] jArr, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr, char[][] cArr, int i10, int i11, boolean z10) {
        if (i11 == 0) {
            SimpleName createSimpleName = createSimpleName(typeReference, jArr, cArr, 0);
            SimpleType createSimpleType = createSimpleType(createSimpleName, typeReference, jArr, 0, 0);
            int i12 = createSimpleName.index;
            setSourceRangeAnnotationsAndRecordNodes(typeReference, createSimpleType, jArr, annotationArr, 0, 0, i12 > 0 ? i12 - 1 : 0);
            return createSimpleType;
        }
        if (i11 == i10) {
            int i13 = i11 - 1;
            return createSimpleType(setQualifiedNameNameAndSourceRanges(cArr, jArr, i13, typeReference), typeReference, jArr, 0, i13);
        }
        if (z10 && (annotationArr == null || annotationArr[i11] == null)) {
            return createSimpleType(setQualifiedNameNameAndSourceRanges(cArr, jArr, i11, typeReference), typeReference, jArr, 0, i11);
        }
        Name createSimpleName2 = i11 == 1 ? createSimpleName(typeReference, jArr, cArr, 0) : setQualifiedNameNameAndSourceRanges(cArr, jArr, i11 - 1, typeReference);
        boolean z11 = (annotationArr == null || annotationArr[i11] == null) ? false : true;
        if (z11 && this.ast.apiLevel >= 8) {
            NameQualifiedType nameQualifiedType = new NameQualifiedType(this.ast);
            nameQualifiedType.setQualifier(createSimpleName2);
            nameQualifiedType.setName(createSimpleName(typeReference, jArr, cArr, i11));
            setSourceRangeAnnotationsAndRecordNodes(typeReference, nameQualifiedType, jArr, annotationArr, i11, 0, i11);
            return nameQualifiedType;
        }
        AnnotatableType newSimpleType = this.ast.newSimpleType(createSimpleName2);
        int i14 = createSimpleName2.index;
        setSourceRangeAnnotationsAndRecordNodes(typeReference, newSimpleType, jArr, annotationArr, 0, 0, i14 > 0 ? i14 - 1 : 0);
        QualifiedType createQualifiedType = createQualifiedType(typeReference, jArr, annotationArr, cArr, i11, newSimpleType);
        if (!z11) {
            return createQualifiedType;
        }
        createQualifiedType.setFlags(createQualifiedType.getFlags() | 1);
        return createQualifiedType;
    }

    private Modifier createModifier(Modifier.ModifierKeyword modifierKeyword) {
        Modifier modifier = new Modifier(this.ast);
        modifier.setKeyword(modifierKeyword);
        int currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
        modifier.setSourceRange(currentTokenStartPosition, (this.scanner.getCurrentTokenEndPosition() - currentTokenStartPosition) + 1);
        return modifier;
    }

    private ModuleModifier createModuleModifier(ModuleModifier.ModuleModifierKeyword moduleModifierKeyword) {
        ModuleModifier moduleModifier = new ModuleModifier(this.ast);
        moduleModifier.setKeyword(moduleModifierKeyword);
        int currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
        moduleModifier.setSourceRange(currentTokenStartPosition, (this.scanner.getCurrentTokenEndPosition() - currentTokenStartPosition) + 1);
        return moduleModifier;
    }

    private QualifiedType createQualifiedType(TypeReference typeReference, long[] jArr, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr, char[][] cArr, int i10, Type type) {
        SimpleName createSimpleName = createSimpleName(typeReference, jArr, cArr, i10);
        QualifiedType qualifiedType = new QualifiedType(this.ast);
        qualifiedType.setQualifier(type);
        qualifiedType.setName(createSimpleName);
        setSourceRangeAnnotationsAndRecordNodes(typeReference, qualifiedType, annotationArr, i10, type.getStartPosition(), (createSimpleName.getStartPosition() + createSimpleName.getLength()) - 1);
        return qualifiedType;
    }

    private SimpleName createSimpleName(TypeReference typeReference, long[] jArr, char[][] cArr, int i10) {
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(cArr[i10]));
        recordPendingNameScopeResolution(simpleName);
        long j10 = jArr[i10];
        int i11 = (int) (j10 >>> 32);
        simpleName.setSourceRange(i11, (((int) j10) - i11) + 1);
        simpleName.index = i10 + 1;
        if (this.resolveBindings) {
            recordNodes(simpleName, typeReference);
        }
        return simpleName;
    }

    private SimpleType createSimpleType(Name name, TypeReference typeReference, long[] jArr, int i10, int i11) {
        SimpleType simpleType = new SimpleType(this.ast);
        simpleType.setName(name);
        int i12 = (int) (jArr[i10] >>> 32);
        simpleType.setSourceRange(i12, (((int) jArr[i11]) - i12) + 1);
        if (this.resolveBindings) {
            recordNodes(simpleType, typeReference);
        }
        return simpleType;
    }

    private ArrayType extractSubArrayType(ArrayType arrayType, int i10, int i11) {
        int startPosition = arrayType.getStartPosition();
        if (this.ast.apiLevel() < 8) {
            while (i11 > 0) {
                arrayType = (ArrayType) componentType(arrayType);
                i11--;
            }
            updateInnerPositions(arrayType, i10);
        } else {
            List dimensions = arrayType.dimensions();
            while (i11 > 0) {
                dimensions.remove(dimensions.size() - 1);
                i11--;
            }
        }
        arrayType.setSourceRange(startPosition, (retrieveProperRightBracketPosition(i10, startPosition) - startPosition) + 1);
        arrayType.setParent(null, null);
        return arrayType;
    }

    private int getKnownEnd(ModuleDeclaration moduleDeclaration, int i10, int i11) {
        int retrieveRightBrace = retrieveRightBrace(moduleDeclaration.getStartPosition() + 1, this.compilationUnitSourceLength);
        if (retrieveRightBrace > i10) {
            i10 = retrieveRightBrace;
        }
        return i10 > i11 ? i10 : i11;
    }

    private Name getName(org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode, char[][] cArr, long[] jArr) {
        if ((cArr != null ? cArr.length : 0) > 1) {
            return setQualifiedNameNameAndSourceRanges(cArr, jArr, aSTNode);
        }
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(cArr[0]));
        long j10 = jArr[0];
        int i10 = (int) (j10 >>> 32);
        simpleName.setSourceRange(i10, (((int) j10) - i10) + 1);
        simpleName.index = 1;
        if (this.resolveBindings) {
            recordNodes(simpleName, aSTNode);
        }
        return simpleName;
    }

    private ModulePackageAccess getPackageVisibilityStatement(PackageVisibilityStatement packageVisibilityStatement, ModulePackageAccess modulePackageAccess) {
        int i10;
        int i11 = packageVisibilityStatement.declarationSourceEnd;
        int i12 = packageVisibilityStatement.declarationEnd;
        if (i12 > i11) {
            i11 = i12;
        }
        Name importName = getImportName(packageVisibilityStatement.pkgRef);
        modulePackageAccess.setName(importName);
        if (this.resolveBindings) {
            recordNodes(importName, packageVisibilityStatement.pkgRef);
        }
        ModuleReference[] moduleReferenceArr = packageVisibilityStatement.targets;
        if (moduleReferenceArr == null || moduleReferenceArr.length <= 0) {
            i10 = i11;
        } else {
            List modules = modulePackageAccess.modules();
            i10 = i11;
            for (ModuleReference moduleReference : packageVisibilityStatement.getTargetedModules()) {
                Name name = getName(moduleReference, CharOperation.splitOn('.', moduleReference.moduleName), moduleReference.sourcePositions);
                modules.add(name);
                int i13 = moduleReference.sourceEnd;
                if (i10 < i13) {
                    i10 = i13;
                }
                if (this.resolveBindings) {
                    recordNodes(name, moduleReference);
                }
            }
        }
        if (i10 > i11) {
            i11 = i10;
        }
        int i14 = packageVisibilityStatement.declarationSourceStart;
        modulePackageAccess.setSourceRange(i14, (i11 - i14) + 1);
        return modulePackageAccess;
    }

    private static void internalSetExpression(SwitchCase switchCase, Expression expression) {
        switchCase.setExpression(expression);
    }

    private static void internalSetExtraDimensions(SingleVariableDeclaration singleVariableDeclaration, int i10) {
        singleVariableDeclaration.setExtraDimensions(i10);
    }

    private static List internalThownExceptions(MethodDeclaration methodDeclaration) {
        return methodDeclaration.thrownExceptions();
    }

    private void lookupForScopes() {
        Set<Name> set = this.pendingNameScopeResolution;
        if (set != null) {
            for (Name name : set) {
                this.ast.getBindingResolver().recordScope(name, lookupScope(name));
            }
        }
        Set<ThisExpression> set2 = this.pendingThisExpressionScopeResolution;
        if (set2 != null) {
            for (ThisExpression thisExpression : set2) {
                this.ast.getBindingResolver().recordScope(thisExpression, lookupScope(thisExpression));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private BlockScope lookupScope(ASTNode aSTNode) {
        while (aSTNode != null && !(aSTNode instanceof MethodDeclaration) && !(aSTNode instanceof Initializer) && !(aSTNode instanceof FieldDeclaration) && !(aSTNode instanceof AbstractTypeDeclaration)) {
            aSTNode = aSTNode.getParent();
        }
        if (aSTNode instanceof Initializer) {
            Initializer initializer = (Initializer) aSTNode;
            while (!(aSTNode instanceof AbstractTypeDeclaration)) {
                aSTNode = aSTNode.getParent();
            }
            if ((aSTNode instanceof TypeDeclaration) || (aSTNode instanceof EnumDeclaration) || (aSTNode instanceof AnnotationTypeDeclaration)) {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) this.ast.getBindingResolver().getCorrespondingNode(aSTNode);
                return (initializer.getModifiers() & 8) != 0 ? typeDeclaration.staticInitializerScope : typeDeclaration.initializerScope;
            }
        } else {
            if (aSTNode instanceof FieldDeclaration) {
                FieldDeclaration fieldDeclaration = (FieldDeclaration) aSTNode;
                while (!(aSTNode instanceof AbstractTypeDeclaration)) {
                    aSTNode = aSTNode.getParent();
                }
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2 = (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) this.ast.getBindingResolver().getCorrespondingNode(aSTNode);
                return (fieldDeclaration.getModifiers() & 8) != 0 ? typeDeclaration2.staticInitializerScope : typeDeclaration2.initializerScope;
            }
            if (aSTNode instanceof AbstractTypeDeclaration) {
                return ((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) this.ast.getBindingResolver().getCorrespondingNode(aSTNode)).initializerScope;
            }
        }
        return ((AbstractMethodDeclaration) this.ast.getBindingResolver().getCorrespondingNode(aSTNode)).scope;
    }

    private void retrieveArrowPosition(ASTNode aSTNode) {
        setNodeSourceEndPosition(aSTNode, 98);
    }

    private void setInfixSourcePositions(InfixExpression infixExpression, int i10) {
        int size = infixExpression.extendedOperands().size();
        Expression rightOperand = size <= 0 ? infixExpression.getRightOperand() : (Expression) infixExpression.extendedOperands().get(size - 1);
        int startPosition = (rightOperand.getStartPosition() + rightOperand.getLength()) - 1;
        int startPosition2 = (infixExpression.getStartPosition() + infixExpression.getLength()) - 1;
        if (startPosition <= startPosition2) {
            startPosition = startPosition2;
        }
        infixExpression.setSourceRange(i10, (startPosition - i10) + 1);
    }

    private void setModuleModifiers(RequiresStatement requiresStatement, RequiresDirective requiresDirective) {
        ModuleModifier createModuleModifier;
        Scanner scanner = this.scanner;
        boolean z10 = scanner.fakeInModule;
        scanner.fakeInModule = true;
        scanner.resetTo(requiresStatement.declarationSourceStart, requiresStatement.sourceEnd);
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    break;
                }
                if (nextToken == 48) {
                    createModuleModifier = createModuleModifier(ModuleModifier.ModuleModifierKeyword.STATIC_KEYWORD);
                } else if (nextToken == 121) {
                    createModuleModifier = createModuleModifier(ModuleModifier.ModuleModifierKeyword.TRANSITIVE_KEYWORD);
                }
                if (createModuleModifier != null) {
                    requiresDirective.modifiers().add(createModuleModifier);
                }
            } catch (InvalidInputException unused) {
            } catch (Throwable th2) {
                this.scanner.fakeInModule = z10;
                throw th2;
            }
        }
        this.scanner.fakeInModule = z10;
    }

    private void setNodeSourceEndPosition(ASTNode aSTNode, int i10) {
        int nextToken;
        int startPosition = aSTNode.getStartPosition();
        this.scanner.resetTo(aSTNode.getLength() + startPosition, this.compilationUnitSourceLength);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return;
                }
            } catch (InvalidInputException unused) {
                return;
            }
        } while (nextToken != i10);
        aSTNode.setSourceRange(startPosition, this.scanner.currentPosition - startPosition);
    }

    private void setSourceRangeAnnotationsAndRecordNodes(TypeReference typeReference, AnnotatableType annotatableType, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr, int i10, int i11, int i12) {
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr2;
        annotatableType.setSourceRange(i11, (i12 - i11) + 1);
        if (annotationArr != null && (annotationArr2 = annotationArr[i10]) != null) {
            annotateType(annotatableType, annotationArr2);
        }
        if (this.resolveBindings) {
            recordNodes(annotatableType, typeReference);
        }
    }

    private void setTypeAnnotationsAndSourceRangeOnArray(ArrayType arrayType, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr) {
        List dimensions = arrayType.dimensions();
        Type elementType = arrayType.getElementType();
        int startPosition = elementType.getStartPosition();
        int length = elementType.getLength() + startPosition;
        int retrieveProperRightBracketPosition = retrieveProperRightBracketPosition(dimensions.size(), length);
        if (retrieveProperRightBracketPosition == -1) {
            retrieveProperRightBracketPosition = length - 1;
        }
        arrayType.setSourceRange(startPosition, (retrieveProperRightBracketPosition - startPosition) + 1);
        for (int i10 = 0; i10 < dimensions.size(); i10++) {
            Dimension dimension = (Dimension) dimensions.get(i10);
            setTypeAnnotationsOnDimension(dimension, annotationArr, i10);
            retrieveDimensionAndSetPositions(length, retrieveProperRightBracketPosition, dimension);
            length = dimension.getStartPosition() + dimension.getLength();
        }
    }

    private void setTypeAnnotationsOnDimension(Dimension dimension, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr, int i10) {
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr2;
        if (annotationArr == null || (annotationArr2 = annotationArr[i10]) == null) {
            return;
        }
        for (org.eclipse.jdt.internal.compiler.ast.Annotation annotation : annotationArr2) {
            dimension.annotations().add(convert(annotation));
        }
    }

    private void trimWhiteSpacesAndComments(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        int[] trimWhiteSpacesAndComments = trimWhiteSpacesAndComments(expression.sourceStart, expression.sourceEnd);
        expression.sourceStart = trimWhiteSpacesAndComments[0];
        expression.sourceEnd = trimWhiteSpacesAndComments[1];
    }

    public void adjustSourcePositionsForParent(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        this.scanner.resetTo(expression.sourceStart, expression.sourceEnd);
        try {
            this.scanner.getNextToken();
            expression.sourceStart = this.scanner.currentPosition;
            boolean z10 = false;
            int i10 = 1;
            int i11 = 0;
            while (!z10) {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    break;
                }
                if (nextToken == 23) {
                    i10++;
                } else if (nextToken == 25 && (i11 = i11 + 1) == i10) {
                    z10 = true;
                }
            }
            expression.sourceEnd = this.scanner.startPosition - 1;
        } catch (InvalidInputException unused) {
        }
    }

    public void buildBodyDeclarations(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration, AbstractTypeDeclaration abstractTypeDeclaration, boolean z10) {
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration;
        AbstractMethodDeclaration abstractMethodDeclaration;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration3 = typeDeclaration;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr2 = typeDeclaration3.memberTypes;
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fieldDeclarationArr = typeDeclaration3.fields;
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration3.methods;
        int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        int length2 = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        int length3 = typeDeclarationArr2 == null ? 0 : typeDeclarationArr2.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 >= length && i11 >= length3 && i12 >= length2) {
                convert(typeDeclaration3.javadoc, abstractTypeDeclaration);
                return;
            }
            int i13 = Integer.MAX_VALUE;
            char c10 = '\uffff';
            if (i10 < length) {
                fieldDeclaration = fieldDeclarationArr[i10];
                int i14 = fieldDeclaration.declarationSourceStart;
                if (i14 < Integer.MAX_VALUE) {
                    i13 = i14;
                    c10 = 0;
                }
            } else {
                fieldDeclaration = null;
            }
            if (i12 < length2) {
                abstractMethodDeclaration = abstractMethodDeclarationArr[i12];
                int i15 = abstractMethodDeclaration.declarationSourceStart;
                if (i15 < i13) {
                    i13 = i15;
                    c10 = 1;
                }
            } else {
                abstractMethodDeclaration = null;
            }
            if (i11 < length3) {
                typeDeclaration2 = typeDeclarationArr2[i11];
                typeDeclarationArr = typeDeclarationArr2;
                if (typeDeclaration2.declarationSourceStart < i13) {
                    c10 = 2;
                }
            } else {
                typeDeclarationArr = typeDeclarationArr2;
                typeDeclaration2 = null;
            }
            if (c10 == 0) {
                if (fieldDeclaration.getKind() == 3) {
                    abstractTypeDeclaration.bodyDeclarations().add(convert(fieldDeclaration));
                } else {
                    checkAndAddMultipleFieldDeclaration(fieldDeclarationArr, i10, abstractTypeDeclaration.bodyDeclarations());
                }
                i10++;
            } else if (c10 == 1) {
                i12++;
                if (!abstractMethodDeclaration.isDefaultConstructor() && !abstractMethodDeclaration.isClinit()) {
                    abstractTypeDeclaration.bodyDeclarations().add(convert(z10, abstractMethodDeclaration));
                }
            } else if (c10 == 2) {
                i11++;
                ASTNode convert = convert(typeDeclaration2);
                if (convert == null) {
                    abstractTypeDeclaration.setFlags(abstractTypeDeclaration.getFlags() | 1);
                } else {
                    abstractTypeDeclaration.bodyDeclarations().add(convert);
                }
            }
            typeDeclaration3 = typeDeclaration;
            typeDeclarationArr2 = typeDeclarationArr;
        }
    }

    public void buildCommentsTable(CompilationUnit compilationUnit, int[][] iArr) {
        this.commentsTable = new Comment[iArr.length];
        int i10 = 0;
        for (int[] iArr2 : iArr) {
            Comment createComment = createComment(iArr2);
            if (createComment != null) {
                createComment.setAlternateRoot(compilationUnit);
                this.commentsTable[i10] = createComment;
                i10++;
            }
        }
        if (i10 < iArr.length) {
            Comment[] commentArr = new Comment[i10];
            System.arraycopy(this.commentsTable, 0, commentArr, 0, i10);
            this.commentsTable = commentArr;
        }
        compilationUnit.setCommentTable(this.commentsTable);
    }

    public void checkAndAddMultipleFieldDeclaration(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fieldDeclarationArr, int i10, List list) {
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration = fieldDeclarationArr[i10];
        if (!(fieldDeclaration instanceof org.eclipse.jdt.internal.compiler.ast.Initializer)) {
            if (i10 <= 0 || fieldDeclarationArr[i10 - 1].declarationSourceStart != fieldDeclaration.declarationSourceStart) {
                list.add(convertToFieldDeclaration(fieldDeclaration));
                return;
            } else {
                ((FieldDeclaration) list.get(list.size() - 1)).fragments().add(convertToVariableDeclarationFragment(fieldDeclarationArr[i10]));
                return;
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Initializer initializer = (org.eclipse.jdt.internal.compiler.ast.Initializer) fieldDeclaration;
        Initializer initializer2 = new Initializer(this.ast);
        initializer2.setBody(convert(initializer.block));
        setModifiers(initializer2, initializer);
        int i11 = initializer.declarationSourceStart;
        initializer2.setSourceRange(i11, (initializer.sourceEnd - i11) + 1);
        convert(initializer.javadoc, initializer2);
        list.add(initializer2);
    }

    public void checkAndAddMultipleLocalDeclaration(org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr, int i10, List list) {
        if (i10 > 0) {
            org.eclipse.jdt.internal.compiler.ast.Statement statement = statementArr[i10 - 1];
            if (statement instanceof LocalDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.Statement statement2 = statementArr[i10];
                if (((LocalDeclaration) statement).declarationSourceStart == ((LocalDeclaration) statement2).declarationSourceStart) {
                    ((VariableDeclarationStatement) list.get(list.size() - 1)).fragments().add(convertToVariableDeclarationFragment((LocalDeclaration) statementArr[i10]));
                    return;
                } else {
                    list.add(convertToVariableDeclarationStatement((LocalDeclaration) statement2));
                    return;
                }
            }
        }
        list.add(convertToVariableDeclarationStatement((LocalDeclaration) statementArr[i10]));
    }

    public void checkCanceled() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public void completeRecord(ArrayType arrayType, org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode) {
        recordNodes(arrayType, aSTNode);
        if (this.ast.apiLevel() >= 8) {
            recordNodes(arrayType.getElementType(), aSTNode);
            return;
        }
        int dimensions = arrayType.getDimensions();
        for (int i10 = 0; i10 < dimensions; i10++) {
            Type componentType = componentType(arrayType);
            recordNodes(componentType, aSTNode);
            if (componentType.isArrayType()) {
                arrayType = (ArrayType) componentType;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x021a, code lost:
    
        if ((r0 & ((r1 > 8 ? 2 : 0) | 65544)) == 0) goto L116;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ASTNode convert(boolean z10, AbstractMethodDeclaration abstractMethodDeclaration) {
        ExplicitConstructorCall explicitConstructorCall;
        int i10;
        Type type;
        SingleVariableDeclaration convert;
        Type convertType;
        int startPosition;
        int length;
        Name convert2;
        checkCanceled();
        if (abstractMethodDeclaration instanceof AnnotationMethodDeclaration) {
            return convert((AnnotationMethodDeclaration) abstractMethodDeclaration);
        }
        MethodDeclaration methodDeclaration = new MethodDeclaration(this.ast);
        ASTNode aSTNode = this.referenceContext;
        this.referenceContext = methodDeclaration;
        setModifiers(methodDeclaration, abstractMethodDeclaration);
        boolean isConstructor = abstractMethodDeclaration.isConstructor();
        methodDeclaration.setConstructor(isConstructor);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(abstractMethodDeclaration.selector));
        int i11 = abstractMethodDeclaration.sourceStart;
        int retrieveIdentifierEndPosition = retrieveIdentifierEndPosition(i11, abstractMethodDeclaration.sourceEnd);
        if (retrieveIdentifierEndPosition < i11) {
            retrieveIdentifierEndPosition = abstractMethodDeclaration.selector.length + i11;
        }
        simpleName.setSourceRange(i11, (retrieveIdentifierEndPosition - i11) + 1);
        methodDeclaration.setName(simpleName);
        TypeReference[] typeReferenceArr = abstractMethodDeclaration.thrownExceptions;
        int i12 = abstractMethodDeclaration.sourceEnd;
        int length2 = typeReferenceArr == null ? 0 : typeReferenceArr.length;
        if (length2 > 0) {
            if (this.ast.apiLevel() < 8) {
                int i13 = 0;
                while (true) {
                    int i14 = i13 + 1;
                    TypeReference typeReference = typeReferenceArr[i13];
                    convert2 = convert(typeReference);
                    org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr = typeReference.annotations;
                    if (annotationArr != null && annotationArr.length > 0) {
                        convert2.setFlags(convert2.getFlags() | 1);
                    }
                    internalThownExceptions(methodDeclaration).add(convert2);
                    if (i14 >= length2) {
                        break;
                    }
                    i13 = i14;
                }
                startPosition = convert2.getStartPosition();
                length = convert2.getLength();
            } else {
                int i15 = 0;
                while (true) {
                    int i16 = i15 + 1;
                    convertType = convertType(typeReferenceArr[i15]);
                    methodDeclaration.thrownExceptionTypes().add(convertType);
                    if (i16 >= length2) {
                        break;
                    }
                    i15 = i16;
                }
                startPosition = convertType.getStartPosition();
                length = convertType.getLength();
            }
            i12 = length + startPosition;
        }
        if (abstractMethodDeclaration.receiver != null) {
            if (this.ast.apiLevel >= 8) {
                convertAndSetReceiver(abstractMethodDeclaration, methodDeclaration);
            } else {
                methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
            }
        }
        Argument[] argumentArr = abstractMethodDeclaration.arguments;
        int length3 = argumentArr == null ? 0 : argumentArr.length;
        if (length3 > 0) {
            int i17 = 0;
            while (true) {
                int i18 = i17 + 1;
                convert = convert(argumentArr[i17]);
                methodDeclaration.parameters().add(convert);
                if (i18 >= length3) {
                    break;
                }
                i17 = i18;
            }
            if (length2 == 0) {
                i12 = convert.getLength() + convert.getStartPosition();
            }
        }
        int i19 = i12;
        Block block = null;
        if (isConstructor) {
            if (z10) {
                methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
            }
            explicitConstructorCall = ((ConstructorDeclaration) abstractMethodDeclaration).constructorCall;
            if (this.ast.apiLevel != 2) {
                methodDeclaration.setReturnType2(null);
            } else {
                PrimitiveType primitiveType = new PrimitiveType(this.ast);
                primitiveType.setPrimitiveTypeCode(PrimitiveType.VOID);
                primitiveType.setSourceRange(abstractMethodDeclaration.sourceStart, 0);
                methodDeclaration.internalSetReturnType(primitiveType);
            }
        } else {
            if (abstractMethodDeclaration instanceof org.eclipse.jdt.internal.compiler.ast.MethodDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.MethodDeclaration methodDeclaration2 = (org.eclipse.jdt.internal.compiler.ast.MethodDeclaration) abstractMethodDeclaration;
                TypeReference typeReference2 = methodDeclaration2.returnType;
                if (typeReference2 != null) {
                    Type convertType2 = convertType(typeReference2);
                    int retrieveEndOfRightParenthesisPosition = retrieveEndOfRightParenthesisPosition(retrieveIdentifierEndPosition, methodDeclaration2.bodyEnd);
                    int extraDimensions = typeReference2.extraDimensions();
                    if (this.ast.apiLevel >= 8) {
                        type = convertType2;
                        setExtraAnnotatedDimensions(retrieveEndOfRightParenthesisPosition, methodDeclaration2.bodyEnd, typeReference2, methodDeclaration.extraDimensions(), extraDimensions);
                        i10 = extraDimensions;
                    } else {
                        i10 = extraDimensions;
                        type = convertType2;
                        internalSetExtraDimensions(methodDeclaration, i10);
                    }
                    setTypeForMethodDeclaration(methodDeclaration, type, i10);
                } else {
                    methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
                    if (this.ast.apiLevel != 2) {
                        methodDeclaration.setReturnType2(null);
                    }
                }
            }
            explicitConstructorCall = null;
        }
        int i20 = abstractMethodDeclaration.declarationSourceStart;
        int i21 = abstractMethodDeclaration.bodyEnd;
        methodDeclaration.setSourceRange(i20, checkLength(i20, i21));
        int i22 = abstractMethodDeclaration.declarationSourceEnd;
        int retrieveRightBraceOrSemiColonPosition = retrieveRightBraceOrSemiColonPosition(i21 == i22 ? i21 : i21 + 1, i22);
        if (retrieveRightBraceOrSemiColonPosition != -1) {
            int startPosition2 = methodDeclaration.getStartPosition();
            methodDeclaration.setSourceRange(startPosition2, (retrieveRightBraceOrSemiColonPosition - startPosition2) + 1);
            org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr = abstractMethodDeclaration.statements;
            int retrieveStartBlockPosition = retrieveStartBlockPosition(i19, abstractMethodDeclaration.bodyStart);
            if (retrieveStartBlockPosition == -1) {
                retrieveStartBlockPosition = abstractMethodDeclaration.bodyStart;
            }
            int retrieveRightBrace = retrieveRightBrace(abstractMethodDeclaration.bodyEnd + 1, i22);
            if (retrieveStartBlockPosition != -1 && retrieveRightBrace != -1) {
                block = new Block(this.ast);
                block.setSourceRange(retrieveStartBlockPosition, (retrieveRightBraceOrSemiColonPosition - retrieveStartBlockPosition) + 1);
                methodDeclaration.setBody(block);
            }
            if (block != null && (statementArr != null || explicitConstructorCall != null)) {
                if (explicitConstructorCall != null && explicitConstructorCall.accessMode != 1) {
                    block.statements().add(convert(explicitConstructorCall));
                }
                int length4 = statementArr == null ? 0 : statementArr.length;
                for (int i23 = 0; i23 < length4; i23++) {
                    org.eclipse.jdt.internal.compiler.ast.Statement statement = statementArr[i23];
                    if (statement instanceof LocalDeclaration) {
                        checkAndAddMultipleLocalDeclaration(statementArr, i23, block.statements());
                    } else {
                        Statement convert3 = convert(statement);
                        if (convert3 != null) {
                            block.statements().add(convert3);
                        }
                    }
                }
            }
            if (block != null) {
                int i24 = abstractMethodDeclaration.modifiers;
                if ((i24 & 1280) == 0) {
                    if (z10) {
                        int i25 = this.ast.apiLevel;
                        if (i25 >= 8) {
                        }
                    }
                }
                methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
            }
        } else {
            methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
            if (!abstractMethodDeclaration.isNative() && !abstractMethodDeclaration.isAbstract()) {
                int retrieveStartBlockPosition2 = retrieveStartBlockPosition(i19, i21);
                if (retrieveStartBlockPosition2 == -1) {
                    retrieveStartBlockPosition2 = abstractMethodDeclaration.bodyStart;
                }
                int i26 = abstractMethodDeclaration.bodyEnd;
                CategorizedProblem[] categorizedProblemArr = abstractMethodDeclaration.compilationResult().problems;
                if (categorizedProblemArr != null) {
                    int i27 = abstractMethodDeclaration.compilationResult().problemCount;
                    int i28 = 0;
                    while (true) {
                        if (i28 >= i27) {
                            break;
                        }
                        CategorizedProblem categorizedProblem = categorizedProblemArr[i28];
                        if (categorizedProblem.getSourceStart() == retrieveStartBlockPosition2 && categorizedProblem.getID() == 1610612976) {
                            i26 = categorizedProblem.getSourceEnd();
                            break;
                        }
                        i28++;
                    }
                }
                int startPosition3 = methodDeclaration.getStartPosition();
                methodDeclaration.setSourceRange(startPosition3, checkLength(startPosition3, i26));
                if (retrieveStartBlockPosition2 != -1 && i26 != -1) {
                    Block block2 = new Block(this.ast);
                    block2.setSourceRange(retrieveStartBlockPosition2, checkLength(retrieveStartBlockPosition2, i26));
                    methodDeclaration.setBody(block2);
                }
            }
        }
        org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameters = abstractMethodDeclaration.typeParameters();
        if (typeParameters != null) {
            if (this.ast.apiLevel != 2) {
                for (org.eclipse.jdt.internal.compiler.ast.TypeParameter typeParameter : typeParameters) {
                    methodDeclaration.typeParameters().add(convert(typeParameter));
                }
            } else {
                methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
            }
        }
        convert(abstractMethodDeclaration.javadoc, methodDeclaration);
        if (this.resolveBindings) {
            recordNodes(methodDeclaration, abstractMethodDeclaration);
            recordNodes(simpleName, abstractMethodDeclaration);
            methodDeclaration.resolveBinding();
        }
        this.referenceContext = aSTNode;
        return methodDeclaration;
    }

    public ImportDeclaration convertImport(ImportReference importReference) {
        ImportDeclaration importDeclaration = new ImportDeclaration(this.ast);
        importDeclaration.setName(getImportName(importReference));
        boolean z10 = (importReference.bits & 131072) != 0;
        int i10 = importReference.declarationSourceStart;
        importDeclaration.setSourceRange(i10, (importReference.declarationEnd - i10) + 1);
        importDeclaration.setOnDemand(z10);
        int i11 = importReference.modifiers;
        if (i11 != 0) {
            if (this.ast.apiLevel == 2) {
                importDeclaration.setFlags(importDeclaration.getFlags() | 1);
            } else if (i11 == 8) {
                importDeclaration.setStatic(true);
            } else {
                importDeclaration.setFlags(importDeclaration.getFlags() | 1);
            }
        }
        if (this.resolveBindings) {
            recordNodes(importDeclaration, importReference);
        }
        return importDeclaration;
    }

    public PackageDeclaration convertPackage(CompilationUnitDeclaration compilationUnitDeclaration) {
        ImportReference importReference = compilationUnitDeclaration.currentPackage;
        PackageDeclaration packageDeclaration = new PackageDeclaration(this.ast);
        char[][] cArr = importReference.tokens;
        int length = cArr.length;
        long[] jArr = importReference.sourcePositions;
        if (length > 1) {
            packageDeclaration.setName(setQualifiedNameNameAndSourceRanges(cArr, jArr, importReference));
        } else {
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(cArr[0]));
            int i10 = (int) (jArr[0] >>> 32);
            simpleName.setSourceRange(i10, (((int) jArr[length - 1]) - i10) + 1);
            simpleName.index = 1;
            packageDeclaration.setName(simpleName);
            if (this.resolveBindings) {
                recordNodes(simpleName, compilationUnitDeclaration);
            }
        }
        int i11 = importReference.declarationSourceStart;
        packageDeclaration.setSourceRange(i11, (importReference.declarationEnd - i11) + 1);
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = importReference.annotations;
        if (annotationArr != null) {
            if (this.ast.apiLevel != 2) {
                for (org.eclipse.jdt.internal.compiler.ast.Annotation annotation : annotationArr) {
                    packageDeclaration.annotations().add(convert(annotation));
                }
            } else {
                packageDeclaration.setFlags(packageDeclaration.getFlags() & 1);
            }
        }
        if (this.resolveBindings) {
            recordNodes(packageDeclaration, importReference);
        }
        convert(compilationUnitDeclaration.javadoc, packageDeclaration);
        return packageDeclaration;
    }

    public Expression convertToExpression(org.eclipse.jdt.internal.compiler.ast.Statement statement) {
        if (!(statement instanceof org.eclipse.jdt.internal.compiler.ast.Expression)) {
            return null;
        }
        org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression) statement;
        if (expression.isTrulyExpression()) {
            return convert(expression);
        }
        return null;
    }

    public FieldDeclaration convertToFieldDeclaration(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration) {
        VariableDeclarationFragment convertToVariableDeclarationFragment = convertToVariableDeclarationFragment(fieldDeclaration);
        FieldDeclaration fieldDeclaration2 = new FieldDeclaration(this.ast);
        fieldDeclaration2.fragments().add(convertToVariableDeclarationFragment);
        if (this.resolveBindings) {
            recordNodes(convertToVariableDeclarationFragment, fieldDeclaration);
            convertToVariableDeclarationFragment.resolveBinding();
        }
        int i10 = fieldDeclaration.declarationSourceStart;
        fieldDeclaration2.setSourceRange(i10, (fieldDeclaration.declarationEnd - i10) + 1);
        setTypeForField(fieldDeclaration2, convertType(fieldDeclaration.type), convertToVariableDeclarationFragment.getExtraDimensions());
        setModifiers(fieldDeclaration2, fieldDeclaration);
        convert(fieldDeclaration.javadoc, fieldDeclaration2);
        return fieldDeclaration2;
    }

    public ModuleDeclaration convertToModuleDeclaration(org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration moduleDeclaration) {
        checkCanceled();
        if (this.scanner.sourceLevel < ClassFileConstants.JDK9) {
            return null;
        }
        AST ast = this.ast;
        if (ast.apiLevel < 9) {
            return null;
        }
        ModuleDeclaration newModuleDeclaration = ast.newModuleDeclaration();
        setAnnotations(newModuleDeclaration, moduleDeclaration);
        newModuleDeclaration.setOpen(moduleDeclaration.isOpen());
        Name name = getName(moduleDeclaration, CharOperation.splitOn('.', moduleDeclaration.moduleName), moduleDeclaration.sourcePositions);
        newModuleDeclaration.setName(name);
        List moduleStatements = newModuleDeclaration.moduleStatements();
        TreeSet treeSet = new TreeSet(new Comparator() {
            @Override
            public int compare(Object obj, Object obj2) {
                int startPosition = ((ModuleDirective) obj).getStartPosition();
                int startPosition2 = ((ModuleDirective) obj2).getStartPosition();
                if (startPosition < startPosition2) {
                    return -1;
                }
                return startPosition == startPosition2 ? 0 : 1;
            }
        });
        for (int i10 = 0; i10 < moduleDeclaration.exportsCount; i10++) {
            treeSet.add(getPackageVisibilityStatement(moduleDeclaration.exports[i10], new ExportsDirective(this.ast)));
        }
        for (int i11 = 0; i11 < moduleDeclaration.opensCount; i11++) {
            treeSet.add(getPackageVisibilityStatement(moduleDeclaration.opens[i11], new OpensDirective(this.ast)));
        }
        for (int i12 = 0; i12 < moduleDeclaration.requiresCount; i12++) {
            RequiresStatement requiresStatement = moduleDeclaration.requires[i12];
            ModuleReference moduleReference = requiresStatement.module;
            RequiresDirective requiresDirective = new RequiresDirective(this.ast);
            Name name2 = getName(moduleReference, CharOperation.splitOn('.', moduleReference.moduleName), moduleReference.sourcePositions);
            requiresDirective.setName(name2);
            if (this.resolveBindings) {
                recordNodes(name2, moduleReference);
            }
            setModuleModifiers(requiresStatement, requiresDirective);
            int i13 = requiresStatement.declarationSourceStart;
            requiresDirective.setSourceRange(i13, (requiresStatement.declarationEnd - i13) + 1);
            treeSet.add(requiresDirective);
        }
        for (int i14 = 0; i14 < moduleDeclaration.usesCount; i14++) {
            UsesStatement usesStatement = moduleDeclaration.uses[i14];
            UsesDirective usesDirective = new UsesDirective(this.ast);
            usesDirective.setName(convert(usesStatement.serviceInterface));
            int i15 = usesStatement.declarationSourceStart;
            usesDirective.setSourceRange(i15, (usesStatement.declarationSourceEnd - i15) + 1);
            treeSet.add(usesDirective);
        }
        for (int i16 = 0; i16 < moduleDeclaration.servicesCount; i16++) {
            ProvidesStatement providesStatement = moduleDeclaration.services[i16];
            ProvidesDirective providesDirective = new ProvidesDirective(this.ast);
            providesDirective.setName(convert(providesStatement.serviceInterface));
            for (TypeReference typeReference : providesStatement.implementations) {
                providesDirective.implementations().add(convert(typeReference));
            }
            int i17 = providesStatement.declarationSourceStart;
            providesDirective.setSourceRange(i17, (providesStatement.declarationSourceEnd - i17) + 1);
            treeSet.add(providesDirective);
        }
        if (this.resolveBindings) {
            recordNodes(newModuleDeclaration, moduleDeclaration);
            recordNodes(name, moduleDeclaration);
            newModuleDeclaration.resolveBinding();
        }
        moduleStatements.addAll(treeSet);
        int knownEnd = getKnownEnd(newModuleDeclaration, moduleDeclaration.sourceEnd, moduleDeclaration.declarationSourceEnd);
        int i18 = moduleDeclaration.declarationSourceStart;
        newModuleDeclaration.setSourceRange(i18, (knownEnd - i18) + 1);
        return newModuleDeclaration;
    }

    public ParenthesizedExpression convertToParenthesizedExpression(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        ParenthesizedExpression parenthesizedExpression = new ParenthesizedExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(parenthesizedExpression, expression);
        }
        int i10 = expression.sourceStart;
        parenthesizedExpression.setSourceRange(i10, (expression.sourceEnd - i10) + 1);
        adjustSourcePositionsForParent(expression);
        trimWhiteSpacesAndComments(expression);
        expression.bits = (expression.bits & (-534773761)) | ((((534773760 & r1) >> 21) - 1) << 21);
        parenthesizedExpression.setExpression(convert(expression));
        return parenthesizedExpression;
    }

    public SingleVariableDeclaration convertToSingleVariableDeclaration(LocalDeclaration localDeclaration) {
        SingleVariableDeclaration singleVariableDeclaration = new SingleVariableDeclaration(this.ast);
        setModifiers(singleVariableDeclaration, localDeclaration);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(localDeclaration.name));
        int i10 = localDeclaration.sourceStart;
        int i11 = localDeclaration.sourceEnd;
        simpleName.setSourceRange(i10, (i11 - i10) + 1);
        singleVariableDeclaration.setName(simpleName);
        TypeReference typeReference = localDeclaration.type;
        int extraDimensions = typeReference.extraDimensions();
        if (this.ast.apiLevel >= 8) {
            setExtraAnnotatedDimensions(i11 + 1, localDeclaration.declarationSourceEnd, typeReference, singleVariableDeclaration.extraDimensions(), extraDimensions);
        } else {
            internalSetExtraDimensions(singleVariableDeclaration, extraDimensions);
        }
        Type convertType = convertType(localDeclaration.type);
        int max = Math.max((convertType.getStartPosition() + convertType.getLength()) - 1, (localDeclaration.bits & 16) != 0 ? localDeclaration.sourceEnd : localDeclaration.declarationSourceEnd);
        setTypeForSingleVariableDeclaration(singleVariableDeclaration, convertType, extraDimensions);
        int i12 = localDeclaration.declarationSourceStart;
        singleVariableDeclaration.setSourceRange(i12, (max - i12) + 1);
        if (this.resolveBindings) {
            recordNodes(simpleName, localDeclaration);
            recordNodes(singleVariableDeclaration, localDeclaration);
            singleVariableDeclaration.resolveBinding();
        }
        return singleVariableDeclaration;
    }

    public VariableDeclarationExpression convertToVariableDeclarationExpression(LocalDeclaration localDeclaration) {
        VariableDeclarationFragment convertToVariableDeclarationFragment = convertToVariableDeclarationFragment(localDeclaration);
        VariableDeclarationExpression variableDeclarationExpression = new VariableDeclarationExpression(this.ast);
        variableDeclarationExpression.fragments().add(convertToVariableDeclarationFragment);
        if (this.resolveBindings) {
            recordNodes(convertToVariableDeclarationFragment, localDeclaration);
        }
        int i10 = localDeclaration.declarationSourceStart;
        variableDeclarationExpression.setSourceRange(i10, (localDeclaration.declarationSourceEnd - i10) + 1);
        setTypeForVariableDeclarationExpression(variableDeclarationExpression, convertType(localDeclaration.type), convertToVariableDeclarationFragment.getExtraDimensions());
        if (localDeclaration.modifiersSourceStart != -1) {
            setModifiers(variableDeclarationExpression, localDeclaration);
        }
        return variableDeclarationExpression;
    }

    public VariableDeclarationFragment convertToVariableDeclarationFragment(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration) {
        int retrieveEndOfPotentialExtendedDimensions;
        VariableDeclarationFragment variableDeclarationFragment = new VariableDeclarationFragment(this.ast);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(fieldDeclaration.name));
        int i10 = fieldDeclaration.sourceStart;
        simpleName.setSourceRange(i10, (fieldDeclaration.sourceEnd - i10) + 1);
        variableDeclarationFragment.setName(simpleName);
        int i11 = fieldDeclaration.sourceEnd;
        TypeReference typeReference = fieldDeclaration.type;
        int extraDimensions = typeReference.extraDimensions();
        if (this.ast.apiLevel >= 8) {
            setExtraAnnotatedDimensions(fieldDeclaration.sourceEnd + 1, fieldDeclaration.declarationSourceEnd, typeReference, variableDeclarationFragment.extraDimensions(), extraDimensions);
        } else {
            internalSetExtraDimensions(variableDeclarationFragment, extraDimensions);
        }
        org.eclipse.jdt.internal.compiler.ast.Expression expression = fieldDeclaration.initialization;
        if (expression != null) {
            Expression convert = convert(expression);
            variableDeclarationFragment.setInitializer(convert);
            retrieveEndOfPotentialExtendedDimensions = (convert.getStartPosition() + convert.getLength()) - 1;
        } else {
            retrieveEndOfPotentialExtendedDimensions = retrieveEndOfPotentialExtendedDimensions(i11 + 1, fieldDeclaration.sourceEnd, fieldDeclaration.declarationSourceEnd);
            if (retrieveEndOfPotentialExtendedDimensions == Integer.MIN_VALUE) {
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            }
            if (retrieveEndOfPotentialExtendedDimensions < 0) {
                retrieveEndOfPotentialExtendedDimensions = -retrieveEndOfPotentialExtendedDimensions;
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            }
        }
        int i12 = fieldDeclaration.sourceStart;
        variableDeclarationFragment.setSourceRange(i12, (retrieveEndOfPotentialExtendedDimensions - i12) + 1);
        if (this.resolveBindings) {
            recordNodes(simpleName, fieldDeclaration);
            recordNodes(variableDeclarationFragment, fieldDeclaration);
            variableDeclarationFragment.resolveBinding();
        }
        return variableDeclarationFragment;
    }

    public VariableDeclarationStatement convertToVariableDeclarationStatement(LocalDeclaration localDeclaration) {
        VariableDeclarationFragment convertToVariableDeclarationFragment = convertToVariableDeclarationFragment(localDeclaration);
        VariableDeclarationStatement variableDeclarationStatement = new VariableDeclarationStatement(this.ast);
        variableDeclarationStatement.fragments().add(convertToVariableDeclarationFragment);
        int i10 = localDeclaration.declarationSourceStart;
        variableDeclarationStatement.setSourceRange(i10, (localDeclaration.declarationSourceEnd - i10) + 1);
        Type convertType = convertType(localDeclaration.type);
        setTypeForVariableDeclarationStatement(variableDeclarationStatement, convertType, convertToVariableDeclarationFragment.getExtraDimensions());
        if (this.resolveBindings) {
            recordNodes(convertToVariableDeclarationFragment, localDeclaration);
            if (this.ast.apiLevel() >= 10 && convertType.isVar()) {
                SimpleName simpleName = (SimpleName) ((SimpleType) convertType).getName();
                simpleName.setVar(true);
                recordNodes(simpleName, localDeclaration);
            }
        }
        if (localDeclaration.modifiersSourceStart != -1) {
            setModifiers(variableDeclarationStatement, localDeclaration);
        }
        return variableDeclarationStatement;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0536, code lost:
    
        if (((org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference) r24).typeArguments == org.eclipse.jdt.internal.compiler.ast.TypeReference.NO_TYPE_ARGUMENTS) goto L242;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01ee  */
    /* JADX WARN: Type inference failed for: r0v91, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.AnnotatableType, org.eclipse.jdt.core.dom.PrimitiveType] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r1v81, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r1v86, types: [org.eclipse.jdt.core.dom.ArrayType] */
    /* JADX WARN: Type inference failed for: r23v0, types: [org.eclipse.jdt.core.dom.ASTConverter] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Type convertType(TypeReference typeReference) {
        int i10;
        boolean z10;
        int i11;
        int i12;
        Type type;
        Type type2;
        int i13;
        Type type3;
        Type type4;
        Type type5;
        int i14;
        boolean z11;
        TypeReference[] typeReferenceArr;
        int i15;
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr;
        int annotateType;
        TypeReference[] typeReferenceArr2;
        Type type6;
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr2;
        SimpleType simpleType;
        SimpleType simpleType2;
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr3;
        ?? r10 = 0;
        boolean z12 = true;
        if (typeReference instanceof Wildcard) {
            Wildcard wildcard = (Wildcard) typeReference;
            WildcardType wildcardType = new WildcardType(this.ast);
            TypeReference typeReference2 = wildcard.bound;
            if (typeReference2 != null) {
                Type convertType = convertType(typeReference2);
                wildcardType.setBound(convertType, wildcard.kind == 1);
                int i16 = wildcard.sourceStart;
                wildcardType.setSourceRange(i16, (convertType.getStartPosition() + convertType.getLength()) - i16);
            } else {
                int i17 = wildcard.sourceStart;
                wildcardType.setSourceRange(i17, (wildcard.sourceEnd - i17) + 1);
            }
            if (this.resolveBindings) {
                recordNodes(wildcardType, typeReference);
            }
            org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr4 = typeReference.annotations;
            if (annotationArr4 != null && (annotationArr3 = annotationArr4[0]) != null) {
                annotateType(wildcardType, annotationArr3);
            }
            return wildcardType;
        }
        int i18 = typeReference.sourceStart;
        int dimensions = typeReference.dimensions();
        if (typeReference instanceof SingleTypeReference) {
            org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr5 = typeReference.annotations;
            org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr6 = annotationArr5 != null ? annotationArr5[0] : null;
            int i19 = annotationArr6 != null ? annotationArr6[annotationArr6.length - 1].declarationSourceEnd + 1 : -1;
            char[] cArr = ((SingleTypeReference) typeReference).getTypeName()[0];
            int i20 = (typeReference.sourceEnd - typeReference.sourceStart) + 1;
            if (isPrimitiveType(cArr)) {
                if (i18 >= i19) {
                    i19 = i18;
                }
                int i21 = i18 + i20;
                int i22 = retrieveEndOfElementTypeNamePosition(i19, i21)[1];
                if (i22 == -1) {
                    i22 = i21 - 1;
                }
                ?? primitiveType = new PrimitiveType(this.ast);
                primitiveType.setPrimitiveTypeCode(getPrimitiveTypeCode(cArr));
                primitiveType.setSourceRange(i18, (i22 - i18) + 1);
                org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr7 = typeReference.annotations;
                simpleType2 = primitiveType;
                if (annotationArr7 != null) {
                    org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr8 = annotationArr7[0];
                    simpleType2 = primitiveType;
                    if (annotationArr8 != null) {
                        annotateType(primitiveType, annotationArr8);
                        simpleType2 = primitiveType;
                    }
                }
            } else if (typeReference instanceof ParameterizedSingleTypeReference) {
                ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) typeReference;
                SimpleName simpleName = new SimpleName(this.ast);
                simpleName.internalSetIdentifier(new String(cArr));
                if (i18 >= i19) {
                    i19 = i18;
                }
                int i23 = i18 + i20;
                int[] retrieveEndOfElementTypeNamePosition = retrieveEndOfElementTypeNamePosition(i19, i23);
                int i24 = retrieveEndOfElementTypeNamePosition[1];
                if (i24 == -1) {
                    i24 = i23 - 1;
                }
                int i25 = retrieveEndOfElementTypeNamePosition[0];
                if (i25 != -1) {
                    simpleName.setSourceRange(i25, (i24 - i25) + 1);
                } else {
                    simpleName.setSourceRange(i18, (i24 - i18) + 1);
                }
                if (this.ast.apiLevel != 2) {
                    SimpleType simpleType3 = new SimpleType(this.ast);
                    simpleType3.setName(simpleName);
                    simpleType3.setSourceRange(simpleName.getStartPosition(), simpleName.getLength());
                    org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr9 = typeReference.annotations;
                    if (annotationArr9 != null && (annotationArr2 = annotationArr9[0]) != null) {
                        annotateType(simpleType3, annotationArr2);
                    }
                    int startPosition = simpleType3.getStartPosition();
                    if (startPosition > 0 && startPosition < i18) {
                        i18 = startPosition;
                    }
                    ?? parameterizedType = new ParameterizedType(this.ast);
                    parameterizedType.setType(simpleType3);
                    TypeReference[] typeReferenceArr3 = parameterizedSingleTypeReference.typeArguments;
                    if (typeReferenceArr3 != null) {
                        for (TypeReference typeReference3 : typeReferenceArr3) {
                            Type convertType2 = convertType(typeReference3);
                            parameterizedType.typeArguments().add(convertType2);
                            i24 = (convertType2.getStartPosition() + convertType2.getLength()) - 1;
                        }
                        parameterizedType.setSourceRange(i18, (retrieveClosingAngleBracketPosition(i24 + 1) - i18) + 1);
                    } else {
                        parameterizedType.setSourceRange(i18, (i24 - i18) + 1);
                    }
                    simpleType = parameterizedType;
                    if (this.resolveBindings) {
                        recordNodes(simpleName, typeReference);
                        recordNodes(simpleType3, typeReference);
                        simpleType = parameterizedType;
                    }
                    int i26 = i18;
                    SimpleType simpleType4 = simpleType;
                    if (dimensions != 0) {
                        ?? convertToArray = convertToArray(simpleType, i26, i20, dimensions, typeReference.getAnnotationsOnDimensions(true));
                        simpleType4 = convertToArray;
                        if (this.resolveBindings) {
                            completeRecord(convertToArray, typeReference);
                            simpleType4 = convertToArray;
                        }
                    }
                    i10 = 2;
                    i11 = 0;
                    type6 = simpleType4;
                } else {
                    SimpleType simpleType5 = new SimpleType(this.ast);
                    simpleType5.setName(simpleName);
                    simpleType5.setFlags(simpleType5.getFlags() | 1);
                    simpleType5.setSourceRange(i18, (i24 - i18) + 1);
                    simpleType2 = simpleType5;
                    if (this.resolveBindings) {
                        recordNodes(simpleName, typeReference);
                        simpleType2 = simpleType5;
                    }
                }
            } else {
                SimpleName simpleName2 = new SimpleName(this.ast);
                simpleName2.internalSetIdentifier(new String(cArr));
                if (i18 >= i19) {
                    i19 = i18;
                }
                int i27 = i18 + i20;
                int[] retrieveEndOfElementTypeNamePosition2 = retrieveEndOfElementTypeNamePosition(i19, i27);
                int i28 = retrieveEndOfElementTypeNamePosition2[1];
                if (i28 == -1) {
                    i28 = i27 - 1;
                }
                int i29 = retrieveEndOfElementTypeNamePosition2[0];
                if (i29 != -1) {
                    simpleName2.setSourceRange(i29, (i28 - i29) + 1);
                } else {
                    simpleName2.setSourceRange(i18, (i28 - i18) + 1);
                }
                SimpleType simpleType6 = new SimpleType(this.ast);
                simpleType6.setName(simpleName2);
                simpleType6.setSourceRange(i18, (i28 - i18) + 1);
                if (this.ast.apiLevel() >= 10 && simpleType6.isVar()) {
                    simpleName2.setVar(true);
                }
                if (this.resolveBindings) {
                    recordNodes(simpleName2, typeReference);
                }
                org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr10 = typeReference.annotations;
                simpleType2 = simpleType6;
                if (annotationArr10 != null) {
                    org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr11 = annotationArr10[0];
                    simpleType2 = simpleType6;
                    if (annotationArr11 != null) {
                        annotateType(simpleType6, annotationArr11);
                        simpleType2 = simpleType6;
                    }
                }
            }
            simpleType = simpleType2;
            int i262 = i18;
            SimpleType simpleType42 = simpleType;
            if (dimensions != 0) {
            }
            i10 = 2;
            i11 = 0;
            type6 = simpleType42;
        } else {
            if (typeReference instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) typeReference;
                char[][] cArr2 = parameterizedQualifiedTypeReference.tokens;
                TypeReference[][] typeReferenceArr4 = parameterizedQualifiedTypeReference.typeArguments;
                org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr12 = parameterizedQualifiedTypeReference.annotations;
                int length = cArr2.length;
                int i30 = length - 1;
                long[] jArr = parameterizedQualifiedTypeReference.sourcePositions;
                if (this.ast.apiLevel != 2) {
                    int i31 = 0;
                    while (true) {
                        if (i31 >= length) {
                            i14 = i30;
                            break;
                        }
                        if (typeReferenceArr4 != null && typeReferenceArr4[i31] != null) {
                            i14 = i31;
                            z11 = z12 ? 1 : 0;
                            break;
                        }
                        if (annotationArr12 != null && annotationArr12[i31] != null) {
                            i14 = i31;
                            break;
                        }
                        i31++;
                        length = length;
                        jArr = jArr;
                        i18 = i18;
                        annotationArr12 = annotationArr12;
                        typeReferenceArr4 = typeReferenceArr4;
                        r10 = 0;
                        z12 = true;
                    }
                    z11 = r10;
                    int i32 = (int) (jArr[r10] >>> 32);
                    int i33 = (int) jArr[i14];
                    long[] jArr2 = jArr;
                    int i34 = length;
                    org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr13 = annotationArr12;
                    TypeReference[][] typeReferenceArr5 = typeReferenceArr4;
                    Type createBaseType = createBaseType(typeReference, jArr, annotationArr12, cArr2, i34, i14, z11);
                    if (typeReferenceArr5 != null && (typeReferenceArr2 = typeReferenceArr5[i14]) != null) {
                        ParameterizedType parameterizedType2 = new ParameterizedType(this.ast);
                        parameterizedType2.index = z12 ? 1 : 0;
                        parameterizedType2.setType(createBaseType);
                        if (this.resolveBindings) {
                            recordNodes(parameterizedType2, typeReference);
                        }
                        Type type7 = null;
                        for (TypeReference typeReference4 : typeReferenceArr2) {
                            type7 = convertType(typeReference4);
                            parameterizedType2.typeArguments().add(type7);
                        }
                        int retrieveClosingAngleBracketPosition = retrieveClosingAngleBracketPosition((type7 != null ? (type7.getStartPosition() + type7.getLength()) - (z12 ? 1 : 0) : i33) + (z12 ? 1 : 0));
                        int startPosition2 = createBaseType.getStartPosition();
                        if (i32 <= startPosition2) {
                            startPosition2 = i32;
                        }
                        parameterizedType2.setSourceRange(startPosition2, (retrieveClosingAngleBracketPosition - startPosition2) + (z12 ? 1 : 0));
                        createBaseType = parameterizedType2;
                    }
                    int i35 = z12 ? 1 : 0;
                    int i36 = i14 + 1;
                    while (i36 < i34) {
                        SimpleName simpleName3 = new SimpleName(this.ast);
                        simpleName3.setIdentifier(new String(cArr2[i36]));
                        int i37 = i36 + 1;
                        simpleName3.index = i37;
                        long j10 = jArr2[i36];
                        int i38 = i18;
                        int i39 = (int) (j10 >>> 32);
                        simpleName3.setSourceRange(i39, (((int) j10) - i39) + 1);
                        recordPendingNameScopeResolution(simpleName3);
                        QualifiedType qualifiedType = new QualifiedType(this.ast);
                        qualifiedType.setQualifier(createBaseType);
                        qualifiedType.setName(simpleName3);
                        int startPosition3 = createBaseType.getStartPosition();
                        int startPosition4 = (simpleName3.getStartPosition() + simpleName3.getLength()) - 1;
                        qualifiedType.setSourceRange(startPosition3, (startPosition4 - startPosition3) + 1);
                        if (annotationArr13 != null && (annotationArr = annotationArr13[i36]) != null && simpleName3.getStartPosition() < (annotateType = annotateType(qualifiedType, annotationArr)) && annotateType <= startPosition4) {
                            simpleName3.setSourceRange(annotateType, (startPosition4 - annotateType) + 1);
                            trimWhiteSpacesAndComments(simpleName3);
                        }
                        if (this.resolveBindings) {
                            recordNodes(simpleName3, typeReference);
                            recordNodes(qualifiedType, typeReference);
                        }
                        i35++;
                        if (typeReferenceArr5 == null || (typeReferenceArr = typeReferenceArr5[i36]) == null) {
                            qualifiedType.index = i35;
                            createBaseType = qualifiedType;
                        } else {
                            qualifiedType.index = i35;
                            ParameterizedType parameterizedType3 = new ParameterizedType(this.ast);
                            parameterizedType3.index = i35;
                            parameterizedType3.setType(qualifiedType);
                            if (this.resolveBindings) {
                                recordNodes(parameterizedType3, typeReference);
                            }
                            Type type8 = null;
                            for (TypeReference typeReference5 : typeReferenceArr) {
                                type8 = convertType(typeReference5);
                                parameterizedType3.typeArguments().add(type8);
                            }
                            if (type8 != null) {
                                i15 = 1;
                                startPosition4 = (type8.getStartPosition() + type8.getLength()) - 1;
                            } else {
                                i15 = 1;
                            }
                            parameterizedType3.setSourceRange(startPosition3, (retrieveClosingAngleBracketPosition(startPosition4 + i15) - startPosition3) + i15);
                            createBaseType = parameterizedType3;
                        }
                        i36 = i37;
                        i18 = i38;
                        z12 = true;
                    }
                    type5 = createBaseType;
                    z10 = z12;
                    i12 = i18;
                    i10 = 2;
                    type4 = type5;
                    i11 = 0;
                    type = type4;
                    int i40 = (typeReference.sourceEnd - i12) + 1;
                    type6 = type;
                    if (dimensions != 0) {
                        ArrayType convertToArray2 = convertToArray(type, i12, i40, dimensions, typeReference.getAnnotationsOnDimensions(z10));
                        type6 = convertToArray2;
                        if (this.resolveBindings) {
                            completeRecord(convertToArray2, typeReference);
                            type6 = convertToArray2;
                        }
                    }
                } else {
                    char[][] typeName = ((QualifiedTypeReference) typeReference).getTypeName();
                    int length2 = typeName.length;
                    i12 = (int) (jArr[0] >>> 32);
                    int i41 = (((int) jArr[length2 - 1]) - i12) + 1;
                    QualifiedName qualifiedNameNameAndSourceRanges = setQualifiedNameNameAndSourceRanges(typeName, jArr, typeReference);
                    SimpleType simpleType7 = new SimpleType(this.ast);
                    simpleType7.setName(qualifiedNameNameAndSourceRanges);
                    simpleType7.setSourceRange(i12, i41);
                    simpleType7.setFlags(simpleType7.getFlags() | 1);
                    type3 = simpleType7;
                }
            } else if (typeReference instanceof QualifiedTypeReference) {
                QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) typeReference;
                long[] jArr3 = qualifiedTypeReference.sourcePositions;
                org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr14 = typeReference.annotations;
                char[][] cArr3 = qualifiedTypeReference.tokens;
                int length3 = cArr3.length;
                if (annotationArr14 != null) {
                    for (int i42 = 0; i42 < length3; i42++) {
                        if (annotationArr14[i42] != null) {
                            i13 = i42;
                            break;
                        }
                    }
                }
                i13 = length3;
                Type createBaseType2 = createBaseType(typeReference, jArr3, annotationArr14, cArr3, length3, i13, false);
                for (int i43 = i13 + 1; i43 < length3; i43++) {
                    createBaseType2 = createQualifiedType(typeReference, jArr3, annotationArr14, cArr3, i43, createBaseType2);
                }
                type3 = createBaseType2;
                i12 = i18;
            } else {
                if (typeReference instanceof UnionTypeReference) {
                    TypeReference[] typeReferenceArr6 = ((UnionTypeReference) typeReference).typeReferences;
                    int i44 = this.ast.apiLevel;
                    i10 = 2;
                    if (i44 == 2 || i44 == 3) {
                        Type convertType3 = convertType(typeReferenceArr6[0]);
                        int i45 = typeReference.sourceStart;
                        convertType3.setSourceRange(i45, (typeReference.sourceEnd - i45) + 1);
                        convertType3.setFlags(convertType3.getFlags() | 1);
                        type2 = convertType3;
                    } else {
                        UnionType unionType = new UnionType(this.ast);
                        for (TypeReference typeReference6 : typeReferenceArr6) {
                            unionType.types().add(convertType(typeReference6));
                        }
                        List types = unionType.types();
                        int size = types.size();
                        int startPosition5 = ((Type) types.get(0)).getStartPosition();
                        Type type9 = (Type) types.get(size - 1);
                        unionType.setSourceRange(startPosition5, (type9.getStartPosition() + type9.getLength()) - startPosition5);
                        type2 = unionType;
                    }
                } else {
                    i10 = 2;
                    if (typeReference instanceof IntersectionCastTypeReference) {
                        TypeReference[] typeReferenceArr7 = ((IntersectionCastTypeReference) typeReference).typeReferences;
                        int i46 = this.ast.apiLevel;
                        if (i46 == 2 || i46 == 3 || i46 == 4) {
                            i11 = 0;
                            Type convertType4 = convertType(typeReferenceArr7[0]);
                            int i47 = typeReference.sourceStart;
                            z10 = true;
                            convertType4.setSourceRange(i47, (typeReference.sourceEnd - i47) + 1);
                            convertType4.setFlags(convertType4.getFlags() | 1);
                            type = convertType4;
                            i12 = i18;
                        } else {
                            IntersectionType intersectionType = new IntersectionType(this.ast);
                            for (TypeReference typeReference7 : typeReferenceArr7) {
                                intersectionType.types().add(convertType(typeReference7));
                            }
                            List types2 = intersectionType.types();
                            int size2 = types2.size();
                            int startPosition6 = ((Type) types2.get(0)).getStartPosition();
                            Type type10 = (Type) types2.get(size2 - 1);
                            intersectionType.setSourceRange(startPosition6, (type10.getStartPosition() + type10.getLength()) - startPosition6);
                            type2 = intersectionType;
                        }
                    } else {
                        z10 = true;
                        i11 = 0;
                        i12 = i18;
                        type = null;
                    }
                    int i402 = (typeReference.sourceEnd - i12) + 1;
                    type6 = type;
                    if (dimensions != 0) {
                    }
                }
                i12 = i18;
                z10 = true;
                type4 = type2;
                i11 = 0;
                type = type4;
                int i4022 = (typeReference.sourceEnd - i12) + 1;
                type6 = type;
                if (dimensions != 0) {
                }
            }
            z10 = true;
            type5 = type3;
            i10 = 2;
            type4 = type5;
            i11 = 0;
            type = type4;
            int i40222 = (typeReference.sourceEnd - i12) + 1;
            type6 = type;
            if (dimensions != 0) {
            }
        }
        if (this.resolveBindings) {
            recordNodes(type6, typeReference);
        }
        if (!(typeReference instanceof ParameterizedSingleTypeReference)) {
            if (typeReference instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference2 = (ParameterizedQualifiedTypeReference) typeReference;
                int length4 = parameterizedQualifiedTypeReference2.typeArguments.length;
                for (int i48 = i11; i48 < length4; i48++) {
                    if (parameterizedQualifiedTypeReference2.typeArguments[i48] == TypeReference.NO_TYPE_ARGUMENTS) {
                        int i49 = this.ast.apiLevel;
                        if (i49 == i10 || i49 == 3) {
                            type6.setFlags(type6.getFlags() | 1);
                        }
                    }
                }
            }
        }
        return type6;
    }

    public Comment createComment(int[] iArr) {
        Comment lineComment;
        int i10 = iArr[0];
        int i11 = iArr[1];
        if (i11 > 0) {
            Javadoc parse = this.docParser.parse(iArr);
            if (parse == null) {
                return null;
            }
            return parse;
        }
        int i12 = -i11;
        if (i10 == 0) {
            lineComment = this.docParser.scanner.source[1] == '/' ? new LineComment(this.ast) : new BlockComment(this.ast);
        } else if (i10 > 0) {
            lineComment = new BlockComment(this.ast);
        } else {
            i10 = -i10;
            lineComment = new LineComment(this.ast);
        }
        lineComment.setSourceRange(i10, i12 - i10);
        return lineComment;
    }

    public Statement createFakeEmptyStatement(org.eclipse.jdt.internal.compiler.ast.Statement statement) {
        if (statement == null) {
            return null;
        }
        EmptyStatement emptyStatement = new EmptyStatement(this.ast);
        emptyStatement.setFlags(emptyStatement.getFlags() | 1);
        int i10 = statement.sourceStart;
        emptyStatement.setSourceRange(i10, (statement.sourceEnd - i10) + 1);
        return emptyStatement;
    }

    public Expression createFakeNullLiteral(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        ASTNode aSTNode = this.referenceContext;
        if (aSTNode != null) {
            aSTNode.setFlags(aSTNode.getFlags() | 1);
        }
        NullLiteral nullLiteral = new NullLiteral(this.ast);
        nullLiteral.setFlags(nullLiteral.getFlags() | 1);
        int i10 = expression.sourceStart;
        nullLiteral.setSourceRange(i10, (expression.sourceEnd - i10) + 1);
        return nullLiteral;
    }

    public Name getImportName(ImportReference importReference) {
        return getName(importReference, importReference.tokens, importReference.sourcePositions);
    }

    public InfixExpression.Operator getOperatorFor(int i10) {
        if (i10 == 29) {
            return InfixExpression.Operator.NOT_EQUALS;
        }
        switch (i10) {
            case 0:
                return InfixExpression.Operator.CONDITIONAL_AND;
            case 1:
                return InfixExpression.Operator.CONDITIONAL_OR;
            case 2:
                return InfixExpression.Operator.AND;
            case 3:
                return InfixExpression.Operator.OR;
            case 4:
                return InfixExpression.Operator.LESS;
            case 5:
                return InfixExpression.Operator.LESS_EQUALS;
            case 6:
                return InfixExpression.Operator.GREATER;
            case 7:
                return InfixExpression.Operator.GREATER_EQUALS;
            case 8:
                return InfixExpression.Operator.XOR;
            case 9:
                return InfixExpression.Operator.DIVIDE;
            case 10:
                return InfixExpression.Operator.LEFT_SHIFT;
            default:
                switch (i10) {
                    case 13:
                        return InfixExpression.Operator.MINUS;
                    case 14:
                        return InfixExpression.Operator.PLUS;
                    case 15:
                        return InfixExpression.Operator.TIMES;
                    case 16:
                        return InfixExpression.Operator.REMAINDER;
                    case 17:
                        return InfixExpression.Operator.RIGHT_SHIFT_SIGNED;
                    case 18:
                        return InfixExpression.Operator.EQUALS;
                    case 19:
                        return InfixExpression.Operator.RIGHT_SHIFT_UNSIGNED;
                    default:
                        return null;
                }
        }
    }

    public PrimitiveType.Code getPrimitiveTypeCode(char[] cArr) {
        char c10 = cArr[0];
        if (c10 == 'f') {
            if (cArr.length == 5 && cArr[1] == 'l' && cArr[2] == 'o' && cArr[3] == 'a' && cArr[4] == 't') {
                return PrimitiveType.FLOAT;
            }
            return null;
        }
        if (c10 == 'i') {
            if (cArr.length == 3 && cArr[1] == 'n' && cArr[2] == 't') {
                return PrimitiveType.INT;
            }
            return null;
        }
        if (c10 == 'l') {
            if (cArr.length == 4 && cArr[1] == 'o' && cArr[2] == 'n' && cArr[3] == 'g') {
                return PrimitiveType.LONG;
            }
            return null;
        }
        if (c10 == 's') {
            if (cArr.length == 5 && cArr[1] == 'h' && cArr[2] == 'o' && cArr[3] == 'r' && cArr[4] == 't') {
                return PrimitiveType.SHORT;
            }
            return null;
        }
        if (c10 == 'v') {
            if (cArr.length == 4 && cArr[1] == 'o' && cArr[2] == 'i' && cArr[3] == 'd') {
                return PrimitiveType.VOID;
            }
            return null;
        }
        switch (c10) {
            case 'b':
                if (cArr.length == 4 && cArr[1] == 'y' && cArr[2] == 't' && cArr[3] == 'e') {
                    return PrimitiveType.BYTE;
                }
                if (cArr.length == 7 && cArr[1] == 'o' && cArr[2] == 'o' && cArr[3] == 'l' && cArr[4] == 'e' && cArr[5] == 'a' && cArr[6] == 'n') {
                    return PrimitiveType.BOOLEAN;
                }
                return null;
            case 'c':
                if (cArr.length == 4 && cArr[1] == 'h' && cArr[2] == 'a' && cArr[3] == 'r') {
                    return PrimitiveType.CHAR;
                }
                return null;
            case 'd':
                if (cArr.length == 6 && cArr[1] == 'o' && cArr[2] == 'u' && cArr[3] == 'b' && cArr[4] == 'l' && cArr[5] == 'e') {
                    return PrimitiveType.DOUBLE;
                }
                return null;
            default:
                return null;
        }
    }

    public boolean isPrimitiveType(char[] cArr) {
        char c10 = cArr[0];
        if (c10 == 'f') {
            return cArr.length == 5 && cArr[1] == 'l' && cArr[2] == 'o' && cArr[3] == 'a' && cArr[4] == 't';
        }
        if (c10 == 'i') {
            return cArr.length == 3 && cArr[1] == 'n' && cArr[2] == 't';
        }
        if (c10 == 'l') {
            return cArr.length == 4 && cArr[1] == 'o' && cArr[2] == 'n' && cArr[3] == 'g';
        }
        if (c10 == 's') {
            return cArr.length == 5 && cArr[1] == 'h' && cArr[2] == 'o' && cArr[3] == 'r' && cArr[4] == 't';
        }
        if (c10 == 'v') {
            return cArr.length == 4 && cArr[1] == 'o' && cArr[2] == 'i' && cArr[3] == 'd';
        }
        switch (c10) {
            case 'b':
                if (cArr.length == 4 && cArr[1] == 'y' && cArr[2] == 't' && cArr[3] == 'e') {
                    return true;
                }
                return cArr.length == 7 && cArr[1] == 'o' && cArr[2] == 'o' && cArr[3] == 'l' && cArr[4] == 'e' && cArr[5] == 'a' && cArr[6] == 'n';
            case 'c':
                return cArr.length == 4 && cArr[1] == 'h' && cArr[2] == 'a' && cArr[3] == 'r';
            case 'd':
                return cArr.length == 6 && cArr[1] == 'o' && cArr[2] == 'u' && cArr[3] == 'b' && cArr[4] == 'l' && cArr[5] == 'e';
            default:
                return false;
        }
    }

    public void recordName(Name name, org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode) {
        if (aSTNode != null) {
            recordNodes(name, aSTNode);
            if (aSTNode instanceof TypeReference) {
                TypeReference typeReference = (TypeReference) aSTNode;
                if (name.isQualifiedName()) {
                    while (name.isQualifiedName()) {
                        QualifiedName qualifiedName = (QualifiedName) name;
                        recordNodes(qualifiedName.getName(), typeReference);
                        name = qualifiedName.getQualifier();
                        recordNodes(name, typeReference);
                    }
                }
            }
        }
    }

    public void recordNodes(ASTNode aSTNode, org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode2) {
        if ((aSTNode2 instanceof FunctionalExpression) && (aSTNode instanceof NullLiteral)) {
            return;
        }
        this.ast.getBindingResolver().store(aSTNode, aSTNode2);
    }

    public void recordPendingNameScopeResolution(Name name) {
        if (this.pendingNameScopeResolution == null) {
            this.pendingNameScopeResolution = new HashSet();
        }
        this.pendingNameScopeResolution.add(name);
    }

    public void recordPendingThisExpressionScopeResolution(ThisExpression thisExpression) {
        if (this.pendingThisExpressionScopeResolution == null) {
            this.pendingThisExpressionScopeResolution = new HashSet();
        }
        this.pendingThisExpressionScopeResolution.add(thisExpression);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x001e. Please report as an issue. */
    public void removeLeadingAndTrailingCommentsFromLiteral(ASTNode aSTNode) {
        int startPosition = aSTNode.getStartPosition();
        this.scanner.resetTo(startPosition, aSTNode.getLength() + startPosition);
        int i10 = -1;
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return;
                }
                if (nextToken != 5) {
                    switch (nextToken) {
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                            if (i10 == -1) {
                                i10 = this.scanner.startPosition;
                            }
                            aSTNode.setSourceRange(i10, this.scanner.currentPosition - i10);
                            return;
                    }
                }
                i10 = this.scanner.startPosition;
            } catch (InvalidInputException unused) {
                return;
            }
        }
    }

    public int retrieveClosingAngleBracketPosition(int i10) {
        int nextToken;
        this.scanner.resetTo(i10, this.compilationUnitSourceLength);
        this.scanner.returnOnlyGreater = true;
        do {
            try {
                nextToken = this.scanner.getNextToken();
            } catch (InvalidInputException unused) {
            }
            if (nextToken == 61) {
                this.scanner.returnOnlyGreater = false;
                return i10;
            }
        } while (nextToken == 11);
        return nextToken != 15 ? i10 : this.scanner.currentPosition - 1;
    }

    public void retrieveColonPosition(ASTNode aSTNode) {
        setNodeSourceEndPosition(aSTNode, 62);
    }

    public void retrieveDimensionAndSetPositions(int i10, int i11, Dimension dimension) {
        this.scanner.resetTo(i10, i11);
        boolean z10 = false;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return;
                }
                if (nextToken != 1000) {
                    if (!z10) {
                        i10 = this.scanner.startPosition;
                        z10 = true;
                    }
                    if (nextToken != 6) {
                        if (nextToken == 23) {
                            i13++;
                        } else if (nextToken == 25) {
                            i13--;
                        } else if (nextToken == 66 && i13 <= 0 && i12 - 1 <= 0) {
                            dimension.setSourceRange(i10, ((this.scanner.currentPosition - 1) - i10) + 1);
                            return;
                        }
                    } else if (i13 <= 0) {
                        i12++;
                    }
                }
            } catch (InvalidInputException unused) {
                return;
            }
        }
    }

    public int retrieveEllipsisStartPosition(int i10, int i11) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        } while (nextToken != 122);
        return this.scanner.startPosition - 1;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0025. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0028. Please report as an issue. */
    public int[] retrieveEndOfElementTypeNamePosition(int i10, int i11) {
        this.scanner.resetTo(i10, i11);
        int i12 = 0;
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken != 61) {
                    if (nextToken != 22) {
                        if (nextToken == 23) {
                            i12++;
                        } else if (nextToken == 25) {
                            i12--;
                        } else if (nextToken != 99 && nextToken != 100) {
                            switch (nextToken) {
                                case 103:
                                case 104:
                                case 105:
                                    break;
                                default:
                                    switch (nextToken) {
                                    }
                            }
                        }
                    }
                    if (i12 <= 0) {
                        return new int[]{this.scanner.startPosition, r2.currentPosition - 1};
                    }
                }
            } catch (InvalidInputException unused) {
            }
        }
        return new int[]{-1, -1};
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0047, code lost:
    
        if (r3 != 33) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int retrieveEndOfPotentialExtendedDimensions(int i10, int i11, int i12) {
        int i13;
        this.scanner.resetTo(i10, i12);
        boolean z10 = true;
        if (i10 > i11) {
            i11 = i10 - 1;
        }
        boolean z11 = false;
        int i14 = 0;
        int i15 = 0;
        int i16 = i11;
        boolean z12 = false;
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    break;
                }
                if (z11) {
                    if (nextToken == 23) {
                        i14++;
                    } else if (nextToken == 25) {
                        i14--;
                        z12 = true;
                    }
                    if (i14 > 0) {
                        z12 = true;
                    }
                }
                if (nextToken != 6) {
                    if (nextToken == 26) {
                        return i15 == 0 ? i16 : -i16;
                    }
                    if (nextToken == 37) {
                        z11 = true;
                        z12 = true;
                    } else if (nextToken != 49) {
                        if (nextToken != 66) {
                            if (nextToken == 32) {
                                if (i15 == 0) {
                                    return i16;
                                }
                                try {
                                    i13 = this.scanner.currentPosition;
                                    i16 = i13 - 1;
                                    z12 = true;
                                } catch (InvalidInputException unused) {
                                    z12 = z10;
                                    if (z12) {
                                        return Integer.MIN_VALUE;
                                    }
                                    return i16;
                                }
                            }
                        }
                        i15--;
                        i13 = this.scanner.currentPosition;
                        i16 = i13 - 1;
                        z12 = true;
                    }
                }
                i15++;
                z12 = true;
            } catch (InvalidInputException unused2) {
                z10 = z12;
            }
        }
    }

    public int retrieveEndOfRightParenthesisPosition(int i10, int i11) {
        this.scanner.resetTo(i10, i11);
        int i12 = 0;
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
                if (nextToken == 23) {
                    i12++;
                } else if (nextToken == 25 && i12 - 1 <= 0) {
                    return this.scanner.currentPosition;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        }
    }

    public void retrieveIdentifierAndSetPositions(int i10, int i11, Name name) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return;
                }
            } catch (InvalidInputException unused) {
                return;
            }
        } while (nextToken != 22);
        int i12 = this.scanner.startPosition;
        name.setSourceRange(i12, ((r2.currentPosition - 1) - i12) + 1);
    }

    public int retrieveIdentifierEndPosition(int i10, int i11) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        } while (nextToken != 22);
        return this.scanner.getCurrentTokenEndPosition();
    }

    public void retrieveInitAndSetPositions(int i10, int i11, Name name) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return;
                }
            } catch (InvalidInputException unused) {
                return;
            }
        } while (nextToken != 36);
        Scanner scanner = this.scanner;
        int i12 = scanner.startPosition;
        name.setSourceRange(i12, scanner.currentPosition - i12);
    }

    public int retrieveProperRightBracketPosition(int i10, int i11, int i12) {
        this.scanner.resetTo(i11, this.compilationUnitSourceLength);
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    break;
                }
                if (nextToken == 6) {
                    i13++;
                } else if (nextToken == 23) {
                    i14++;
                } else if (nextToken != 25) {
                    if (nextToken != 66) {
                        if (nextToken == 122) {
                            i13++;
                        }
                    }
                    i13--;
                    if (i14 <= 0 && i13 <= 0 && (i15 = i15 + 1) == i10) {
                        return this.scanner.currentPosition - 1;
                    }
                } else {
                    i14--;
                }
            } catch (InvalidInputException unused) {
            }
        }
        return -1;
    }

    public int retrieveRightBrace(int i10, int i11) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        } while (nextToken != 33);
        return this.scanner.currentPosition - 1;
    }

    public int retrieveRightBraceOrSemiColonPosition(int i10, int i11) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
                if (nextToken == 26) {
                    return this.scanner.currentPosition - 1;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        } while (nextToken != 33);
        return this.scanner.currentPosition - 1;
    }

    public int retrieveSemiColonPosition(Expression expression) {
        int nextToken;
        this.scanner.resetTo(expression.getStartPosition() + expression.getLength(), this.compilationUnitSourceLength);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        } while (nextToken != 26);
        return this.scanner.currentPosition - 1;
    }

    public int retrieveStartBlockPosition(int i10, int i11) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        } while (nextToken != 49);
        return this.scanner.startPosition;
    }

    public int retrieveStartingCatchPosition(int i10, int i11) {
        int nextToken;
        this.scanner.resetTo(i10, i11);
        do {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return -1;
                }
            } catch (InvalidInputException unused) {
                return -1;
            }
        } while (nextToken != 102);
        return this.scanner.startPosition;
    }

    public void setAST(AST ast) {
        this.ast = ast;
        this.docParser = new DocCommentParser(ast, this.scanner, this.insideComments);
    }

    public void setAnnotations(ModuleDeclaration moduleDeclaration, org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration moduleDeclaration2) {
        this.scanner.resetTo(moduleDeclaration2.declarationSourceStart, moduleDeclaration2.sourceStart);
        ArrayList<IExtendedModifier> arrayList = new ArrayList();
        setModifiers(arrayList, moduleDeclaration2.annotations, moduleDeclaration2.sourceStart);
        for (IExtendedModifier iExtendedModifier : arrayList) {
            if (iExtendedModifier.isAnnotation()) {
                moduleDeclaration.annotations().add(iExtendedModifier);
            }
        }
    }

    public void setExtraAnnotatedDimensions(int i10, int i11, TypeReference typeReference, List list, int i12) {
        if (i12 > 0) {
            org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationsOnDimensions = typeReference.getAnnotationsOnDimensions(true);
            int length = annotationsOnDimensions == null ? 0 : annotationsOnDimensions.length;
            for (int i13 = length - i12; i13 < length; i13++) {
                Dimension convertToDimensions = convertToDimensions(i10, i11, annotationsOnDimensions == null ? null : annotationsOnDimensions[i13]);
                list.add(convertToDimensions);
                i10 = convertToDimensions.getLength() + convertToDimensions.getStartPosition();
            }
        }
    }

    public void setModifiers(AnnotationTypeDeclaration annotationTypeDeclaration, org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        this.scanner.resetTo(typeDeclaration.declarationSourceStart, typeDeclaration.sourceStart);
        setModifiers(annotationTypeDeclaration, typeDeclaration.annotations, typeDeclaration.sourceStart);
    }

    public QualifiedName setQualifiedNameNameAndSourceRanges(char[][] cArr, long[] jArr, org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode) {
        int length = cArr.length;
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(cArr[0]));
        simpleName.index = 1;
        long j10 = jArr[0];
        int i10 = (int) (j10 >>> 32);
        simpleName.setSourceRange(i10, (((int) j10) - i10) + 1);
        SimpleName simpleName2 = new SimpleName(this.ast);
        simpleName2.internalSetIdentifier(new String(cArr[1]));
        int i11 = 2;
        simpleName2.index = 2;
        long j11 = jArr[1];
        int i12 = (int) (j11 >>> 32);
        int i13 = (int) j11;
        simpleName2.setSourceRange(i12, (i13 - i12) + 1);
        QualifiedName qualifiedName = new QualifiedName(this.ast);
        qualifiedName.setQualifier(simpleName);
        qualifiedName.setName(simpleName2);
        if (this.resolveBindings) {
            recordNodes(qualifiedName, aSTNode);
            recordPendingNameScopeResolution(qualifiedName);
            recordNodes(simpleName, aSTNode);
            recordNodes(simpleName2, aSTNode);
            recordPendingNameScopeResolution(simpleName);
            recordPendingNameScopeResolution(simpleName2);
        }
        qualifiedName.index = 2;
        qualifiedName.setSourceRange(i10, (i13 - i10) + 1);
        while (i11 < length) {
            SimpleName simpleName3 = new SimpleName(this.ast);
            simpleName3.internalSetIdentifier(new String(cArr[i11]));
            int i14 = i11 + 1;
            simpleName3.index = i14;
            long j12 = jArr[i11];
            int i15 = (int) (j12 >>> 32);
            int i16 = (int) j12;
            simpleName3.setSourceRange(i15, (i16 - i15) + 1);
            QualifiedName qualifiedName2 = new QualifiedName(this.ast);
            qualifiedName2.setQualifier(qualifiedName);
            qualifiedName2.setName(simpleName3);
            qualifiedName2.index = simpleName3.index;
            qualifiedName2.setSourceRange(i10, (i16 - i10) + 1);
            if (this.resolveBindings) {
                recordNodes(qualifiedName2, aSTNode);
                recordNodes(simpleName3, aSTNode);
                recordPendingNameScopeResolution(qualifiedName2);
                recordPendingNameScopeResolution(simpleName3);
            }
            qualifiedName = qualifiedName2;
            i11 = i14;
        }
        if (this.resolveBindings) {
            recordNodes(qualifiedName, aSTNode);
            recordPendingNameScopeResolution(qualifiedName);
        }
        return qualifiedName;
    }

    public void setTypeForField(FieldDeclaration fieldDeclaration, Type type, int i10) {
        if (i10 == 0) {
            if (type.isArrayType() && this.ast.apiLevel() < 8) {
                updateInnerPositions(type, ((ArrayType) type).getDimensions());
            }
            fieldDeclaration.setType(type);
            return;
        }
        if (!type.isArrayType()) {
            fieldDeclaration.setType(type);
            return;
        }
        ArrayType arrayType = (ArrayType) type;
        int dimensions = arrayType.getDimensions() - i10;
        if (dimensions == 0) {
            Type elementType = arrayType.getElementType();
            elementType.setParent(null, null);
            this.ast.getBindingResolver().updateKey(type, elementType);
            fieldDeclaration.setType(elementType);
        } else {
            ArrayType extractSubArrayType = extractSubArrayType(arrayType, dimensions, i10);
            fieldDeclaration.setType(extractSubArrayType);
            this.ast.getBindingResolver().updateKey(type, extractSubArrayType);
        }
        checkAndSetMalformed(type, fieldDeclaration);
    }

    public void setTypeForMethodDeclaration(MethodDeclaration methodDeclaration, Type type, int i10) {
        if (i10 != 0) {
            if (type.isArrayType()) {
                ArrayType arrayType = (ArrayType) type;
                int dimensions = arrayType.getDimensions() - i10;
                if (dimensions == 0) {
                    Type elementType = arrayType.getElementType();
                    elementType.setParent(null, null);
                    this.ast.getBindingResolver().updateKey(type, elementType);
                    if (this.ast.apiLevel != 2) {
                        methodDeclaration.setReturnType2(elementType);
                    } else {
                        methodDeclaration.internalSetReturnType(elementType);
                    }
                } else {
                    ArrayType extractSubArrayType = extractSubArrayType(arrayType, dimensions, i10);
                    if (this.ast.apiLevel != 2) {
                        methodDeclaration.setReturnType2(extractSubArrayType);
                    } else {
                        methodDeclaration.internalSetReturnType(extractSubArrayType);
                    }
                    this.ast.getBindingResolver().updateKey(type, extractSubArrayType);
                }
                checkAndSetMalformed(type, methodDeclaration);
                return;
            }
            if (this.ast.apiLevel != 2) {
                methodDeclaration.setReturnType2(type);
                return;
            } else {
                methodDeclaration.internalSetReturnType(type);
                return;
            }
        }
        if (this.ast.apiLevel != 2) {
            methodDeclaration.setReturnType2(type);
        } else {
            methodDeclaration.internalSetReturnType(type);
        }
    }

    public void setTypeForSingleVariableDeclaration(SingleVariableDeclaration singleVariableDeclaration, Type type, int i10) {
        if (i10 == 0) {
            singleVariableDeclaration.setType(type);
            return;
        }
        if (!type.isArrayType()) {
            singleVariableDeclaration.setType(type);
            return;
        }
        ArrayType arrayType = (ArrayType) type;
        int dimensions = arrayType.getDimensions() - i10;
        if (dimensions == 0) {
            Type elementType = arrayType.getElementType();
            elementType.setParent(null, null);
            this.ast.getBindingResolver().updateKey(type, elementType);
            singleVariableDeclaration.setType(elementType);
        } else {
            ArrayType extractSubArrayType = extractSubArrayType(arrayType, dimensions, i10);
            this.ast.getBindingResolver().updateKey(type, extractSubArrayType);
            singleVariableDeclaration.setType(extractSubArrayType);
        }
        checkAndSetMalformed(type, singleVariableDeclaration);
    }

    public void setTypeForVariableDeclarationExpression(VariableDeclarationExpression variableDeclarationExpression, Type type, int i10) {
        if (i10 == 0) {
            variableDeclarationExpression.setType(type);
            return;
        }
        if (!type.isArrayType()) {
            variableDeclarationExpression.setType(type);
            return;
        }
        ArrayType arrayType = (ArrayType) type;
        int dimensions = arrayType.getDimensions() - i10;
        if (dimensions == 0) {
            Type elementType = arrayType.getElementType();
            elementType.setParent(null, null);
            this.ast.getBindingResolver().updateKey(type, elementType);
            variableDeclarationExpression.setType(elementType);
        } else {
            ArrayType extractSubArrayType = extractSubArrayType(arrayType, dimensions, i10);
            variableDeclarationExpression.setType(extractSubArrayType);
            this.ast.getBindingResolver().updateKey(type, extractSubArrayType);
        }
        checkAndSetMalformed(type, variableDeclarationExpression);
    }

    public void setTypeForVariableDeclarationStatement(VariableDeclarationStatement variableDeclarationStatement, Type type, int i10) {
        if (i10 == 0) {
            variableDeclarationStatement.setType(type);
            return;
        }
        if (!type.isArrayType()) {
            variableDeclarationStatement.setType(type);
            return;
        }
        ArrayType arrayType = (ArrayType) type;
        int dimensions = arrayType.getDimensions() - i10;
        if (dimensions == 0) {
            Type elementType = arrayType.getElementType();
            elementType.setParent(null, null);
            this.ast.getBindingResolver().updateKey(type, elementType);
            variableDeclarationStatement.setType(elementType);
        } else {
            ArrayType extractSubArrayType = extractSubArrayType(arrayType, dimensions, i10);
            variableDeclarationStatement.setType(extractSubArrayType);
            this.ast.getBindingResolver().updateKey(type, extractSubArrayType);
        }
        checkAndSetMalformed(type, variableDeclarationStatement);
    }

    public void setTypeNameForAnnotation(org.eclipse.jdt.internal.compiler.ast.Annotation annotation, Annotation annotation2) {
        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode = annotation.type;
        if (aSTNode instanceof QualifiedTypeReference) {
            QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) aSTNode;
            annotation2.setTypeName(setQualifiedNameNameAndSourceRanges(qualifiedTypeReference.tokens, qualifiedTypeReference.sourcePositions, aSTNode));
            return;
        }
        SingleTypeReference singleTypeReference = (SingleTypeReference) aSTNode;
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(singleTypeReference.token));
        int i10 = singleTypeReference.sourceStart;
        simpleName.setSourceRange(i10, (singleTypeReference.sourceEnd - i10) + 1);
        simpleName.index = 1;
        annotation2.setTypeName(simpleName);
        if (this.resolveBindings) {
            recordNodes(simpleName, aSTNode);
        }
    }

    public void updateInnerPositions(Type type, int i10) {
        if (i10 > 1) {
            int startPosition = type.getStartPosition();
            Type componentType = componentType((ArrayType) type);
            int i11 = i10 - 1;
            while (componentType.isArrayType()) {
                componentType.setSourceRange(startPosition, (retrieveProperRightBracketPosition(i11, startPosition) - startPosition) + 1);
                componentType = componentType((ArrayType) componentType);
                i11--;
            }
        }
    }

    private static void internalSetExtraDimensions(VariableDeclarationFragment variableDeclarationFragment, int i10) {
        variableDeclarationFragment.setExtraDimensions(i10);
    }

    private static void internalSetExtraDimensions(MethodDeclaration methodDeclaration, int i10) {
        methodDeclaration.setExtraDimensions(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void recordNodes(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, TagElement tagElement) {
        ListIterator listIterator = tagElement.fragments().listIterator();
        while (listIterator.hasNext()) {
            ASTNode aSTNode = (ASTNode) listIterator.next();
            if (aSTNode.getNodeType() == 67) {
                MemberRef memberRef = (MemberRef) aSTNode;
                ASTNode name = memberRef.getName();
                org.eclipse.jdt.internal.compiler.ast.ASTNode nodeStartingAt = javadoc.getNodeStartingAt(name.getStartPosition());
                if (nodeStartingAt != null) {
                    recordNodes(name, nodeStartingAt);
                    recordNodes(aSTNode, nodeStartingAt);
                }
                if (memberRef.getQualifier() != null) {
                    if (nodeStartingAt instanceof JavadocFieldReference) {
                        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode2 = ((JavadocFieldReference) nodeStartingAt).receiver;
                        if (aSTNode2 instanceof TypeReference) {
                            r3 = (TypeReference) aSTNode2;
                        }
                    } else if (nodeStartingAt instanceof JavadocMessageSend) {
                        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode3 = ((JavadocMessageSend) nodeStartingAt).receiver;
                        if (aSTNode3 instanceof TypeReference) {
                            r3 = (TypeReference) aSTNode3;
                        }
                    }
                    if (r3 != null) {
                        recordName(memberRef.getQualifier(), r3);
                    }
                }
            } else if (aSTNode.getNodeType() == 68) {
                MethodRef methodRef = (MethodRef) aSTNode;
                ASTNode name2 = methodRef.getName();
                int startPosition = methodRef.getStartPosition();
                this.scanner.resetTo(startPosition, name2.getStartPosition() + startPosition + name2.getLength());
                while (true) {
                    try {
                        int nextToken = this.scanner.getNextToken();
                        if (nextToken == 61 || nextToken == 23) {
                            break;
                        }
                        if (nextToken == 129) {
                            Scanner scanner = this.scanner;
                            if (scanner.currentCharacter == '#') {
                                startPosition = scanner.getCurrentTokenEndPosition() + 1;
                                break;
                            }
                        }
                    } catch (InvalidInputException unused) {
                    }
                }
                org.eclipse.jdt.internal.compiler.ast.ASTNode nodeStartingAt2 = javadoc.getNodeStartingAt(startPosition);
                if (nodeStartingAt2 != null) {
                    recordNodes(methodRef, nodeStartingAt2);
                    if (nodeStartingAt2 instanceof JavadocAllocationExpression) {
                        r3 = ((JavadocAllocationExpression) nodeStartingAt2).type;
                        if (r3 != null) {
                            recordNodes(name2, nodeStartingAt2);
                        }
                    } else if (nodeStartingAt2 instanceof JavadocMessageSend) {
                        org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode4 = ((JavadocMessageSend) nodeStartingAt2).receiver;
                        r3 = aSTNode4 instanceof TypeReference ? (TypeReference) aSTNode4 : null;
                        recordNodes(name2, nodeStartingAt2);
                    }
                    if (r3 != null && methodRef.getQualifier() != null) {
                        recordName(methodRef.getQualifier(), r3);
                    }
                }
                ListIterator listIterator2 = methodRef.parameters().listIterator();
                while (listIterator2.hasNext()) {
                    MethodRefParameter methodRefParameter = (MethodRefParameter) listIterator2.next();
                    org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode5 = (org.eclipse.jdt.internal.compiler.ast.Expression) javadoc.getNodeStartingAt(methodRefParameter.getStartPosition());
                    if (aSTNode5 != null) {
                        recordNodes(methodRefParameter, aSTNode5);
                        if (aSTNode5 instanceof JavadocArgumentExpression) {
                            Argument argument = ((JavadocArgumentExpression) aSTNode5).argument;
                            org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode6 = argument.type;
                            if (this.ast.apiLevel >= 3) {
                                methodRefParameter.setVarargs(argument.isVarArgs());
                            }
                            recordNodes(methodRefParameter.getType(), aSTNode6);
                            if (methodRefParameter.getType().isSimpleType()) {
                                recordName(((SimpleType) methodRefParameter.getType()).getName(), aSTNode6);
                            } else if (methodRefParameter.getType().isArrayType()) {
                                Type elementType = ((ArrayType) methodRefParameter.getType()).getElementType();
                                recordNodes(elementType, aSTNode6);
                                if (elementType.isSimpleType()) {
                                    recordName(((SimpleType) elementType).getName(), aSTNode6);
                                }
                            }
                        }
                    }
                }
            } else if (aSTNode.getNodeType() != 42 && aSTNode.getNodeType() != 40) {
                if (aSTNode.getNodeType() == 65) {
                    recordNodes(javadoc, (TagElement) aSTNode);
                }
            } else {
                recordName((Name) aSTNode, javadoc.getNodeStartingAt(aSTNode.getStartPosition()));
            }
        }
    }

    public void setModifiers(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration, AnnotationMethodDeclaration annotationMethodDeclaration) {
        this.scanner.resetTo(annotationMethodDeclaration.declarationSourceStart, annotationMethodDeclaration.sourceStart);
        setModifiers(annotationTypeMemberDeclaration, annotationMethodDeclaration.annotations, annotationMethodDeclaration.sourceStart);
    }

    private void trimWhiteSpacesAndComments(ASTNode aSTNode) {
        int startPosition = aSTNode.getStartPosition();
        int[] trimWhiteSpacesAndComments = trimWhiteSpacesAndComments(startPosition, (aSTNode.getLength() + startPosition) - 1);
        int i10 = trimWhiteSpacesAndComments[0];
        aSTNode.setSourceRange(i10, (trimWhiteSpacesAndComments[1] - i10) + 1);
    }

    public int retrieveProperRightBracketPosition(int i10, int i11) {
        return retrieveProperRightBracketPosition(i10, i11, this.compilationUnitSourceLength);
    }

    public void setModifiers(BodyDeclaration bodyDeclaration, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr, int i10) {
        setModifiers(bodyDeclaration.modifiers(), annotationArr, i10);
    }

    private void setSourceRangeAnnotationsAndRecordNodes(TypeReference typeReference, AnnotatableType annotatableType, long[] jArr, org.eclipse.jdt.internal.compiler.ast.Annotation[][] annotationArr, int i10, int i11, int i12) {
        setSourceRangeAnnotationsAndRecordNodes(typeReference, annotatableType, annotationArr, i10, (int) (jArr[i11] >>> 32), (int) jArr[i12]);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0005 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setModifiers(List list, org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr, int i10) {
        Modifier modifier;
        int i11 = 0;
        this.scanner.tokenizeWhiteSpace = false;
        while (true) {
            try {
                int nextToken = this.scanner.getNextToken();
                if (nextToken == 61) {
                    return;
                }
                if (nextToken != 37) {
                    if (nextToken == 48) {
                        modifier = createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                    } else if (nextToken == 50) {
                        modifier = createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                    } else if (nextToken != 73) {
                        switch (nextToken) {
                            case 52:
                                modifier = createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                break;
                            case 53:
                                modifier = createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                break;
                            case 54:
                                modifier = createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                break;
                            case 55:
                                modifier = createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                break;
                            case 56:
                                modifier = createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                break;
                            case 57:
                                modifier = createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                break;
                            case 58:
                                modifier = createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                break;
                            case 59:
                                modifier = createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                break;
                            case 60:
                                modifier = createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                break;
                        }
                        modifier = null;
                    } else {
                        modifier = createModifier(Modifier.ModifierKeyword.DEFAULT_KEYWORD);
                    }
                    if (modifier != null) {
                        list.add(modifier);
                    }
                } else {
                    if (annotationArr != null && i11 < annotationArr.length) {
                        int i12 = i11 + 1;
                        org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotationArr[i11];
                        Annotation convert = convert(annotation);
                        this.scanner.resetTo(annotation.declarationSourceEnd + 1, i10);
                        i11 = i12;
                        modifier = convert;
                        if (modifier != null) {
                        }
                    }
                    modifier = null;
                    if (modifier != null) {
                    }
                }
            } catch (InvalidInputException unused) {
                return;
            }
        }
    }

    private int[] trimWhiteSpacesAndComments(int i10, int i11) {
        boolean z10;
        int[] iArr = {i10, i11};
        Scanner scanner = this.ast.scanner;
        try {
            scanner.setSource(this.compilationUnitSource);
            scanner.resetTo(i10, i11);
            z10 = true;
        } catch (InvalidInputException unused) {
        }
        while (true) {
            int nextToken = scanner.getNextToken();
            if (nextToken != 61) {
                switch (nextToken) {
                    case 1000:
                        if (!z10) {
                            break;
                        } else {
                            i10 = scanner.currentPosition;
                            break;
                        }
                    case 1001:
                    case 1002:
                    case 1003:
                        if (!z10) {
                            break;
                        } else {
                            i10 = scanner.currentPosition;
                            break;
                        }
                    default:
                        i11 = scanner.currentPosition - 1;
                        z10 = false;
                        break;
                }
            } else {
                iArr[0] = i10;
                iArr[1] = i11;
                return iArr;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void buildBodyDeclarations(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration, EnumDeclaration enumDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration;
        char c10;
        AbstractMethodDeclaration abstractMethodDeclaration;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration3 = typeDeclaration;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr2 = typeDeclaration3.memberTypes;
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fieldDeclarationArr = typeDeclaration3.fields;
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration3.methods;
        int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        int length2 = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        int length3 = typeDeclarationArr2 == null ? 0 : typeDeclarationArr2.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 >= length && i11 >= length3 && i12 >= length2) {
                convert(typeDeclaration3.javadoc, enumDeclaration);
                return;
            }
            int i13 = Integer.MAX_VALUE;
            if (i10 < length) {
                fieldDeclaration = fieldDeclarationArr[i10];
                int i14 = fieldDeclaration.declarationSourceStart;
                if (i14 < Integer.MAX_VALUE) {
                    i13 = i14;
                    c10 = 0;
                    if (i12 >= length2) {
                        abstractMethodDeclaration = abstractMethodDeclarationArr[i12];
                        int i15 = abstractMethodDeclaration.declarationSourceStart;
                        if (i15 < i13) {
                            i13 = i15;
                            c10 = 1;
                        }
                    } else {
                        abstractMethodDeclaration = null;
                    }
                    if (i11 >= length3) {
                        typeDeclaration2 = typeDeclarationArr2[i11];
                        typeDeclarationArr = typeDeclarationArr2;
                        if (typeDeclaration2.declarationSourceStart < i13) {
                            c10 = 2;
                        }
                    } else {
                        typeDeclarationArr = typeDeclarationArr2;
                        typeDeclaration2 = null;
                    }
                    if (c10 != 0) {
                        if (fieldDeclaration.getKind() == 3) {
                            enumDeclaration.enumConstants().add(convert(fieldDeclaration));
                        } else {
                            checkAndAddMultipleFieldDeclaration(fieldDeclarationArr, i10, enumDeclaration.bodyDeclarations());
                        }
                        i10++;
                    } else if (c10 == 1) {
                        i12++;
                        if (!abstractMethodDeclaration.isDefaultConstructor() && !abstractMethodDeclaration.isClinit()) {
                            enumDeclaration.bodyDeclarations().add(convert(false, abstractMethodDeclaration));
                        }
                    } else if (c10 == 2) {
                        i11++;
                        enumDeclaration.bodyDeclarations().add(convert(typeDeclaration2));
                    }
                    typeDeclaration3 = typeDeclaration;
                    typeDeclarationArr2 = typeDeclarationArr;
                }
            } else {
                fieldDeclaration = null;
            }
            c10 = '\uffff';
            if (i12 >= length2) {
            }
            if (i11 >= length3) {
            }
            if (c10 != 0) {
            }
            typeDeclaration3 = typeDeclaration;
            typeDeclarationArr2 = typeDeclarationArr;
        }
    }

    public void setTypeForMethodDeclaration(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration, Type type, int i10) {
        annotationTypeMemberDeclaration.setType(type);
    }

    public void setModifiers(EnumDeclaration enumDeclaration, org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        this.scanner.resetTo(typeDeclaration.declarationSourceStart, typeDeclaration.sourceStart);
        setModifiers(enumDeclaration, typeDeclaration.annotations, typeDeclaration.sourceStart);
    }

    public VariableDeclarationFragment convertToVariableDeclarationFragment(LocalDeclaration localDeclaration) {
        VariableDeclarationFragment variableDeclarationFragment = new VariableDeclarationFragment(this.ast);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(localDeclaration.name));
        int i10 = localDeclaration.sourceStart;
        simpleName.setSourceRange(i10, (localDeclaration.sourceEnd - i10) + 1);
        variableDeclarationFragment.setName(simpleName);
        int i11 = localDeclaration.sourceEnd;
        org.eclipse.jdt.internal.compiler.ast.Expression expression = localDeclaration.initialization;
        TypeReference typeReference = localDeclaration.type;
        int extraDimensions = typeReference.extraDimensions();
        if (this.ast.apiLevel >= 8) {
            setExtraAnnotatedDimensions(localDeclaration.sourceEnd + 1, this.compilationUnitSourceLength, typeReference, variableDeclarationFragment.extraDimensions(), extraDimensions);
        } else {
            internalSetExtraDimensions(variableDeclarationFragment, extraDimensions);
        }
        if (expression != null) {
            Expression convert = convert(expression);
            variableDeclarationFragment.setInitializer(convert);
            i11 = (convert.getStartPosition() + convert.getLength()) - 1;
        } else {
            int retrieveEndOfPotentialExtendedDimensions = retrieveEndOfPotentialExtendedDimensions(i11 + 1, localDeclaration.sourceEnd, localDeclaration.declarationSourceEnd);
            if (retrieveEndOfPotentialExtendedDimensions == Integer.MIN_VALUE) {
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            } else if (retrieveEndOfPotentialExtendedDimensions < 0) {
                i11 = -retrieveEndOfPotentialExtendedDimensions;
                variableDeclarationFragment.setFlags(variableDeclarationFragment.getFlags() | 1);
            } else {
                i11 = retrieveEndOfPotentialExtendedDimensions;
            }
        }
        int i12 = localDeclaration.sourceStart;
        variableDeclarationFragment.setSourceRange(i12, (i11 - i12) + 1);
        if (this.resolveBindings) {
            recordNodes(variableDeclarationFragment, localDeclaration);
            recordNodes(simpleName, localDeclaration);
            variableDeclarationFragment.resolveBinding();
        }
        return variableDeclarationFragment;
    }

    public void setModifiers(EnumConstantDeclaration enumConstantDeclaration, org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration) {
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(fieldDeclaration.declarationSourceStart, fieldDeclaration.sourceStart);
            setModifiers(enumConstantDeclaration, fieldDeclaration.annotations, fieldDeclaration.sourceStart);
        } else {
            enumConstantDeclaration.internalSetModifiers(fieldDeclaration.modifiers & 65535);
            if (fieldDeclaration.annotations != null) {
                enumConstantDeclaration.setFlags(enumConstantDeclaration.getFlags() | 1);
            }
        }
    }

    public void setModifiers(FieldDeclaration fieldDeclaration, org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration2) {
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(fieldDeclaration2.declarationSourceStart, fieldDeclaration2.sourceStart);
            setModifiers(fieldDeclaration, fieldDeclaration2.annotations, fieldDeclaration2.sourceStart);
        } else {
            fieldDeclaration.internalSetModifiers(fieldDeclaration2.modifiers & 65535);
            if (fieldDeclaration2.annotations != null) {
                fieldDeclaration.setFlags(fieldDeclaration.getFlags() | 1);
            }
        }
    }

    public void setModifiers(Initializer initializer, org.eclipse.jdt.internal.compiler.ast.Initializer initializer2) {
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(initializer2.declarationSourceStart, initializer2.bodyStart);
            setModifiers(initializer, initializer2.annotations, initializer2.bodyStart);
        } else {
            initializer.internalSetModifiers(initializer2.modifiers & 65535);
            if (initializer2.annotations != null) {
                initializer.setFlags(initializer.getFlags() | 1);
            }
        }
    }

    public void buildBodyDeclarations(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration, AnonymousClassDeclaration anonymousClassDeclaration) {
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration;
        AbstractMethodDeclaration abstractMethodDeclaration;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2;
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        org.eclipse.jdt.internal.compiler.ast.FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        int length2 = abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length;
        int length3 = typeDeclarationArr == null ? 0 : typeDeclarationArr.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 >= length && i11 >= length3 && i12 >= length2) {
                return;
            }
            int i13 = Integer.MAX_VALUE;
            char c10 = '\uffff';
            if (i10 < length) {
                fieldDeclaration = fieldDeclarationArr[i10];
                int i14 = fieldDeclaration.declarationSourceStart;
                if (i14 < Integer.MAX_VALUE) {
                    i13 = i14;
                    c10 = 0;
                }
            } else {
                fieldDeclaration = null;
            }
            if (i12 < length2) {
                abstractMethodDeclaration = abstractMethodDeclarationArr[i12];
                int i15 = abstractMethodDeclaration.declarationSourceStart;
                if (i15 < i13) {
                    i13 = i15;
                    c10 = 1;
                }
            } else {
                abstractMethodDeclaration = null;
            }
            if (i11 < length3) {
                typeDeclaration2 = typeDeclarationArr[i11];
                if (typeDeclaration2.declarationSourceStart < i13) {
                    c10 = 2;
                }
            } else {
                typeDeclaration2 = null;
            }
            if (c10 == 0) {
                if (fieldDeclaration.getKind() == 3) {
                    anonymousClassDeclaration.bodyDeclarations().add(convert(fieldDeclaration));
                } else {
                    checkAndAddMultipleFieldDeclaration(fieldDeclarationArr, i10, anonymousClassDeclaration.bodyDeclarations());
                }
                i10++;
            } else if (c10 == 1) {
                i12++;
                if (!abstractMethodDeclaration.isDefaultConstructor() && !abstractMethodDeclaration.isClinit()) {
                    anonymousClassDeclaration.bodyDeclarations().add(convert(false, abstractMethodDeclaration));
                }
            } else if (c10 == 2) {
                i11++;
                ASTNode convert = convert(typeDeclaration2);
                if (convert == null) {
                    anonymousClassDeclaration.setFlags(anonymousClassDeclaration.getFlags() | 1);
                } else {
                    anonymousClassDeclaration.bodyDeclarations().add(convert);
                }
            }
        }
    }

    public QualifiedName setQualifiedNameNameAndSourceRanges(char[][] cArr, long[] jArr, int i10, TypeReference typeReference) {
        int i11 = i10 + 1;
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(cArr[0]));
        simpleName.index = 1;
        long j10 = jArr[0];
        int i12 = (int) (j10 >>> 32);
        simpleName.setSourceRange(i12, (((int) j10) - i12) + 1);
        SimpleName simpleName2 = new SimpleName(this.ast);
        simpleName2.internalSetIdentifier(new String(cArr[1]));
        int i13 = 2;
        simpleName2.index = 2;
        long j11 = jArr[1];
        int i14 = (int) (j11 >>> 32);
        int i15 = (int) j11;
        simpleName2.setSourceRange(i14, (i15 - i14) + 1);
        QualifiedName qualifiedName = new QualifiedName(this.ast);
        qualifiedName.setQualifier(simpleName);
        qualifiedName.setName(simpleName2);
        if (this.resolveBindings) {
            recordNodes(qualifiedName, typeReference);
            recordPendingNameScopeResolution(qualifiedName);
            recordNodes(simpleName, typeReference);
            recordNodes(simpleName2, typeReference);
            recordPendingNameScopeResolution(simpleName);
            recordPendingNameScopeResolution(simpleName2);
        }
        qualifiedName.index = 2;
        qualifiedName.setSourceRange(i12, (i15 - i12) + 1);
        SimpleName simpleName3 = null;
        while (i13 < i11) {
            simpleName3 = new SimpleName(this.ast);
            simpleName3.internalSetIdentifier(new String(cArr[i13]));
            int i16 = i13 + 1;
            simpleName3.index = i16;
            long j12 = jArr[i13];
            int i17 = (int) (j12 >>> 32);
            int i18 = (int) j12;
            simpleName3.setSourceRange(i17, (i18 - i17) + 1);
            QualifiedName qualifiedName2 = new QualifiedName(this.ast);
            qualifiedName2.setQualifier(qualifiedName);
            qualifiedName2.setName(simpleName3);
            qualifiedName2.index = simpleName3.index;
            qualifiedName2.setSourceRange(i12, (i18 - i12) + 1);
            if (this.resolveBindings) {
                recordNodes(qualifiedName2, typeReference);
                recordNodes(simpleName3, typeReference);
                recordPendingNameScopeResolution(qualifiedName2);
                recordPendingNameScopeResolution(simpleName3);
            }
            qualifiedName = qualifiedName2;
            i13 = i16;
        }
        if (simpleName3 == null && this.resolveBindings) {
            recordNodes(qualifiedName, typeReference);
            recordPendingNameScopeResolution(qualifiedName);
        }
        return qualifiedName;
    }

    public void setModifiers(MethodDeclaration methodDeclaration, AbstractMethodDeclaration abstractMethodDeclaration) {
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(abstractMethodDeclaration.declarationSourceStart, abstractMethodDeclaration.sourceStart);
            setModifiers(methodDeclaration, abstractMethodDeclaration.annotations, abstractMethodDeclaration.sourceStart);
        } else {
            methodDeclaration.internalSetModifiers(abstractMethodDeclaration.modifiers & 65535);
            if (abstractMethodDeclaration.annotations != null) {
                methodDeclaration.setFlags(methodDeclaration.getFlags() | 1);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x002b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0013 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setModifiers(SingleVariableDeclaration singleVariableDeclaration, Argument argument) {
        Modifier modifier;
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(argument.declarationSourceStart, argument.sourceStart);
            org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = argument.annotations;
            int i10 = 0;
            while (true) {
                try {
                    int nextToken = this.scanner.getNextToken();
                    if (nextToken == 61) {
                        return;
                    }
                    if (nextToken != 37) {
                        if (nextToken == 48) {
                            modifier = createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                        } else if (nextToken != 50) {
                            switch (nextToken) {
                                case 52:
                                    modifier = createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                    break;
                                case 53:
                                    modifier = createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                    break;
                                case 54:
                                    modifier = createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                    break;
                                case 55:
                                    modifier = createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                    break;
                                case 56:
                                    modifier = createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                    break;
                                case 57:
                                    modifier = createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                    break;
                                case 58:
                                    modifier = createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                    break;
                                case 59:
                                    modifier = createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                    break;
                                case 60:
                                    modifier = createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                    break;
                                default:
                                    switch (nextToken) {
                                        case 1001:
                                        case 1002:
                                        case 1003:
                                            modifier = null;
                                            break;
                                        default:
                                            return;
                                    }
                            }
                        } else {
                            modifier = createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                        }
                        if (modifier != null) {
                            singleVariableDeclaration.modifiers().add(modifier);
                        }
                    } else {
                        if (annotationArr != null && i10 < annotationArr.length) {
                            int i11 = i10 + 1;
                            org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotationArr[i10];
                            Annotation convert = convert(annotation);
                            this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                            i10 = i11;
                            modifier = convert;
                            if (modifier != null) {
                            }
                        }
                        modifier = null;
                        if (modifier != null) {
                        }
                    }
                } catch (InvalidInputException unused) {
                    return;
                }
            }
        } else {
            singleVariableDeclaration.internalSetModifiers(argument.modifiers & 65535);
            if (argument.annotations != null) {
                singleVariableDeclaration.setFlags(singleVariableDeclaration.getFlags() | 1);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x002b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0013 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setModifiers(SingleVariableDeclaration singleVariableDeclaration, LocalDeclaration localDeclaration) {
        Modifier modifier;
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(localDeclaration.declarationSourceStart, localDeclaration.sourceStart);
            org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = localDeclaration.annotations;
            int i10 = 0;
            while (true) {
                try {
                    int nextToken = this.scanner.getNextToken();
                    if (nextToken == 61) {
                        return;
                    }
                    if (nextToken != 37) {
                        if (nextToken == 48) {
                            modifier = createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                        } else if (nextToken != 50) {
                            switch (nextToken) {
                                case 52:
                                    modifier = createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                    break;
                                case 53:
                                    modifier = createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                    break;
                                case 54:
                                    modifier = createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                    break;
                                case 55:
                                    modifier = createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                    break;
                                case 56:
                                    modifier = createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                    break;
                                case 57:
                                    modifier = createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                    break;
                                case 58:
                                    modifier = createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                    break;
                                case 59:
                                    modifier = createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                    break;
                                case 60:
                                    modifier = createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                    break;
                                default:
                                    switch (nextToken) {
                                        case 1001:
                                        case 1002:
                                        case 1003:
                                            modifier = null;
                                            break;
                                        default:
                                            return;
                                    }
                            }
                        } else {
                            modifier = createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                        }
                        if (modifier != null) {
                            singleVariableDeclaration.modifiers().add(modifier);
                        }
                    } else {
                        if (annotationArr != null && i10 < annotationArr.length) {
                            int i11 = i10 + 1;
                            org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotationArr[i10];
                            Annotation convert = convert(annotation);
                            this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                            i10 = i11;
                            modifier = convert;
                            if (modifier != null) {
                            }
                        }
                        modifier = null;
                        if (modifier != null) {
                        }
                    }
                } catch (InvalidInputException unused) {
                    return;
                }
            }
        } else {
            singleVariableDeclaration.internalSetModifiers(localDeclaration.modifiers & 65535);
            if (localDeclaration.annotations != null) {
                singleVariableDeclaration.setFlags(singleVariableDeclaration.getFlags() | 1);
            }
        }
    }

    public void setModifiers(TypeDeclaration typeDeclaration, org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2) {
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(typeDeclaration2.declarationSourceStart, typeDeclaration2.sourceStart);
            setModifiers(typeDeclaration, typeDeclaration2.annotations, typeDeclaration2.sourceStart);
        } else {
            typeDeclaration.internalSetModifiers(typeDeclaration2.modifiers & 65023);
            if (typeDeclaration2.annotations != null) {
                typeDeclaration.setFlags(typeDeclaration.getFlags() | 1);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x002b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0013 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setModifiers(VariableDeclarationExpression variableDeclarationExpression, LocalDeclaration localDeclaration) {
        Modifier modifier;
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(localDeclaration.declarationSourceStart, localDeclaration.sourceStart);
            org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = localDeclaration.annotations;
            int i10 = 0;
            while (true) {
                try {
                    int nextToken = this.scanner.getNextToken();
                    if (nextToken == 61) {
                        return;
                    }
                    if (nextToken != 37) {
                        if (nextToken == 48) {
                            modifier = createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                        } else if (nextToken != 50) {
                            switch (nextToken) {
                                case 52:
                                    modifier = createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                    break;
                                case 53:
                                    modifier = createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                    break;
                                case 54:
                                    modifier = createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                    break;
                                case 55:
                                    modifier = createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                    break;
                                case 56:
                                    modifier = createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                    break;
                                case 57:
                                    modifier = createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                    break;
                                case 58:
                                    modifier = createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                    break;
                                case 59:
                                    modifier = createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                    break;
                                case 60:
                                    modifier = createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                    break;
                                default:
                                    switch (nextToken) {
                                        case 1001:
                                        case 1002:
                                        case 1003:
                                            modifier = null;
                                            break;
                                        default:
                                            return;
                                    }
                            }
                        } else {
                            modifier = createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                        }
                        if (modifier != null) {
                            variableDeclarationExpression.modifiers().add(modifier);
                        }
                    } else {
                        if (annotationArr != null && i10 < annotationArr.length) {
                            int i11 = i10 + 1;
                            org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotationArr[i10];
                            Annotation convert = convert(annotation);
                            this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                            i10 = i11;
                            modifier = convert;
                            if (modifier != null) {
                            }
                        }
                        modifier = null;
                        if (modifier != null) {
                        }
                    }
                } catch (InvalidInputException unused) {
                    return;
                }
            }
        } else {
            variableDeclarationExpression.internalSetModifiers(localDeclaration.modifiers & 65535);
            if (localDeclaration.annotations != null) {
                variableDeclarationExpression.setFlags(variableDeclarationExpression.getFlags() | 1);
            }
        }
    }

    public ClassInstanceCreation convert(AllocationExpression allocationExpression) {
        ClassInstanceCreation classInstanceCreation = new ClassInstanceCreation(this.ast);
        if (this.resolveBindings) {
            recordNodes(classInstanceCreation, allocationExpression);
        }
        TypeReference[] typeReferenceArr = allocationExpression.typeArguments;
        if (typeReferenceArr != null) {
            if (this.ast.apiLevel != 2) {
                int length = typeReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    classInstanceCreation.typeArguments().add(convertType(allocationExpression.typeArguments[i10]));
                }
            } else {
                classInstanceCreation.setFlags(classInstanceCreation.getFlags() | 1);
            }
        }
        if (this.ast.apiLevel != 2) {
            classInstanceCreation.setType(convertType(allocationExpression.type));
        } else {
            classInstanceCreation.internalSetName(convert(allocationExpression.type));
        }
        int i11 = allocationExpression.sourceStart;
        classInstanceCreation.setSourceRange(i11, (allocationExpression.sourceEnd - i11) + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = allocationExpression.arguments;
        if (expressionArr != null) {
            for (org.eclipse.jdt.internal.compiler.ast.Expression expression : expressionArr) {
                classInstanceCreation.arguments().add(convert(expression));
            }
        }
        return classInstanceCreation;
    }

    public Expression convert(AND_AND_Expression aND_AND_Expression) {
        int i10;
        InfixExpression infixExpression = new InfixExpression(this.ast);
        InfixExpression.Operator operator = InfixExpression.Operator.CONDITIONAL_AND;
        infixExpression.setOperator(operator);
        if (this.resolveBindings) {
            recordNodes(infixExpression, aND_AND_Expression);
        }
        int i11 = (aND_AND_Expression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6;
        org.eclipse.jdt.internal.compiler.ast.Expression expression = aND_AND_Expression.left;
        if ((expression instanceof BinaryExpression) && (expression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0) {
            infixExpression.extendedOperands().add(convert(aND_AND_Expression.right));
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = aND_AND_Expression.left;
            do {
                org.eclipse.jdt.internal.compiler.ast.Expression expression3 = ((BinaryExpression) expression2).right;
                int i12 = expression2.bits;
                if (((i12 & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6) == i11 || (i12 & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) != 0) {
                    if (expression3 instanceof BinaryExpression) {
                        int i13 = expression3.bits;
                        if (((i13 & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6) != i11 && (i13 & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0) {
                        }
                    }
                    infixExpression.extendedOperands().add(0, convert(expression3));
                    expression2 = ((BinaryExpression) expression2).left;
                    if (!(expression2 instanceof BinaryExpression)) {
                        break;
                    }
                }
                List extendedOperands = infixExpression.extendedOperands();
                InfixExpression infixExpression2 = new InfixExpression(this.ast);
                if (this.resolveBindings) {
                    recordNodes(infixExpression2, aND_AND_Expression);
                }
                infixExpression2.setOperator(getOperatorFor(i11));
                Expression convert = convert(expression2);
                infixExpression2.setLeftOperand(convert);
                infixExpression2.setSourceRange(convert.getStartPosition(), convert.getLength());
                int size = extendedOperands.size();
                int i14 = 0;
                while (true) {
                    i10 = size - 1;
                    if (i14 >= i10) {
                        break;
                    }
                    InfixExpression infixExpression3 = new InfixExpression(this.ast);
                    if (this.resolveBindings) {
                        recordNodes(infixExpression3, aND_AND_Expression);
                    }
                    infixExpression3.setLeftOperand(infixExpression2);
                    infixExpression3.setOperator(getOperatorFor(i11));
                    infixExpression3.setSourceRange(infixExpression2.getStartPosition(), infixExpression2.getLength());
                    i14++;
                    infixExpression2 = infixExpression3;
                }
                InfixExpression infixExpression4 = infixExpression2;
                for (int i15 = 0; i15 < size; i15++) {
                    Expression expression4 = (Expression) extendedOperands.remove(i10 - i15);
                    infixExpression4.setRightOperand(expression4);
                    int startPosition = infixExpression4.getLeftOperand().getStartPosition();
                    infixExpression4.setSourceRange(startPosition, (expression4.getStartPosition() + expression4.getLength()) - startPosition);
                    if (infixExpression4.getLeftOperand().getNodeType() == 27) {
                        infixExpression4 = (InfixExpression) infixExpression4.getLeftOperand();
                    }
                }
                setInfixSourcePositions(infixExpression2, aND_AND_Expression.sourceStart);
                if (this.resolveBindings) {
                    recordNodes(infixExpression2, aND_AND_Expression);
                }
                return infixExpression2;
            } while ((expression2.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0);
            infixExpression.setLeftOperand(convert(expression2));
            infixExpression.setRightOperand((Expression) infixExpression.extendedOperands().remove(0));
            setInfixSourcePositions(infixExpression, aND_AND_Expression.sourceStart);
            return infixExpression;
        }
        infixExpression.setLeftOperand(convert(expression));
        infixExpression.setRightOperand(convert(aND_AND_Expression.right));
        infixExpression.setOperator(operator);
        setInfixSourcePositions(infixExpression, aND_AND_Expression.sourceStart);
        return infixExpression;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x002b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0013 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setModifiers(VariableDeclarationStatement variableDeclarationStatement, LocalDeclaration localDeclaration) {
        Modifier modifier;
        if (this.ast.apiLevel != 2) {
            this.scanner.resetTo(localDeclaration.declarationSourceStart, localDeclaration.sourceStart);
            org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = localDeclaration.annotations;
            int i10 = 0;
            while (true) {
                try {
                    int nextToken = this.scanner.getNextToken();
                    if (nextToken == 61) {
                        return;
                    }
                    if (nextToken != 37) {
                        if (nextToken == 48) {
                            modifier = createModifier(Modifier.ModifierKeyword.STATIC_KEYWORD);
                        } else if (nextToken != 50) {
                            switch (nextToken) {
                                case 52:
                                    modifier = createModifier(Modifier.ModifierKeyword.ABSTRACT_KEYWORD);
                                    break;
                                case 53:
                                    modifier = createModifier(Modifier.ModifierKeyword.FINAL_KEYWORD);
                                    break;
                                case 54:
                                    modifier = createModifier(Modifier.ModifierKeyword.NATIVE_KEYWORD);
                                    break;
                                case 55:
                                    modifier = createModifier(Modifier.ModifierKeyword.PRIVATE_KEYWORD);
                                    break;
                                case 56:
                                    modifier = createModifier(Modifier.ModifierKeyword.PROTECTED_KEYWORD);
                                    break;
                                case 57:
                                    modifier = createModifier(Modifier.ModifierKeyword.PUBLIC_KEYWORD);
                                    break;
                                case 58:
                                    modifier = createModifier(Modifier.ModifierKeyword.STRICTFP_KEYWORD);
                                    break;
                                case 59:
                                    modifier = createModifier(Modifier.ModifierKeyword.TRANSIENT_KEYWORD);
                                    break;
                                case 60:
                                    modifier = createModifier(Modifier.ModifierKeyword.VOLATILE_KEYWORD);
                                    break;
                                default:
                                    switch (nextToken) {
                                        case 1001:
                                        case 1002:
                                        case 1003:
                                            modifier = null;
                                            break;
                                        default:
                                            return;
                                    }
                            }
                        } else {
                            modifier = createModifier(Modifier.ModifierKeyword.SYNCHRONIZED_KEYWORD);
                        }
                        if (modifier != null) {
                            variableDeclarationStatement.modifiers().add(modifier);
                        }
                    } else {
                        if (annotationArr != null && i10 < annotationArr.length) {
                            int i11 = i10 + 1;
                            org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotationArr[i10];
                            Annotation convert = convert(annotation);
                            this.scanner.resetTo(annotation.declarationSourceEnd + 1, this.compilationUnitSourceLength);
                            i10 = i11;
                            modifier = convert;
                            if (modifier != null) {
                            }
                        }
                        modifier = null;
                        if (modifier != null) {
                        }
                    }
                } catch (InvalidInputException unused) {
                    return;
                }
            }
        } else {
            variableDeclarationStatement.internalSetModifiers(localDeclaration.modifiers & 65535);
            if (localDeclaration.annotations != null) {
                variableDeclarationStatement.setFlags(variableDeclarationStatement.getFlags() | 1);
            }
        }
    }

    public ASTNode convert(AnnotationMethodDeclaration annotationMethodDeclaration) {
        checkCanceled();
        if (this.ast.apiLevel == 2) {
            return null;
        }
        AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration = new AnnotationTypeMemberDeclaration(this.ast);
        setModifiers(annotationTypeMemberDeclaration, annotationMethodDeclaration);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(annotationMethodDeclaration.selector));
        int i10 = annotationMethodDeclaration.sourceStart;
        simpleName.setSourceRange(i10, (retrieveIdentifierEndPosition(i10, annotationMethodDeclaration.sourceEnd) - i10) + 1);
        annotationTypeMemberDeclaration.setName(simpleName);
        TypeReference typeReference = annotationMethodDeclaration.returnType;
        if (typeReference != null) {
            setTypeForMethodDeclaration(annotationTypeMemberDeclaration, convertType(typeReference), 0);
        }
        int i11 = annotationMethodDeclaration.declarationSourceStart;
        annotationTypeMemberDeclaration.setSourceRange(i11, (annotationMethodDeclaration.bodyEnd - i11) + 1);
        convert(annotationMethodDeclaration.javadoc, annotationTypeMemberDeclaration);
        org.eclipse.jdt.internal.compiler.ast.Expression expression = annotationMethodDeclaration.defaultValue;
        if (expression != null) {
            annotationTypeMemberDeclaration.setDefault(convert(expression));
        }
        if (this.resolveBindings) {
            recordNodes(annotationTypeMemberDeclaration, annotationMethodDeclaration);
            recordNodes(simpleName, annotationMethodDeclaration);
            annotationTypeMemberDeclaration.resolveBinding();
        }
        return annotationTypeMemberDeclaration;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c6 A[LOOP:0: B:24:0x00bf->B:26:0x00c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SingleVariableDeclaration convert(Argument argument) {
        Dimension dimension;
        SingleVariableDeclaration singleVariableDeclaration = new SingleVariableDeclaration(this.ast);
        setModifiers(singleVariableDeclaration, argument);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(argument.name));
        if (argument instanceof Receiver) {
            simpleName.setFlags(simpleName.getFlags() | 1);
        }
        int i10 = argument.sourceStart;
        int i11 = argument.sourceEnd;
        simpleName.setSourceRange(i10, (i11 - i10) + 1);
        singleVariableDeclaration.setName(simpleName);
        TypeReference typeReference = argument.type;
        int i12 = typeReference.sourceEnd;
        int extraDimensions = typeReference.extraDimensions();
        if (this.ast.apiLevel >= 8) {
            setExtraAnnotatedDimensions(i11 + 1, i12, typeReference, singleVariableDeclaration.extraDimensions(), extraDimensions);
        } else {
            internalSetExtraDimensions(singleVariableDeclaration, extraDimensions);
        }
        boolean isVarArgs = argument.isVarArgs();
        if (isVarArgs && extraDimensions == 0) {
            TypeReference typeReference2 = argument.type;
            typeReference2.sourceEnd = retrieveEllipsisStartPosition(typeReference2.sourceStart, i12);
        }
        Type convertType = convertType(argument.type);
        int max = Math.max((convertType.getStartPosition() + convertType.getLength()) - 1, argument.declarationSourceEnd);
        if (isVarArgs) {
            if (this.ast.apiLevel() >= 8 && convertType.isArrayType()) {
                List dimensions = ((ArrayType) convertType).dimensions();
                if (!dimensions.isEmpty()) {
                    dimension = (Dimension) dimensions.get(dimensions.size() - 1);
                    setTypeForSingleVariableDeclaration(singleVariableDeclaration, convertType, extraDimensions + 1);
                    if (this.ast.apiLevel() >= 8 && dimension != null) {
                        for (Annotation annotation : dimension.annotations()) {
                            annotation.setParent(null, null);
                            singleVariableDeclaration.varargsAnnotations().add(annotation);
                        }
                    }
                    if (extraDimensions != 0) {
                        singleVariableDeclaration.setFlags(singleVariableDeclaration.getFlags() | 1);
                    }
                }
            }
            dimension = null;
            setTypeForSingleVariableDeclaration(singleVariableDeclaration, convertType, extraDimensions + 1);
            if (this.ast.apiLevel() >= 8) {
                while (r2.hasNext()) {
                }
            }
            if (extraDimensions != 0) {
            }
        } else {
            setTypeForSingleVariableDeclaration(singleVariableDeclaration, convertType, extraDimensions);
        }
        int i13 = argument.declarationSourceStart;
        singleVariableDeclaration.setSourceRange(i13, (max - i13) + 1);
        if (isVarArgs) {
            if (this.ast.apiLevel != 2) {
                singleVariableDeclaration.setVarargs(true);
            } else {
                singleVariableDeclaration.setFlags(singleVariableDeclaration.getFlags() | 1);
            }
        }
        if (this.resolveBindings) {
            recordNodes(simpleName, argument);
            recordNodes(singleVariableDeclaration, argument);
            singleVariableDeclaration.resolveBinding();
        }
        return singleVariableDeclaration;
    }

    public Annotation convert(org.eclipse.jdt.internal.compiler.ast.Annotation annotation) {
        if (annotation instanceof org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation) {
            return convert((org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation) annotation);
        }
        if (annotation instanceof org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation) {
            return convert((org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation) annotation);
        }
        return convert((org.eclipse.jdt.internal.compiler.ast.NormalAnnotation) annotation);
    }

    public ArrayCreation convert(ArrayAllocationExpression arrayAllocationExpression) {
        ArrayType convertToArray;
        ArrayCreation arrayCreation = new ArrayCreation(this.ast);
        if (this.resolveBindings) {
            recordNodes(arrayCreation, arrayAllocationExpression);
        }
        int i10 = arrayAllocationExpression.sourceStart;
        arrayCreation.setSourceRange(i10, (arrayAllocationExpression.sourceEnd - i10) + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = arrayAllocationExpression.dimensions;
        int length = expressionArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            org.eclipse.jdt.internal.compiler.ast.Expression expression = expressionArr[i11];
            if (expression != null) {
                Expression convert = convert(expression);
                if (this.resolveBindings) {
                    recordNodes(convert, expressionArr[i11]);
                }
                arrayCreation.dimensions().add(convert);
            }
        }
        Type convertType = convertType(arrayAllocationExpression.type);
        if (this.resolveBindings) {
            recordNodes(convertType, arrayAllocationExpression.type);
        }
        if (convertType.isArrayType()) {
            convertToArray = (ArrayType) convertType;
            if (arrayAllocationExpression.annotationsOnDimensions != null) {
                if (this.ast.apiLevel() < 8) {
                    convertToArray.setFlags(convertToArray.getFlags() | 1);
                } else {
                    setTypeAnnotationsAndSourceRangeOnArray(convertToArray, arrayAllocationExpression.annotationsOnDimensions);
                }
            }
        } else {
            convertToArray = convertToArray(convertType, convertType.getStartPosition(), -1, length, arrayAllocationExpression.annotationsOnDimensions);
        }
        arrayCreation.setType(convertToArray);
        if (this.resolveBindings) {
            completeRecord(convertToArray, arrayAllocationExpression);
        }
        org.eclipse.jdt.internal.compiler.ast.ArrayInitializer arrayInitializer = arrayAllocationExpression.initializer;
        if (arrayInitializer != null) {
            arrayCreation.setInitializer(convert(arrayInitializer));
        }
        return arrayCreation;
    }

    public ArrayInitializer convert(org.eclipse.jdt.internal.compiler.ast.ArrayInitializer arrayInitializer) {
        ArrayInitializer arrayInitializer2 = new ArrayInitializer(this.ast);
        if (this.resolveBindings) {
            recordNodes(arrayInitializer2, arrayInitializer);
        }
        int i10 = arrayInitializer.sourceStart;
        arrayInitializer2.setSourceRange(i10, (arrayInitializer.sourceEnd - i10) + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = arrayInitializer.expressions;
        if (expressionArr != null) {
            int length = expressionArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                Expression convert = convert(expressionArr[i11]);
                if (this.resolveBindings) {
                    recordNodes(convert, expressionArr[i11]);
                }
                arrayInitializer2.expressions().add(convert);
            }
        }
        return arrayInitializer2;
    }

    public ArrayAccess convert(ArrayReference arrayReference) {
        ArrayAccess arrayAccess = new ArrayAccess(this.ast);
        if (this.resolveBindings) {
            recordNodes(arrayAccess, arrayReference);
        }
        int i10 = arrayReference.sourceStart;
        arrayAccess.setSourceRange(i10, (arrayReference.sourceEnd - i10) + 1);
        arrayAccess.setArray(convert(arrayReference.receiver));
        arrayAccess.setIndex(convert(arrayReference.position));
        return arrayAccess;
    }

    public AssertStatement convert(org.eclipse.jdt.internal.compiler.ast.AssertStatement assertStatement) {
        AssertStatement assertStatement2 = new AssertStatement(this.ast);
        Expression convert = convert(assertStatement.assertExpression);
        assertStatement2.setExpression(convert);
        org.eclipse.jdt.internal.compiler.ast.Expression expression = assertStatement.exceptionArgument;
        if (expression != null) {
            convert = convert(expression);
            assertStatement2.setMessage(convert);
        }
        int i10 = assertStatement.sourceStart;
        int retrieveSemiColonPosition = retrieveSemiColonPosition(convert);
        if (retrieveSemiColonPosition == -1) {
            assertStatement2.setSourceRange(i10, (((convert.getStartPosition() + convert.getLength()) - 1) - i10) + 1);
        } else {
            assertStatement2.setSourceRange(i10, (retrieveSemiColonPosition - i10) + 1);
        }
        return assertStatement2;
    }

    public Assignment convert(org.eclipse.jdt.internal.compiler.ast.Assignment assignment) {
        Assignment assignment2 = new Assignment(this.ast);
        if (this.resolveBindings) {
            recordNodes(assignment2, assignment);
        }
        Expression convert = convert(assignment.lhs);
        assignment2.setLeftHandSide(convert);
        assignment2.setOperator(Assignment.Operator.ASSIGN);
        assignment2.setRightHandSide(convert(assignment.expression));
        int startPosition = convert.getStartPosition();
        assignment2.setSourceRange(startPosition, (((r4.getStartPosition() + r4.getLength()) - 1) - startPosition) + 1);
        return assignment2;
    }

    public TypeDeclaration convert(org.eclipse.jdt.internal.compiler.ast.ASTNode[] aSTNodeArr) {
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.ast);
        ASTNode aSTNode = this.referenceContext;
        this.referenceContext = typeDeclaration;
        typeDeclaration.setInterface(false);
        int length = aSTNodeArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode2 = aSTNodeArr[i10];
            if (aSTNode2 instanceof org.eclipse.jdt.internal.compiler.ast.Initializer) {
                org.eclipse.jdt.internal.compiler.ast.Initializer initializer = (org.eclipse.jdt.internal.compiler.ast.Initializer) aSTNode2;
                Initializer initializer2 = new Initializer(this.ast);
                initializer2.setBody(convert(initializer.block));
                setModifiers(initializer2, initializer);
                int i11 = initializer.declarationSourceStart;
                initializer2.setSourceRange(i11, (initializer.sourceEnd - i11) + 1);
                convert(initializer.javadoc, initializer2);
                typeDeclaration.bodyDeclarations().add(initializer2);
            } else if (aSTNode2 instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) {
                org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration = (org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) aSTNode2;
                if (i10 > 0) {
                    org.eclipse.jdt.internal.compiler.ast.ASTNode aSTNode3 = aSTNodeArr[i10 - 1];
                    if ((aSTNode3 instanceof org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) && ((org.eclipse.jdt.internal.compiler.ast.FieldDeclaration) aSTNode3).declarationSourceStart == fieldDeclaration.declarationSourceStart) {
                        ((FieldDeclaration) typeDeclaration.bodyDeclarations().get(typeDeclaration.bodyDeclarations().size() - 1)).fragments().add(convertToVariableDeclarationFragment(fieldDeclaration));
                    }
                }
                typeDeclaration.bodyDeclarations().add(convertToFieldDeclaration(fieldDeclaration));
            } else if (aSTNode2 instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) aSTNode2;
                if (!abstractMethodDeclaration.isDefaultConstructor() && !abstractMethodDeclaration.isClinit()) {
                    typeDeclaration.bodyDeclarations().add(convert(false, abstractMethodDeclaration));
                }
            } else if (aSTNode2 instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
                ASTNode convert = convert((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) aSTNode2);
                if (convert == null) {
                    typeDeclaration.setFlags(typeDeclaration.getFlags() | 1);
                } else {
                    typeDeclaration.bodyDeclarations().add(convert);
                }
            }
        }
        this.referenceContext = aSTNode;
        return typeDeclaration;
    }

    public Expression convert(BinaryExpression binaryExpression) {
        int i10;
        InfixExpression infixExpression = new InfixExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(infixExpression, binaryExpression);
        }
        int i11 = (binaryExpression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6;
        infixExpression.setOperator(getOperatorFor(i11));
        org.eclipse.jdt.internal.compiler.ast.Expression expression = binaryExpression.left;
        if ((expression instanceof BinaryExpression) && (expression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0) {
            infixExpression.extendedOperands().add(convert(binaryExpression.right));
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = binaryExpression.left;
            do {
                org.eclipse.jdt.internal.compiler.ast.Expression expression3 = ((BinaryExpression) expression2).right;
                int i12 = expression2.bits;
                if (((i12 & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6) == i11 || (i12 & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) != 0) {
                    if (expression3 instanceof BinaryExpression) {
                        int i13 = expression3.bits;
                        if (((i13 & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6) != i11 && (i13 & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0) {
                        }
                    }
                    infixExpression.extendedOperands().add(0, convert(expression3));
                    expression2 = ((BinaryExpression) expression2).left;
                    if (!(expression2 instanceof BinaryExpression)) {
                        break;
                    }
                }
                List extendedOperands = infixExpression.extendedOperands();
                InfixExpression infixExpression2 = new InfixExpression(this.ast);
                if (this.resolveBindings) {
                    recordNodes(infixExpression2, binaryExpression);
                }
                infixExpression2.setOperator(getOperatorFor(i11));
                Expression convert = convert(expression2);
                infixExpression2.setLeftOperand(convert);
                infixExpression2.setSourceRange(convert.getStartPosition(), convert.getLength());
                int size = extendedOperands.size();
                int i14 = 0;
                while (true) {
                    i10 = size - 1;
                    if (i14 >= i10) {
                        break;
                    }
                    InfixExpression infixExpression3 = new InfixExpression(this.ast);
                    if (this.resolveBindings) {
                        recordNodes(infixExpression3, binaryExpression);
                    }
                    infixExpression3.setLeftOperand(infixExpression2);
                    infixExpression3.setOperator(getOperatorFor(i11));
                    infixExpression3.setSourceRange(infixExpression2.getStartPosition(), infixExpression2.getLength());
                    i14++;
                    infixExpression2 = infixExpression3;
                }
                InfixExpression infixExpression4 = infixExpression2;
                for (int i15 = 0; i15 < size; i15++) {
                    Expression expression4 = (Expression) extendedOperands.remove(i10 - i15);
                    infixExpression4.setRightOperand(expression4);
                    int startPosition = infixExpression4.getLeftOperand().getStartPosition();
                    infixExpression4.setSourceRange(startPosition, (expression4.getStartPosition() + expression4.getLength()) - startPosition);
                    if (infixExpression4.getLeftOperand().getNodeType() == 27) {
                        infixExpression4 = (InfixExpression) infixExpression4.getLeftOperand();
                    }
                }
                setInfixSourcePositions(infixExpression2, infixExpression2.getLeftOperand().getStartPosition());
                if (this.resolveBindings) {
                    recordNodes(infixExpression2, binaryExpression);
                }
                return infixExpression2;
            } while ((expression2.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0);
            Expression convert2 = convert(expression2);
            infixExpression.setLeftOperand(convert2);
            infixExpression.setRightOperand((Expression) infixExpression.extendedOperands().remove(0));
            setInfixSourcePositions(infixExpression, convert2.getStartPosition());
            return infixExpression;
        }
        if ((expression instanceof StringLiteralConcatenation) && (expression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0 && 14 == i11) {
            StringLiteralConcatenation stringLiteralConcatenation = (StringLiteralConcatenation) expression;
            org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = stringLiteralConcatenation.literals;
            infixExpression.setLeftOperand(convert(expressionArr[0]));
            infixExpression.setRightOperand(convert(expressionArr[1]));
            for (int i16 = 2; i16 < stringLiteralConcatenation.counter; i16++) {
                infixExpression.extendedOperands().add(convert(expressionArr[i16]));
            }
            infixExpression.extendedOperands().add(convert(binaryExpression.right));
            setInfixSourcePositions(infixExpression, stringLiteralConcatenation.sourceStart);
            return infixExpression;
        }
        Expression convert3 = convert(expression);
        infixExpression.setLeftOperand(convert3);
        infixExpression.setRightOperand(convert(binaryExpression.right));
        setInfixSourcePositions(infixExpression, convert3.getStartPosition());
        return infixExpression;
    }

    public Block convert(org.eclipse.jdt.internal.compiler.ast.Block block) {
        Block block2 = new Block(this.ast);
        int i10 = block.sourceEnd;
        if (i10 > 0) {
            int i11 = block.sourceStart;
            block2.setSourceRange(i11, (i10 - i11) + 1);
        }
        org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr = block.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i12 = 0; i12 < length; i12++) {
                org.eclipse.jdt.internal.compiler.ast.Statement statement = statementArr[i12];
                if (statement instanceof LocalDeclaration) {
                    checkAndAddMultipleLocalDeclaration(statementArr, i12, block2.statements());
                } else {
                    Statement convert = convert(statement);
                    if (convert != null) {
                        block2.statements().add(convert);
                    }
                }
            }
        }
        return block2;
    }

    public BreakStatement convert(org.eclipse.jdt.internal.compiler.ast.BreakStatement breakStatement) {
        BreakStatement breakStatement2 = new BreakStatement(this.ast);
        if (this.ast.apiLevel >= 12) {
            breakStatement2.setImplicit(breakStatement.isImplicit);
            if (breakStatement.isImplicit) {
                breakStatement2.setSourceRange(breakStatement.sourceEnd - 1, 0);
            } else {
                int i10 = breakStatement.sourceStart;
                breakStatement2.setSourceRange(i10, (breakStatement.sourceEnd - i10) + 1);
            }
        } else {
            int i11 = breakStatement.sourceStart;
            breakStatement2.setSourceRange(i11, (breakStatement.sourceEnd - i11) + 1);
        }
        if (breakStatement.label != null) {
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(breakStatement.label));
            retrieveIdentifierAndSetPositions(breakStatement.sourceStart, breakStatement.sourceEnd, simpleName);
            breakStatement2.setLabel(simpleName);
        } else {
            org.eclipse.jdt.internal.compiler.ast.Expression expression = breakStatement.expression;
            if (expression != null && this.ast.apiLevel >= 12) {
                breakStatement2.setExpression(convert(expression));
                int i12 = breakStatement.sourceEnd;
                if (i12 == -1) {
                    int i13 = breakStatement.sourceStart;
                    breakStatement2.setSourceRange(i13, (i12 - i13) + 2);
                } else {
                    int i14 = breakStatement.sourceStart;
                    breakStatement2.setSourceRange(i14, (i12 - i14) + 1);
                }
            }
        }
        return breakStatement2;
    }

    public SwitchCase convert(CaseStatement caseStatement) {
        SwitchCase switchCase = new SwitchCase(this.ast);
        if (this.ast.apiLevel >= 12) {
            org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = caseStatement.constantExpressions;
            if (expressionArr == null || expressionArr.length == 0) {
                switchCase.expressions().clear();
            } else {
                for (org.eclipse.jdt.internal.compiler.ast.Expression expression : expressionArr) {
                    switchCase.expressions().add(convert(expression));
                }
            }
        } else {
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = caseStatement.constantExpression;
            if (expression2 == null) {
                internalSetExpression(switchCase, null);
            } else {
                internalSetExpression(switchCase, convert(expression2));
            }
        }
        if (this.ast.apiLevel >= 12) {
            switchCase.setSwitchLabeledRule(caseStatement.isExpr);
        }
        int i10 = caseStatement.sourceStart;
        switchCase.setSourceRange(i10, (caseStatement.sourceEnd - i10) + 1);
        if (caseStatement.isExpr) {
            retrieveArrowPosition(switchCase);
        } else {
            retrieveColonPosition(switchCase);
        }
        return switchCase;
    }

    public CastExpression convert(org.eclipse.jdt.internal.compiler.ast.CastExpression castExpression) {
        CastExpression castExpression2 = new CastExpression(this.ast);
        int i10 = castExpression.sourceStart;
        castExpression2.setSourceRange(i10, (castExpression.sourceEnd - i10) + 1);
        TypeReference typeReference = castExpression.type;
        trimWhiteSpacesAndComments(typeReference);
        castExpression2.setType(convertType(typeReference));
        castExpression2.setExpression(convert(castExpression.expression));
        if (this.resolveBindings) {
            recordNodes(castExpression2, castExpression);
        }
        return castExpression2;
    }

    public CharacterLiteral convert(CharLiteral charLiteral) {
        int i10 = charLiteral.sourceEnd;
        int i11 = charLiteral.sourceStart;
        int i12 = (i10 - i11) + 1;
        CharacterLiteral characterLiteral = new CharacterLiteral(this.ast);
        if (this.resolveBindings) {
            recordNodes(characterLiteral, charLiteral);
        }
        characterLiteral.internalSetEscapedValue(new String(this.compilationUnitSource, i11, i12));
        characterLiteral.setSourceRange(i11, i12);
        removeLeadingAndTrailingCommentsFromLiteral(characterLiteral);
        return characterLiteral;
    }

    public Expression convert(ClassLiteralAccess classLiteralAccess) {
        TypeLiteral typeLiteral = new TypeLiteral(this.ast);
        if (this.resolveBindings) {
            recordNodes(typeLiteral, classLiteralAccess);
        }
        int i10 = classLiteralAccess.sourceStart;
        typeLiteral.setSourceRange(i10, (classLiteralAccess.sourceEnd - i10) + 1);
        typeLiteral.setType(convertType(classLiteralAccess.type));
        return typeLiteral;
    }

    public CompilationUnit convert(CompilationUnitDeclaration compilationUnitDeclaration, char[] cArr) {
        String process;
        try {
            if (compilationUnitDeclaration.compilationResult.recoveryScannerData != null) {
                RecoveryScanner recoveryScanner = new RecoveryScanner(this.scanner, compilationUnitDeclaration.compilationResult.recoveryScannerData.removeUnused());
                this.scanner = recoveryScanner;
                this.docParser.scanner = recoveryScanner;
            }
            this.compilationUnitSource = cArr;
            this.compilationUnitSourceLength = cArr.length;
            this.scanner.setSource(cArr, compilationUnitDeclaration.compilationResult);
            CompilationUnit compilationUnit = new CompilationUnit(this.ast);
            compilationUnit.setStatementsRecoveryData(compilationUnitDeclaration.compilationResult.recoveryScannerData);
            int[][] iArr = compilationUnitDeclaration.comments;
            if (iArr != null) {
                buildCommentsTable(compilationUnit, iArr);
            }
            if (this.resolveBindings) {
                recordNodes(compilationUnit, compilationUnitDeclaration);
            }
            if (compilationUnitDeclaration.currentPackage != null) {
                compilationUnit.setPackage(convertPackage(compilationUnitDeclaration));
            }
            ImportReference[] importReferenceArr = compilationUnitDeclaration.imports;
            if (importReferenceArr != null) {
                for (ImportReference importReference : importReferenceArr) {
                    compilationUnit.imports().add(convertImport(importReference));
                }
            }
            org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration moduleDeclaration = compilationUnitDeclaration.moduleDeclaration;
            if (moduleDeclaration != null) {
                ModuleDeclaration convertToModuleDeclaration = convertToModuleDeclaration(moduleDeclaration);
                if (convertToModuleDeclaration == null) {
                    compilationUnit.setFlags(compilationUnit.getFlags() | 1);
                } else {
                    compilationUnit.setModule(convertToModuleDeclaration);
                }
            } else {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
                if (typeDeclarationArr != null) {
                    for (org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration : typeDeclarationArr) {
                        if (!CharOperation.equals(typeDeclaration.name, TypeConstants.PACKAGE_INFO_NAME)) {
                            ASTNode convert = convert(typeDeclaration);
                            if (convert == null) {
                                compilationUnit.setFlags(compilationUnit.getFlags() | 1);
                            } else if (convert instanceof ModuleDeclaration) {
                                compilationUnit.setModule((ModuleDeclaration) convert);
                            } else {
                                compilationUnit.types().add(convert);
                            }
                        }
                    }
                }
            }
            int i10 = compilationUnitDeclaration.sourceStart;
            compilationUnit.setSourceRange(i10, (compilationUnitDeclaration.sourceEnd - i10) + 1);
            CompilationResult compilationResult = compilationUnitDeclaration.compilationResult;
            int i11 = compilationResult.problemCount;
            if (i11 != 0) {
                CategorizedProblem[] problems = compilationResult.getProblems();
                int length = problems.length;
                if (length != i11) {
                    CategorizedProblem[] categorizedProblemArr = new CategorizedProblem[length];
                    System.arraycopy(problems, 0, categorizedProblemArr, 0, length);
                    problems = categorizedProblemArr;
                }
                compilationUnit.accept(new ASTSyntaxErrorPropagator(problems));
                compilationUnit.accept(new ASTRecoveryPropagator(problems, compilationUnitDeclaration.compilationResult.recoveryScannerData));
                compilationUnit.setProblems(problems);
            }
            if (this.resolveBindings) {
                lookupForScopes();
            }
            compilationUnit.initCommentMapper(this.scanner);
            if (SourceRangeVerifier.DEBUG && (process = new SourceRangeVerifier().process(compilationUnit)) != null) {
                StringBuffer stringBuffer = new StringBuffer("Bad AST node structure:");
                String findLineSeparator = Util.findLineSeparator(cArr);
                if (findLineSeparator == null) {
                    findLineSeparator = System.getProperty("line.separator");
                }
                stringBuffer.append(findLineSeparator);
                stringBuffer.append(process.replaceAll("\n", findLineSeparator));
                stringBuffer.append(findLineSeparator);
                stringBuffer.append("----------------------------------- SOURCE BEGIN -------------------------------------");
                stringBuffer.append(findLineSeparator);
                stringBuffer.append(cArr);
                stringBuffer.append(findLineSeparator);
                stringBuffer.append("----------------------------------- SOURCE END -------------------------------------");
                Util.log(new IllegalStateException("Bad AST node structure"), stringBuffer.toString());
                if (SourceRangeVerifier.DEBUG_THROW) {
                    throw new IllegalStateException(stringBuffer.toString());
                }
            }
            return compilationUnit;
        } catch (IllegalArgumentException e10) {
            StringBuffer stringBuffer2 = new StringBuffer("Exception occurred during compilation unit conversion:");
            String findLineSeparator2 = Util.findLineSeparator(cArr);
            if (findLineSeparator2 == null) {
                findLineSeparator2 = System.getProperty("line.separator");
            }
            stringBuffer2.append(findLineSeparator2);
            stringBuffer2.append("----------------------------------- SOURCE BEGIN -------------------------------------");
            stringBuffer2.append(findLineSeparator2);
            stringBuffer2.append(cArr);
            stringBuffer2.append(findLineSeparator2);
            stringBuffer2.append("----------------------------------- SOURCE END -------------------------------------");
            Util.log(e10, stringBuffer2.toString());
            throw e10;
        }
    }

    public Assignment convert(CompoundAssignment compoundAssignment) {
        Assignment assignment = new Assignment(this.ast);
        Expression convert = convert(compoundAssignment.lhs);
        assignment.setLeftHandSide(convert);
        int startPosition = convert.getStartPosition();
        assignment.setSourceRange(startPosition, (compoundAssignment.sourceEnd - startPosition) + 1);
        int i10 = compoundAssignment.operator;
        if (i10 == 2) {
            assignment.setOperator(Assignment.Operator.BIT_AND_ASSIGN);
        } else if (i10 == 3) {
            assignment.setOperator(Assignment.Operator.BIT_OR_ASSIGN);
        } else if (i10 != 19) {
            switch (i10) {
                case 8:
                    assignment.setOperator(Assignment.Operator.BIT_XOR_ASSIGN);
                    break;
                case 9:
                    assignment.setOperator(Assignment.Operator.DIVIDE_ASSIGN);
                    break;
                case 10:
                    assignment.setOperator(Assignment.Operator.LEFT_SHIFT_ASSIGN);
                    break;
                default:
                    switch (i10) {
                        case 13:
                            assignment.setOperator(Assignment.Operator.MINUS_ASSIGN);
                            break;
                        case 14:
                            assignment.setOperator(Assignment.Operator.PLUS_ASSIGN);
                            break;
                        case 15:
                            assignment.setOperator(Assignment.Operator.TIMES_ASSIGN);
                            break;
                        case 16:
                            assignment.setOperator(Assignment.Operator.REMAINDER_ASSIGN);
                            break;
                        case 17:
                            assignment.setOperator(Assignment.Operator.RIGHT_SHIFT_SIGNED_ASSIGN);
                            break;
                    }
            }
        } else {
            assignment.setOperator(Assignment.Operator.RIGHT_SHIFT_UNSIGNED_ASSIGN);
        }
        assignment.setRightHandSide(convert(compoundAssignment.expression));
        if (this.resolveBindings) {
            recordNodes(assignment, compoundAssignment);
        }
        return assignment;
    }

    public ConditionalExpression convert(org.eclipse.jdt.internal.compiler.ast.ConditionalExpression conditionalExpression) {
        ConditionalExpression conditionalExpression2 = new ConditionalExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(conditionalExpression2, conditionalExpression);
        }
        conditionalExpression2.setExpression(convert(conditionalExpression.condition));
        conditionalExpression2.setThenExpression(convert(conditionalExpression.valueIfTrue));
        Expression convert = convert(conditionalExpression.valueIfFalse);
        conditionalExpression2.setElseExpression(convert);
        conditionalExpression2.setSourceRange(conditionalExpression.sourceStart, (convert.getStartPosition() + convert.getLength()) - conditionalExpression.sourceStart);
        return conditionalExpression2;
    }

    public ContinueStatement convert(org.eclipse.jdt.internal.compiler.ast.ContinueStatement continueStatement) {
        ContinueStatement continueStatement2 = new ContinueStatement(this.ast);
        int i10 = continueStatement.sourceStart;
        continueStatement2.setSourceRange(i10, (continueStatement.sourceEnd - i10) + 1);
        if (continueStatement.label != null) {
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(continueStatement.label));
            retrieveIdentifierAndSetPositions(continueStatement.sourceStart, continueStatement.sourceEnd, simpleName);
            continueStatement2.setLabel(simpleName);
        }
        return continueStatement2;
    }

    public DoStatement convert(org.eclipse.jdt.internal.compiler.ast.DoStatement doStatement) {
        DoStatement doStatement2 = new DoStatement(this.ast);
        int i10 = doStatement.sourceStart;
        doStatement2.setSourceRange(i10, (doStatement.sourceEnd - i10) + 1);
        doStatement2.setExpression(convert(doStatement.condition));
        Statement convert = convert(doStatement.action);
        if (convert == null) {
            return null;
        }
        doStatement2.setBody(convert);
        return doStatement2;
    }

    public NumberLiteral convert(DoubleLiteral doubleLiteral) {
        int i10 = doubleLiteral.sourceEnd;
        int i11 = doubleLiteral.sourceStart;
        int i12 = (i10 - i11) + 1;
        NumberLiteral numberLiteral = new NumberLiteral(this.ast);
        numberLiteral.internalSetToken(new String(this.compilationUnitSource, i11, i12));
        if (this.resolveBindings) {
            recordNodes(numberLiteral, doubleLiteral);
        }
        numberLiteral.setSourceRange(i11, i12);
        removeLeadingAndTrailingCommentsFromLiteral(numberLiteral);
        return numberLiteral;
    }

    public EmptyStatement convert(org.eclipse.jdt.internal.compiler.ast.EmptyStatement emptyStatement) {
        EmptyStatement emptyStatement2 = new EmptyStatement(this.ast);
        int i10 = emptyStatement.sourceStart;
        emptyStatement2.setSourceRange(i10, (emptyStatement.sourceEnd - i10) + 1);
        return emptyStatement2;
    }

    public EnumConstantDeclaration convert(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration) {
        checkCanceled();
        EnumConstantDeclaration enumConstantDeclaration = new EnumConstantDeclaration(this.ast);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(fieldDeclaration.name));
        int i10 = fieldDeclaration.sourceStart;
        simpleName.setSourceRange(i10, (fieldDeclaration.sourceEnd - i10) + 1);
        enumConstantDeclaration.setName(simpleName);
        int i11 = fieldDeclaration.declarationSourceStart;
        int i12 = fieldDeclaration.declarationSourceEnd;
        org.eclipse.jdt.internal.compiler.ast.Expression expression = fieldDeclaration.initialization;
        if (expression != null) {
            if (expression instanceof QualifiedAllocationExpression) {
                org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = ((QualifiedAllocationExpression) expression).anonymousType;
                if (typeDeclaration != null) {
                    AnonymousClassDeclaration anonymousClassDeclaration = new AnonymousClassDeclaration(this.ast);
                    int retrieveStartBlockPosition = retrieveStartBlockPosition(typeDeclaration.sourceEnd, typeDeclaration.bodyEnd);
                    int retrieveRightBrace = retrieveRightBrace(typeDeclaration.bodyEnd + 1, i12);
                    if (retrieveRightBrace == -1) {
                        retrieveRightBrace = typeDeclaration.bodyEnd;
                    }
                    anonymousClassDeclaration.setSourceRange(retrieveStartBlockPosition, (retrieveRightBrace - retrieveStartBlockPosition) + 1);
                    enumConstantDeclaration.setAnonymousClassDeclaration(anonymousClassDeclaration);
                    buildBodyDeclarations(typeDeclaration, anonymousClassDeclaration);
                    if (this.resolveBindings) {
                        recordNodes(anonymousClassDeclaration, typeDeclaration);
                        anonymousClassDeclaration.resolveBinding();
                    }
                    enumConstantDeclaration.setSourceRange(i11, (retrieveRightBrace - i11) + 1);
                }
            } else {
                enumConstantDeclaration.setSourceRange(i11, (i12 - i11) + 1);
            }
            org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = ((AllocationExpression) expression).arguments;
            if (expressionArr != null) {
                for (org.eclipse.jdt.internal.compiler.ast.Expression expression2 : expressionArr) {
                    enumConstantDeclaration.arguments().add(convert(expression2));
                }
            }
        } else {
            enumConstantDeclaration.setSourceRange(i11, (i12 - i11) + 1);
        }
        setModifiers(enumConstantDeclaration, fieldDeclaration);
        if (this.resolveBindings) {
            recordNodes(enumConstantDeclaration, fieldDeclaration);
            recordNodes(simpleName, fieldDeclaration);
            enumConstantDeclaration.resolveVariable();
        }
        convert(fieldDeclaration.javadoc, enumConstantDeclaration);
        return enumConstantDeclaration;
    }

    public Expression convert(EqualExpression equalExpression) {
        InfixExpression infixExpression = new InfixExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(infixExpression, equalExpression);
        }
        Expression convert = convert(equalExpression.left);
        infixExpression.setLeftOperand(convert);
        infixExpression.setRightOperand(convert(equalExpression.right));
        setInfixSourcePositions(infixExpression, convert.getStartPosition());
        int i10 = (equalExpression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6;
        if (i10 == 18) {
            infixExpression.setOperator(InfixExpression.Operator.EQUALS);
        } else if (i10 == 29) {
            infixExpression.setOperator(InfixExpression.Operator.NOT_EQUALS);
        }
        return infixExpression;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.SuperConstructorInvocation] */
    /* JADX WARN: Type inference failed for: r1v2, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.Statement] */
    /* JADX WARN: Type inference failed for: r1v4, types: [org.eclipse.jdt.core.dom.ConstructorInvocation, org.eclipse.jdt.core.dom.ASTNode] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.eclipse.jdt.core.dom.ASTConverter] */
    public Statement convert(ExplicitConstructorCall explicitConstructorCall) {
        ?? superConstructorInvocation;
        int i10 = explicitConstructorCall.sourceStart;
        int i11 = 0;
        if (!explicitConstructorCall.isSuperAccess() && !explicitConstructorCall.isSuper()) {
            superConstructorInvocation = new ConstructorInvocation(this.ast);
            org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = explicitConstructorCall.arguments;
            if (expressionArr != null) {
                for (org.eclipse.jdt.internal.compiler.ast.Expression expression : expressionArr) {
                    superConstructorInvocation.arguments().add(convert(expression));
                }
            }
            TypeReference[] typeReferenceArr = explicitConstructorCall.typeArguments;
            if (typeReferenceArr != null) {
                int i12 = explicitConstructorCall.typeArgumentsSourceStart;
                if (i10 > i12) {
                    i10 = i12;
                }
                if (this.ast.apiLevel != 2) {
                    int length = typeReferenceArr.length;
                    while (i11 < length) {
                        superConstructorInvocation.typeArguments().add(convertType(explicitConstructorCall.typeArguments[i11]));
                        i11++;
                    }
                } else {
                    superConstructorInvocation.setFlags(superConstructorInvocation.getFlags() | 1);
                }
            }
            if (explicitConstructorCall.qualification != null) {
                superConstructorInvocation.setFlags(superConstructorInvocation.getFlags() | 1);
            }
        } else {
            superConstructorInvocation = new SuperConstructorInvocation(this.ast);
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = explicitConstructorCall.qualification;
            if (expression2 != null) {
                superConstructorInvocation.setExpression(convert(expression2));
            }
            org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr2 = explicitConstructorCall.arguments;
            if (expressionArr2 != null) {
                for (org.eclipse.jdt.internal.compiler.ast.Expression expression3 : expressionArr2) {
                    superConstructorInvocation.arguments().add(convert(expression3));
                }
            }
            TypeReference[] typeReferenceArr2 = explicitConstructorCall.typeArguments;
            if (typeReferenceArr2 != null) {
                int i13 = explicitConstructorCall.typeArgumentsSourceStart;
                if (i10 > i13) {
                    i10 = i13;
                }
                if (this.ast.apiLevel != 2) {
                    int length2 = typeReferenceArr2.length;
                    while (i11 < length2) {
                        superConstructorInvocation.typeArguments().add(convertType(explicitConstructorCall.typeArguments[i11]));
                        i11++;
                    }
                } else {
                    superConstructorInvocation.setFlags(superConstructorInvocation.getFlags() | 1);
                }
            }
        }
        superConstructorInvocation.setSourceRange(i10, (explicitConstructorCall.sourceEnd - i10) + 1);
        if (this.resolveBindings) {
            recordNodes(superConstructorInvocation, explicitConstructorCall);
        }
        return superConstructorInvocation;
    }

    public Expression convert(org.eclipse.jdt.internal.compiler.ast.Expression expression) {
        if ((expression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) != 0) {
            return convertToParenthesizedExpression(expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Annotation) {
            return convert((org.eclipse.jdt.internal.compiler.ast.Annotation) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.CastExpression) {
            return convert((org.eclipse.jdt.internal.compiler.ast.CastExpression) expression);
        }
        if (expression instanceof ArrayAllocationExpression) {
            return convert((ArrayAllocationExpression) expression);
        }
        if (expression instanceof QualifiedAllocationExpression) {
            return convert((QualifiedAllocationExpression) expression);
        }
        if (expression instanceof AllocationExpression) {
            return convert((AllocationExpression) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.ArrayInitializer) {
            return convert((org.eclipse.jdt.internal.compiler.ast.ArrayInitializer) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.PrefixExpression) {
            return convert((org.eclipse.jdt.internal.compiler.ast.PrefixExpression) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.PostfixExpression) {
            return convert((org.eclipse.jdt.internal.compiler.ast.PostfixExpression) expression);
        }
        if (expression instanceof CompoundAssignment) {
            return convert((CompoundAssignment) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.Assignment) {
            return convert((org.eclipse.jdt.internal.compiler.ast.Assignment) expression);
        }
        if (expression instanceof ClassLiteralAccess) {
            return convert((ClassLiteralAccess) expression);
        }
        if (expression instanceof FalseLiteral) {
            return convert((FalseLiteral) expression);
        }
        if (expression instanceof TrueLiteral) {
            return convert((TrueLiteral) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.NullLiteral) {
            return convert((org.eclipse.jdt.internal.compiler.ast.NullLiteral) expression);
        }
        if (expression instanceof CharLiteral) {
            return convert((CharLiteral) expression);
        }
        if (expression instanceof DoubleLiteral) {
            return convert((DoubleLiteral) expression);
        }
        if (expression instanceof FloatLiteral) {
            return convert((FloatLiteral) expression);
        }
        if (expression instanceof IntLiteralMinValue) {
            return convert((IntLiteralMinValue) expression);
        }
        if (expression instanceof IntLiteral) {
            return convert((IntLiteral) expression);
        }
        if (expression instanceof LongLiteralMinValue) {
            return convert((LongLiteralMinValue) expression);
        }
        if (expression instanceof LongLiteral) {
            return convert((LongLiteral) expression);
        }
        if (expression instanceof StringLiteralConcatenation) {
            return convert((StringLiteralConcatenation) expression);
        }
        if (expression instanceof ExtendedStringLiteral) {
            return convert((ExtendedStringLiteral) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.StringLiteral) {
            return convert((org.eclipse.jdt.internal.compiler.ast.StringLiteral) expression);
        }
        if (expression instanceof AND_AND_Expression) {
            return convert((AND_AND_Expression) expression);
        }
        if (expression instanceof OR_OR_Expression) {
            return convert((OR_OR_Expression) expression);
        }
        if (expression instanceof EqualExpression) {
            return convert((EqualExpression) expression);
        }
        if (expression instanceof BinaryExpression) {
            return convert((BinaryExpression) expression);
        }
        if (expression instanceof InstanceOfExpression) {
            return convert((InstanceOfExpression) expression);
        }
        if (expression instanceof UnaryExpression) {
            return convert((UnaryExpression) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.ConditionalExpression) {
            return convert((org.eclipse.jdt.internal.compiler.ast.ConditionalExpression) expression);
        }
        if (expression instanceof MessageSend) {
            return convert((MessageSend) expression);
        }
        if (expression instanceof Reference) {
            return convert((Reference) expression);
        }
        if (expression instanceof TypeReference) {
            return convert((TypeReference) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.LambdaExpression) {
            return convert((org.eclipse.jdt.internal.compiler.ast.LambdaExpression) expression);
        }
        if (expression instanceof ReferenceExpression) {
            return convert((ReferenceExpression) expression);
        }
        if (expression instanceof org.eclipse.jdt.internal.compiler.ast.SwitchExpression) {
            return convert((org.eclipse.jdt.internal.compiler.ast.SwitchExpression) expression);
        }
        return null;
    }

    public StringLiteral convert(ExtendedStringLiteral extendedStringLiteral) {
        extendedStringLiteral.computeConstant();
        StringLiteral stringLiteral = new StringLiteral(this.ast);
        if (this.resolveBindings) {
            recordNodes(stringLiteral, extendedStringLiteral);
        }
        stringLiteral.setLiteralValue(extendedStringLiteral.constant.stringValue());
        int i10 = extendedStringLiteral.sourceStart;
        stringLiteral.setSourceRange(i10, (extendedStringLiteral.sourceEnd - i10) + 1);
        return stringLiteral;
    }

    public BooleanLiteral convert(FalseLiteral falseLiteral) {
        BooleanLiteral booleanLiteral = new BooleanLiteral(this.ast);
        booleanLiteral.setBooleanValue(false);
        if (this.resolveBindings) {
            recordNodes(booleanLiteral, falseLiteral);
        }
        int i10 = falseLiteral.sourceStart;
        booleanLiteral.setSourceRange(i10, (falseLiteral.sourceEnd - i10) + 1);
        return booleanLiteral;
    }

    public Expression convert(FieldReference fieldReference) {
        if (fieldReference.receiver.isSuper()) {
            SuperFieldAccess superFieldAccess = new SuperFieldAccess(this.ast);
            if (this.resolveBindings) {
                recordNodes(superFieldAccess, fieldReference);
            }
            org.eclipse.jdt.internal.compiler.ast.Expression expression = fieldReference.receiver;
            if (expression instanceof QualifiedSuperReference) {
                Name convert = convert((QualifiedSuperReference) expression);
                superFieldAccess.setQualifier(convert);
                if (this.resolveBindings) {
                    recordNodes(convert, fieldReference.receiver);
                }
            }
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(fieldReference.token));
            long j10 = fieldReference.nameSourcePosition;
            int i10 = (int) (j10 >>> 32);
            simpleName.setSourceRange(i10, (((int) j10) - i10) + 1);
            superFieldAccess.setName(simpleName);
            if (this.resolveBindings) {
                recordNodes(simpleName, fieldReference);
            }
            int i11 = fieldReference.receiver.sourceStart;
            superFieldAccess.setSourceRange(i11, (fieldReference.sourceEnd - i11) + 1);
            return superFieldAccess;
        }
        FieldAccess fieldAccess = new FieldAccess(this.ast);
        if (this.resolveBindings) {
            recordNodes(fieldAccess, fieldReference);
        }
        Expression convert2 = convert(fieldReference.receiver);
        fieldAccess.setExpression(convert2);
        SimpleName simpleName2 = new SimpleName(this.ast);
        simpleName2.internalSetIdentifier(new String(fieldReference.token));
        long j11 = fieldReference.nameSourcePosition;
        int i12 = (int) (j11 >>> 32);
        simpleName2.setSourceRange(i12, (((int) j11) - i12) + 1);
        fieldAccess.setName(simpleName2);
        if (this.resolveBindings) {
            recordNodes(simpleName2, fieldReference);
        }
        fieldAccess.setSourceRange(convert2.getStartPosition(), (fieldReference.sourceEnd - convert2.getStartPosition()) + 1);
        return fieldAccess;
    }

    public NumberLiteral convert(FloatLiteral floatLiteral) {
        int i10 = floatLiteral.sourceEnd;
        int i11 = floatLiteral.sourceStart;
        int i12 = (i10 - i11) + 1;
        NumberLiteral numberLiteral = new NumberLiteral(this.ast);
        numberLiteral.internalSetToken(new String(this.compilationUnitSource, i11, i12));
        if (this.resolveBindings) {
            recordNodes(numberLiteral, floatLiteral);
        }
        numberLiteral.setSourceRange(i11, i12);
        removeLeadingAndTrailingCommentsFromLiteral(numberLiteral);
        return numberLiteral;
    }

    public Statement convert(ForeachStatement foreachStatement) {
        if (this.ast.apiLevel != 2) {
            EnhancedForStatement enhancedForStatement = new EnhancedForStatement(this.ast);
            enhancedForStatement.setParameter(convertToSingleVariableDeclaration(foreachStatement.elementVariable));
            org.eclipse.jdt.internal.compiler.ast.Expression expression = foreachStatement.collection;
            if (expression == null) {
                return null;
            }
            enhancedForStatement.setExpression(convert(expression));
            Statement convert = convert(foreachStatement.action);
            if (convert == null) {
                return null;
            }
            enhancedForStatement.setBody(convert);
            int i10 = foreachStatement.sourceStart;
            enhancedForStatement.setSourceRange(i10, (foreachStatement.sourceEnd - i10) + 1);
            return enhancedForStatement;
        }
        return createFakeEmptyStatement(foreachStatement);
    }

    public ForStatement convert(org.eclipse.jdt.internal.compiler.ast.ForStatement forStatement) {
        ForStatement forStatement2 = new ForStatement(this.ast);
        int i10 = forStatement.sourceStart;
        forStatement2.setSourceRange(i10, (forStatement.sourceEnd - i10) + 1);
        org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr = forStatement.initializations;
        if (statementArr != null) {
            org.eclipse.jdt.internal.compiler.ast.Statement statement = statementArr[0];
            if (statement instanceof LocalDeclaration) {
                VariableDeclarationExpression convertToVariableDeclarationExpression = convertToVariableDeclarationExpression((LocalDeclaration) statement);
                int length = statementArr.length;
                for (int i11 = 1; i11 < length; i11++) {
                    convertToVariableDeclarationExpression.fragments().add(convertToVariableDeclarationFragment((LocalDeclaration) statementArr[i11]));
                }
                if (length != 1) {
                    int startPosition = convertToVariableDeclarationExpression.getStartPosition();
                    convertToVariableDeclarationExpression.setSourceRange(startPosition, (((LocalDeclaration) statementArr[length - 1]).declarationSourceEnd - startPosition) + 1);
                }
                forStatement2.initializers().add(convertToVariableDeclarationExpression);
            } else {
                for (org.eclipse.jdt.internal.compiler.ast.Statement statement2 : statementArr) {
                    Expression convertToExpression = convertToExpression(statement2);
                    if (convertToExpression != null) {
                        forStatement2.initializers().add(convertToExpression);
                    } else {
                        forStatement2.setFlags(forStatement2.getFlags() | 1);
                    }
                }
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Expression expression = forStatement.condition;
        if (expression != null) {
            forStatement2.setExpression(convert(expression));
        }
        org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr2 = forStatement.increments;
        if (statementArr2 != null) {
            for (org.eclipse.jdt.internal.compiler.ast.Statement statement3 : statementArr2) {
                forStatement2.updaters().add(convertToExpression(statement3));
            }
        }
        Statement convert = convert(forStatement.action);
        if (convert == null) {
            return null;
        }
        forStatement2.setBody(convert);
        return forStatement2;
    }

    public IfStatement convert(org.eclipse.jdt.internal.compiler.ast.IfStatement ifStatement) {
        Statement convert;
        IfStatement ifStatement2 = new IfStatement(this.ast);
        int i10 = ifStatement.sourceStart;
        ifStatement2.setSourceRange(i10, (ifStatement.sourceEnd - i10) + 1);
        ifStatement2.setExpression(convert(ifStatement.condition));
        Statement convert2 = convert(ifStatement.thenStatement);
        if (convert2 == null) {
            return null;
        }
        ifStatement2.setThenStatement(convert2);
        org.eclipse.jdt.internal.compiler.ast.Statement statement = ifStatement.elseStatement;
        if (statement != null && (convert = convert(statement)) != null) {
            ifStatement2.setElseStatement(convert);
        }
        return ifStatement2;
    }

    public InstanceofExpression convert(InstanceOfExpression instanceOfExpression) {
        InstanceofExpression instanceofExpression = new InstanceofExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(instanceofExpression, instanceOfExpression);
        }
        Expression convert = convert(instanceOfExpression.expression);
        instanceofExpression.setLeftOperand(convert);
        instanceofExpression.setRightOperand(convertType(instanceOfExpression.type));
        int startPosition = convert.getStartPosition();
        instanceofExpression.setSourceRange(startPosition, (((r4.getStartPosition() + r4.getLength()) - 1) - startPosition) + 1);
        return instanceofExpression;
    }

    public NumberLiteral convert(IntLiteral intLiteral) {
        int i10 = intLiteral.sourceEnd;
        int i11 = intLiteral.sourceStart;
        int i12 = (i10 - i11) + 1;
        NumberLiteral numberLiteral = new NumberLiteral(this.ast);
        numberLiteral.internalSetToken(new String(this.compilationUnitSource, i11, i12));
        if (this.resolveBindings) {
            recordNodes(numberLiteral, intLiteral);
        }
        numberLiteral.setSourceRange(i11, i12);
        removeLeadingAndTrailingCommentsFromLiteral(numberLiteral);
        return numberLiteral;
    }

    public NumberLiteral convert(IntLiteralMinValue intLiteralMinValue) {
        int i10 = intLiteralMinValue.sourceEnd;
        int i11 = intLiteralMinValue.sourceStart;
        int i12 = (i10 - i11) + 1;
        NumberLiteral numberLiteral = new NumberLiteral(this.ast);
        numberLiteral.internalSetToken(new String(this.compilationUnitSource, i11, i12));
        if (this.resolveBindings) {
            recordNodes(numberLiteral, intLiteralMinValue);
        }
        numberLiteral.setSourceRange(i11, i12);
        removeLeadingAndTrailingCommentsFromLiteral(numberLiteral);
        return numberLiteral;
    }

    public void convert(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, IGetJavaDoc iGetJavaDoc, ISetJavaDoc iSetJavaDoc) {
        Javadoc convert;
        if (iGetJavaDoc.getJavaDoc() != null || (convert = convert(javadoc)) == null) {
            return;
        }
        iSetJavaDoc.setJavadoc(convert);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Javadoc convert(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc) {
        if (javadoc != null) {
            DefaultCommentMapper defaultCommentMapper = this.commentMapper;
            if (defaultCommentMapper == null || !defaultCommentMapper.hasSameTable(this.commentsTable)) {
                this.commentMapper = new DefaultCommentMapper(this.commentsTable);
            }
            Comment comment = this.commentMapper.getComment(javadoc.sourceStart);
            if (comment != null && comment.isDocComment() && comment.getParent() == null) {
                Javadoc javadoc2 = (Javadoc) comment;
                if (!this.resolveBindings) {
                    return javadoc2;
                }
                recordNodes(javadoc2, javadoc);
                ListIterator listIterator = javadoc2.tags().listIterator();
                while (listIterator.hasNext()) {
                    recordNodes(javadoc, (TagElement) listIterator.next());
                }
                return javadoc2;
            }
        }
        return null;
    }

    public void convert(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, final BodyDeclaration bodyDeclaration) {
        bodyDeclaration.getClass();
        convert(javadoc, new IGetJavaDoc() {
            @Override
            public final Javadoc getJavaDoc() {
                return BodyDeclaration.this.getJavadoc();
            }
        }, new ISetJavaDoc() {
            @Override
            public final void setJavadoc(Javadoc javadoc2) {
                BodyDeclaration.this.setJavadoc(javadoc2);
            }
        });
    }

    public void convert(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, final ModuleDeclaration moduleDeclaration) {
        moduleDeclaration.getClass();
        convert(javadoc, new IGetJavaDoc() {
            @Override
            public final Javadoc getJavaDoc() {
                return ModuleDeclaration.this.getJavadoc();
            }
        }, new ISetJavaDoc() {
            @Override
            public final void setJavadoc(Javadoc javadoc2) {
                ModuleDeclaration.this.setJavadoc(javadoc2);
            }
        });
    }

    public void convert(org.eclipse.jdt.internal.compiler.ast.Javadoc javadoc, final PackageDeclaration packageDeclaration) {
        if (this.ast.apiLevel == 2) {
            return;
        }
        packageDeclaration.getClass();
        convert(javadoc, new IGetJavaDoc() {
            @Override
            public final Javadoc getJavaDoc() {
                return PackageDeclaration.this.getJavadoc();
            }
        }, new ISetJavaDoc() {
            @Override
            public final void setJavadoc(Javadoc javadoc2) {
                PackageDeclaration.this.setJavadoc(javadoc2);
            }
        });
    }

    public LabeledStatement convert(org.eclipse.jdt.internal.compiler.ast.LabeledStatement labeledStatement) {
        LabeledStatement labeledStatement2 = new LabeledStatement(this.ast);
        int i10 = labeledStatement.sourceStart;
        labeledStatement2.setSourceRange(i10, (labeledStatement.sourceEnd - i10) + 1);
        Statement convert = convert(labeledStatement.statement);
        if (convert == null) {
            return null;
        }
        labeledStatement2.setBody(convert);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(labeledStatement.label));
        simpleName.setSourceRange(i10, (labeledStatement.labelEnd - i10) + 1);
        labeledStatement2.setLabel(simpleName);
        return labeledStatement2;
    }

    public NumberLiteral convert(LongLiteral longLiteral) {
        int i10 = longLiteral.sourceEnd;
        int i11 = longLiteral.sourceStart;
        int i12 = (i10 - i11) + 1;
        NumberLiteral numberLiteral = new NumberLiteral(this.ast);
        numberLiteral.internalSetToken(new String(this.compilationUnitSource, i11, i12));
        if (this.resolveBindings) {
            recordNodes(numberLiteral, longLiteral);
        }
        numberLiteral.setSourceRange(i11, i12);
        removeLeadingAndTrailingCommentsFromLiteral(numberLiteral);
        return numberLiteral;
    }

    public NumberLiteral convert(LongLiteralMinValue longLiteralMinValue) {
        int i10 = longLiteralMinValue.sourceEnd;
        int i11 = longLiteralMinValue.sourceStart;
        int i12 = (i10 - i11) + 1;
        NumberLiteral numberLiteral = new NumberLiteral(this.ast);
        numberLiteral.internalSetToken(new String(this.compilationUnitSource, i11, i12));
        if (this.resolveBindings) {
            recordNodes(numberLiteral, longLiteralMinValue);
        }
        numberLiteral.setSourceRange(i11, i12);
        removeLeadingAndTrailingCommentsFromLiteral(numberLiteral);
        return numberLiteral;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.eclipse.jdt.core.dom.ASTConverter] */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.MethodInvocation] */
    /* JADX WARN: Type inference failed for: r1v2, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.Expression] */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.SuperMethodInvocation] */
    public Expression convert(MessageSend messageSend) {
        ?? methodInvocation;
        Expression convert;
        int i10 = messageSend.sourceStart;
        int i11 = 0;
        if (messageSend.isSuperAccess()) {
            methodInvocation = new SuperMethodInvocation(this.ast);
            if (this.resolveBindings) {
                recordNodes(methodInvocation, messageSend);
            }
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(messageSend.selector));
            long j10 = messageSend.nameSourcePosition;
            int i12 = (int) (j10 >>> 32);
            simpleName.setSourceRange(i12, (((int) j10) - i12) + 1);
            if (this.resolveBindings) {
                recordNodes(simpleName, messageSend);
            }
            methodInvocation.setName(simpleName);
            org.eclipse.jdt.internal.compiler.ast.Expression expression = messageSend.receiver;
            if (expression instanceof QualifiedSuperReference) {
                Name convert2 = convert((QualifiedSuperReference) expression);
                methodInvocation.setQualifier(convert2);
                if (this.resolveBindings) {
                    recordNodes(convert2, messageSend.receiver);
                }
                if (convert2 != null) {
                    i10 = convert2.getStartPosition();
                }
            }
            org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = messageSend.arguments;
            if (expressionArr != null) {
                int length = expressionArr.length;
                for (int i13 = 0; i13 < length; i13++) {
                    Expression convert3 = convert(expressionArr[i13]);
                    if (this.resolveBindings) {
                        recordNodes(convert3, expressionArr[i13]);
                    }
                    methodInvocation.arguments().add(convert3);
                }
            }
            TypeReference[] typeReferenceArr = messageSend.typeArguments;
            if (typeReferenceArr != null) {
                if (this.ast.apiLevel != 2) {
                    int length2 = typeReferenceArr.length;
                    while (i11 < length2) {
                        methodInvocation.typeArguments().add(convertType(typeReferenceArr[i11]));
                        i11++;
                    }
                } else {
                    methodInvocation.setFlags(methodInvocation.getFlags() | 1);
                }
            }
        } else {
            methodInvocation = new MethodInvocation(this.ast);
            if (this.resolveBindings) {
                recordNodes(methodInvocation, messageSend);
            }
            SimpleName simpleName2 = new SimpleName(this.ast);
            simpleName2.internalSetIdentifier(new String(messageSend.selector));
            long j11 = messageSend.nameSourcePosition;
            int i14 = (int) (j11 >>> 32);
            simpleName2.setSourceRange(i14, (((int) j11) - i14) + 1);
            methodInvocation.setName(simpleName2);
            if (this.resolveBindings) {
                recordNodes(simpleName2, messageSend);
            }
            org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr2 = messageSend.arguments;
            if (expressionArr2 != null) {
                int length3 = expressionArr2.length;
                for (int i15 = 0; i15 < length3; i15++) {
                    Expression convert4 = convert(expressionArr2[i15]);
                    if (this.resolveBindings) {
                        recordNodes(convert4, expressionArr2[i15]);
                    }
                    methodInvocation.arguments().add(convert4);
                }
            }
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = messageSend.receiver;
            if (expression2 instanceof MessageSend) {
                if ((expression2.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) != 0) {
                    convert = convertToParenthesizedExpression(expression2);
                } else {
                    convert = convert((MessageSend) expression2);
                }
            } else {
                convert = convert(expression2);
            }
            if ((convert instanceof Name) && this.resolveBindings) {
                recordNodes(convert, expression2);
            }
            methodInvocation.setExpression(convert);
            if (convert != null) {
                i10 = convert.getStartPosition();
            }
            TypeReference[] typeReferenceArr2 = messageSend.typeArguments;
            if (typeReferenceArr2 != null) {
                if (this.ast.apiLevel != 2) {
                    int length4 = typeReferenceArr2.length;
                    while (i11 < length4) {
                        methodInvocation.typeArguments().add(convertType(typeReferenceArr2[i11]));
                        i11++;
                    }
                } else {
                    methodInvocation.setFlags(methodInvocation.getFlags() | 1);
                }
            }
        }
        methodInvocation.setSourceRange(i10, (messageSend.sourceEnd - i10) + 1);
        return methodInvocation;
    }

    public Expression convert(org.eclipse.jdt.internal.compiler.ast.LambdaExpression lambdaExpression) {
        if (this.ast.apiLevel < 8) {
            return createFakeNullLiteral(lambdaExpression);
        }
        LambdaExpression lambdaExpression2 = new LambdaExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(lambdaExpression2, lambdaExpression);
        }
        Argument[] arguments = lambdaExpression.arguments();
        if (arguments != null) {
            for (Argument argument : arguments) {
                if (argument.type == null) {
                    VariableDeclarationFragment variableDeclarationFragment = new VariableDeclarationFragment(this.ast);
                    SimpleName simpleName = new SimpleName(this.ast);
                    simpleName.internalSetIdentifier(new String(argument.name));
                    int i10 = argument.sourceStart;
                    int i11 = (argument.sourceEnd - i10) + 1;
                    simpleName.setSourceRange(i10, i11);
                    if (this.resolveBindings) {
                        recordNodes(simpleName, argument);
                        recordNodes(variableDeclarationFragment, argument);
                        variableDeclarationFragment.resolveBinding();
                    }
                    variableDeclarationFragment.setName(simpleName);
                    variableDeclarationFragment.setSourceRange(i10, i11);
                    lambdaExpression2.parameters().add(variableDeclarationFragment);
                } else {
                    lambdaExpression2.parameters().add(convert(argument));
                }
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Statement body = lambdaExpression.body();
        if (body instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression) body;
            if (expression.isTrulyExpression()) {
                lambdaExpression2.setBody(convert(expression));
                int i12 = lambdaExpression.sourceStart;
                lambdaExpression2.setSourceRange(i12, (lambdaExpression.sourceEnd - i12) + 1);
                lambdaExpression2.setParentheses(lambdaExpression.hasParentheses);
                return lambdaExpression2;
            }
        }
        lambdaExpression2.setBody(convert((org.eclipse.jdt.internal.compiler.ast.Block) body));
        int i122 = lambdaExpression.sourceStart;
        lambdaExpression2.setSourceRange(i122, (lambdaExpression.sourceEnd - i122) + 1);
        lambdaExpression2.setParentheses(lambdaExpression.hasParentheses);
        return lambdaExpression2;
    }

    public MarkerAnnotation convert(org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation markerAnnotation) {
        MarkerAnnotation markerAnnotation2 = new MarkerAnnotation(this.ast);
        setTypeNameForAnnotation(markerAnnotation, markerAnnotation2);
        int i10 = markerAnnotation.sourceStart;
        markerAnnotation2.setSourceRange(i10, (markerAnnotation.declarationSourceEnd - i10) + 1);
        if (this.resolveBindings) {
            recordNodes(markerAnnotation2, markerAnnotation);
            markerAnnotation2.resolveAnnotationBinding();
        }
        return markerAnnotation2;
    }

    public MemberValuePair convert(org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair) {
        MemberValuePair memberValuePair2 = new MemberValuePair(this.ast);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(memberValuePair.name));
        int i10 = memberValuePair.sourceStart;
        simpleName.setSourceRange(i10, (memberValuePair.sourceEnd - i10) + 1);
        memberValuePair2.setName(simpleName);
        memberValuePair2.setValue(convert(memberValuePair.value));
        int i11 = memberValuePair.sourceStart;
        memberValuePair2.setSourceRange(i11, (((r2.getStartPosition() + r2.getLength()) - 1) - i11) + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression expression = memberValuePair.value;
        if ((expression instanceof SingleNameReference) && ((SingleNameReference) expression).token == RecoveryScanner.FAKE_IDENTIFIER) {
            memberValuePair2.setFlags(memberValuePair2.getFlags() | 8);
        }
        if (this.resolveBindings) {
            recordNodes(simpleName, memberValuePair);
            recordNodes(memberValuePair2, memberValuePair);
        }
        return memberValuePair2;
    }

    public Name convert(NameReference nameReference) {
        if (nameReference instanceof QualifiedNameReference) {
            return convert((QualifiedNameReference) nameReference);
        }
        return convert((SingleNameReference) nameReference);
    }

    public InfixExpression convert(StringLiteralConcatenation stringLiteralConcatenation) {
        stringLiteralConcatenation.computeConstant();
        InfixExpression infixExpression = new InfixExpression(this.ast);
        infixExpression.setOperator(InfixExpression.Operator.PLUS);
        org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = stringLiteralConcatenation.literals;
        infixExpression.setLeftOperand(convert(expressionArr[0]));
        infixExpression.setRightOperand(convert(expressionArr[1]));
        for (int i10 = 2; i10 < stringLiteralConcatenation.counter; i10++) {
            infixExpression.extendedOperands().add(convert(expressionArr[i10]));
        }
        if (this.resolveBindings) {
            recordNodes(infixExpression, stringLiteralConcatenation);
        }
        int i11 = stringLiteralConcatenation.sourceStart;
        infixExpression.setSourceRange(i11, (stringLiteralConcatenation.sourceEnd - i11) + 1);
        return infixExpression;
    }

    public NormalAnnotation convert(org.eclipse.jdt.internal.compiler.ast.NormalAnnotation normalAnnotation) {
        NormalAnnotation normalAnnotation2 = new NormalAnnotation(this.ast);
        setTypeNameForAnnotation(normalAnnotation, normalAnnotation2);
        int i10 = normalAnnotation.sourceStart;
        int i11 = normalAnnotation.declarationSourceEnd;
        org.eclipse.jdt.internal.compiler.ast.MemberValuePair[] memberValuePairArr = normalAnnotation.memberValuePairs;
        if (memberValuePairArr != null) {
            for (org.eclipse.jdt.internal.compiler.ast.MemberValuePair memberValuePair : memberValuePairArr) {
                MemberValuePair convert = convert(memberValuePair);
                if (i11 == (convert.getStartPosition() + convert.getLength()) - 1) {
                    normalAnnotation2.setFlags(normalAnnotation2.getFlags() | 8);
                }
                normalAnnotation2.values().add(convert);
            }
        }
        normalAnnotation2.setSourceRange(i10, (i11 - i10) + 1);
        if (this.resolveBindings) {
            recordNodes(normalAnnotation2, normalAnnotation);
            normalAnnotation2.resolveAnnotationBinding();
        }
        return normalAnnotation2;
    }

    public NullLiteral convert(org.eclipse.jdt.internal.compiler.ast.NullLiteral nullLiteral) {
        NullLiteral nullLiteral2 = new NullLiteral(this.ast);
        if (this.resolveBindings) {
            recordNodes(nullLiteral2, nullLiteral);
        }
        int i10 = nullLiteral.sourceStart;
        nullLiteral2.setSourceRange(i10, (nullLiteral.sourceEnd - i10) + 1);
        return nullLiteral2;
    }

    public Expression convert(OR_OR_Expression oR_OR_Expression) {
        int i10;
        InfixExpression infixExpression = new InfixExpression(this.ast);
        InfixExpression.Operator operator = InfixExpression.Operator.CONDITIONAL_OR;
        infixExpression.setOperator(operator);
        if (this.resolveBindings) {
            recordNodes(infixExpression, oR_OR_Expression);
        }
        int i11 = (oR_OR_Expression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6;
        org.eclipse.jdt.internal.compiler.ast.Expression expression = oR_OR_Expression.left;
        if ((expression instanceof BinaryExpression) && (expression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0) {
            infixExpression.extendedOperands().add(convert(oR_OR_Expression.right));
            org.eclipse.jdt.internal.compiler.ast.Expression expression2 = oR_OR_Expression.left;
            do {
                org.eclipse.jdt.internal.compiler.ast.Expression expression3 = ((BinaryExpression) expression2).right;
                int i12 = expression2.bits;
                if (((i12 & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6) == i11 || (i12 & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) != 0) {
                    if (expression3 instanceof BinaryExpression) {
                        int i13 = expression3.bits;
                        if (((i13 & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6) != i11 && (i13 & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0) {
                        }
                    }
                    infixExpression.extendedOperands().add(0, convert(expression3));
                    expression2 = ((BinaryExpression) expression2).left;
                    if (!(expression2 instanceof BinaryExpression)) {
                        break;
                    }
                }
                List extendedOperands = infixExpression.extendedOperands();
                InfixExpression infixExpression2 = new InfixExpression(this.ast);
                if (this.resolveBindings) {
                    recordNodes(infixExpression2, oR_OR_Expression);
                }
                infixExpression2.setOperator(getOperatorFor(i11));
                Expression convert = convert(expression2);
                infixExpression2.setLeftOperand(convert);
                infixExpression2.setSourceRange(convert.getStartPosition(), convert.getLength());
                int size = extendedOperands.size();
                int i14 = 0;
                while (true) {
                    i10 = size - 1;
                    if (i14 >= i10) {
                        break;
                    }
                    InfixExpression infixExpression3 = new InfixExpression(this.ast);
                    if (this.resolveBindings) {
                        recordNodes(infixExpression3, oR_OR_Expression);
                    }
                    infixExpression3.setLeftOperand(infixExpression2);
                    infixExpression3.setOperator(getOperatorFor(i11));
                    infixExpression3.setSourceRange(infixExpression2.getStartPosition(), infixExpression2.getLength());
                    i14++;
                    infixExpression2 = infixExpression3;
                }
                InfixExpression infixExpression4 = infixExpression2;
                for (int i15 = 0; i15 < size; i15++) {
                    Expression expression4 = (Expression) extendedOperands.remove(i10 - i15);
                    infixExpression4.setRightOperand(expression4);
                    int startPosition = infixExpression4.getLeftOperand().getStartPosition();
                    infixExpression4.setSourceRange(startPosition, (expression4.getStartPosition() + expression4.getLength()) - startPosition);
                    if (infixExpression4.getLeftOperand().getNodeType() == 27) {
                        infixExpression4 = (InfixExpression) infixExpression4.getLeftOperand();
                    }
                }
                setInfixSourcePositions(infixExpression2, oR_OR_Expression.sourceStart);
                if (this.resolveBindings) {
                    recordNodes(infixExpression2, oR_OR_Expression);
                }
                return infixExpression2;
            } while ((expression2.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.ParenthesizedMASK) == 0);
            infixExpression.setLeftOperand(convert(expression2));
            infixExpression.setRightOperand((Expression) infixExpression.extendedOperands().remove(0));
            setInfixSourcePositions(infixExpression, oR_OR_Expression.sourceStart);
            return infixExpression;
        }
        infixExpression.setLeftOperand(convert(expression));
        infixExpression.setRightOperand(convert(oR_OR_Expression.right));
        infixExpression.setOperator(operator);
        setInfixSourcePositions(infixExpression, oR_OR_Expression.sourceStart);
        return infixExpression;
    }

    public PostfixExpression convert(org.eclipse.jdt.internal.compiler.ast.PostfixExpression postfixExpression) {
        PostfixExpression postfixExpression2 = new PostfixExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(postfixExpression2, postfixExpression);
        }
        int i10 = postfixExpression.sourceStart;
        postfixExpression2.setSourceRange(i10, (postfixExpression.sourceEnd - i10) + 1);
        postfixExpression2.setOperand(convert(postfixExpression.lhs));
        int i11 = postfixExpression.operator;
        if (i11 == 13) {
            postfixExpression2.setOperator(PostfixExpression.Operator.DECREMENT);
        } else if (i11 == 14) {
            postfixExpression2.setOperator(PostfixExpression.Operator.INCREMENT);
        }
        return postfixExpression2;
    }

    public PrefixExpression convert(org.eclipse.jdt.internal.compiler.ast.PrefixExpression prefixExpression) {
        PrefixExpression prefixExpression2 = new PrefixExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(prefixExpression2, prefixExpression);
        }
        int i10 = prefixExpression.sourceStart;
        prefixExpression2.setSourceRange(i10, (prefixExpression.sourceEnd - i10) + 1);
        prefixExpression2.setOperand(convert(prefixExpression.lhs));
        int i11 = prefixExpression.operator;
        if (i11 == 13) {
            prefixExpression2.setOperator(PrefixExpression.Operator.DECREMENT);
        } else if (i11 == 14) {
            prefixExpression2.setOperator(PrefixExpression.Operator.INCREMENT);
        }
        return prefixExpression2;
    }

    public Expression convert(QualifiedAllocationExpression qualifiedAllocationExpression) {
        ClassInstanceCreation classInstanceCreation = new ClassInstanceCreation(this.ast);
        org.eclipse.jdt.internal.compiler.ast.Expression expression = qualifiedAllocationExpression.enclosingInstance;
        if (expression != null) {
            classInstanceCreation.setExpression(convert(expression));
        }
        if (this.ast.apiLevel != 2) {
            classInstanceCreation.setType(convertType(qualifiedAllocationExpression.type));
        } else {
            classInstanceCreation.internalSetName(convert(qualifiedAllocationExpression.type));
        }
        org.eclipse.jdt.internal.compiler.ast.Expression[] expressionArr = qualifiedAllocationExpression.arguments;
        if (expressionArr != null) {
            int length = expressionArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                Expression convert = convert(expressionArr[i10]);
                if (this.resolveBindings) {
                    recordNodes(convert, expressionArr[i10]);
                }
                classInstanceCreation.arguments().add(convert);
            }
        }
        TypeReference[] typeReferenceArr = qualifiedAllocationExpression.typeArguments;
        if (typeReferenceArr != null) {
            if (this.ast.apiLevel != 2) {
                int length2 = typeReferenceArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    classInstanceCreation.typeArguments().add(convertType(qualifiedAllocationExpression.typeArguments[i11]));
                }
            } else {
                classInstanceCreation.setFlags(classInstanceCreation.getFlags() | 1);
            }
        }
        org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration = qualifiedAllocationExpression.anonymousType;
        if (typeDeclaration != null) {
            int i12 = qualifiedAllocationExpression.sourceStart;
            classInstanceCreation.setSourceRange(i12, (typeDeclaration.bodyEnd - i12) + 1);
            AnonymousClassDeclaration anonymousClassDeclaration = new AnonymousClassDeclaration(this.ast);
            org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration2 = qualifiedAllocationExpression.anonymousType;
            int retrieveStartBlockPosition = retrieveStartBlockPosition(typeDeclaration2.sourceEnd, typeDeclaration2.bodyEnd);
            anonymousClassDeclaration.setSourceRange(retrieveStartBlockPosition, (qualifiedAllocationExpression.anonymousType.bodyEnd - retrieveStartBlockPosition) + 1);
            classInstanceCreation.setAnonymousClassDeclaration(anonymousClassDeclaration);
            buildBodyDeclarations(qualifiedAllocationExpression.anonymousType, anonymousClassDeclaration);
            if (this.resolveBindings) {
                recordNodes(classInstanceCreation, qualifiedAllocationExpression.anonymousType);
                recordNodes(anonymousClassDeclaration, qualifiedAllocationExpression.anonymousType);
                anonymousClassDeclaration.resolveBinding();
            }
            return classInstanceCreation;
        }
        int i13 = qualifiedAllocationExpression.sourceStart;
        classInstanceCreation.setSourceRange(i13, (qualifiedAllocationExpression.sourceEnd - i13) + 1);
        if (this.resolveBindings) {
            recordNodes(classInstanceCreation, qualifiedAllocationExpression);
        }
        return classInstanceCreation;
    }

    public Name convert(QualifiedNameReference qualifiedNameReference) {
        return setQualifiedNameNameAndSourceRanges(qualifiedNameReference.tokens, qualifiedNameReference.sourcePositions, qualifiedNameReference);
    }

    public Name convert(QualifiedSuperReference qualifiedSuperReference) {
        return convert(qualifiedSuperReference.qualification);
    }

    public ThisExpression convert(QualifiedThisReference qualifiedThisReference) {
        ThisExpression thisExpression = new ThisExpression(this.ast);
        int i10 = qualifiedThisReference.sourceStart;
        thisExpression.setSourceRange(i10, (qualifiedThisReference.sourceEnd - i10) + 1);
        thisExpression.setQualifier(convert(qualifiedThisReference.qualification));
        if (this.resolveBindings) {
            recordNodes(thisExpression, qualifiedThisReference);
            recordPendingThisExpressionScopeResolution(thisExpression);
        }
        return thisExpression;
    }

    public Expression convert(Reference reference) {
        if (reference instanceof NameReference) {
            return convert((NameReference) reference);
        }
        if (reference instanceof ThisReference) {
            return convert((ThisReference) reference);
        }
        if (reference instanceof ArrayReference) {
            return convert((ArrayReference) reference);
        }
        if (reference instanceof FieldReference) {
            return convert((FieldReference) reference);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Expression convert(ReferenceExpression referenceExpression) {
        List typeArguments;
        ExpressionMethodReference expressionMethodReference;
        Type type;
        if (this.ast.apiLevel < 8) {
            return createFakeNullLiteral(referenceExpression);
        }
        org.eclipse.jdt.internal.compiler.ast.Expression expression = referenceExpression.lhs;
        TypeReference[] typeReferenceArr = referenceExpression.typeArguments;
        int i10 = ((typeReferenceArr == null || typeReferenceArr.length <= 0) ? expression.sourceEnd : typeReferenceArr[typeReferenceArr.length - 1].sourceEnd) + 1;
        SimpleName simpleName = new SimpleName(this.ast);
        retrieveIdentifierAndSetPositions(i10, referenceExpression.sourceEnd, simpleName);
        simpleName.internalSetIdentifier(new String(referenceExpression.selector));
        if (this.resolveBindings) {
            recordNodes(simpleName, referenceExpression);
        }
        if (simpleName.getStartPosition() == -1 && simpleName.getIdentifier().equals(ConstantDescs.INIT_NAME)) {
            retrieveInitAndSetPositions(i10, referenceExpression.sourceEnd, simpleName);
            if (expression instanceof TypeReference) {
                type = convertType((TypeReference) expression);
            } else if (expression instanceof NameReference) {
                Name convert = convert((NameReference) expression);
                SimpleType simpleType = new SimpleType(this.ast);
                simpleType.setName(convert);
                if (this.resolveBindings) {
                    recordNodes(simpleType, expression);
                }
                int i11 = expression.sourceStart;
                simpleType.setSourceRange(i11, (expression.sourceEnd - i11) + 1);
                type = simpleType;
            } else {
                type = null;
            }
            CreationReference creationReference = new CreationReference(this.ast);
            creationReference.setType(type);
            typeArguments = creationReference.typeArguments();
            expressionMethodReference = creationReference;
        } else if (expression instanceof TypeReference) {
            TypeMethodReference typeMethodReference = new TypeMethodReference(this.ast);
            typeMethodReference.setType(convertType((TypeReference) expression));
            typeMethodReference.setName(simpleName);
            typeArguments = typeMethodReference.typeArguments();
            expressionMethodReference = typeMethodReference;
        } else if (expression instanceof SuperReference) {
            SuperMethodReference superMethodReference = new SuperMethodReference(this.ast);
            superMethodReference.setName(simpleName);
            typeArguments = superMethodReference.typeArguments();
            expressionMethodReference = superMethodReference;
        } else if (expression instanceof QualifiedSuperReference) {
            SuperMethodReference superMethodReference2 = new SuperMethodReference(this.ast);
            superMethodReference2.setQualifier(convert((QualifiedSuperReference) expression));
            superMethodReference2.setName(simpleName);
            typeArguments = superMethodReference2.typeArguments();
            expressionMethodReference = superMethodReference2;
        } else {
            ExpressionMethodReference expressionMethodReference2 = new ExpressionMethodReference(this.ast);
            expressionMethodReference2.setExpression(convert(expression));
            typeArguments = expressionMethodReference2.typeArguments();
            expressionMethodReference2.setName(simpleName);
            expressionMethodReference = expressionMethodReference2;
        }
        if (typeArguments != null && typeReferenceArr != null) {
            for (TypeReference typeReference : typeReferenceArr) {
                typeArguments.add(convertType(typeReference));
            }
        }
        if (this.resolveBindings) {
            recordNodes(expressionMethodReference, referenceExpression);
        }
        int i12 = referenceExpression.sourceStart;
        expressionMethodReference.setSourceRange(i12, (referenceExpression.sourceEnd - i12) + 1);
        return expressionMethodReference;
    }

    public ReturnStatement convert(org.eclipse.jdt.internal.compiler.ast.ReturnStatement returnStatement) {
        ReturnStatement returnStatement2 = new ReturnStatement(this.ast);
        int i10 = returnStatement.sourceStart;
        returnStatement2.setSourceRange(i10, (returnStatement.sourceEnd - i10) + 1);
        org.eclipse.jdt.internal.compiler.ast.Expression expression = returnStatement.expression;
        if (expression != null) {
            returnStatement2.setExpression(convert(expression));
        }
        return returnStatement2;
    }

    public SingleMemberAnnotation convert(org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation singleMemberAnnotation) {
        SingleMemberAnnotation singleMemberAnnotation2 = new SingleMemberAnnotation(this.ast);
        setTypeNameForAnnotation(singleMemberAnnotation, singleMemberAnnotation2);
        singleMemberAnnotation2.setValue(convert(singleMemberAnnotation.memberValue));
        int i10 = singleMemberAnnotation.sourceStart;
        singleMemberAnnotation2.setSourceRange(i10, (singleMemberAnnotation.declarationSourceEnd - i10) + 1);
        if (this.resolveBindings) {
            recordNodes(singleMemberAnnotation2, singleMemberAnnotation);
            singleMemberAnnotation2.resolveAnnotationBinding();
        }
        return singleMemberAnnotation2;
    }

    public SimpleName convert(SingleNameReference singleNameReference) {
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(singleNameReference.token));
        if (this.resolveBindings) {
            recordNodes(simpleName, singleNameReference);
        }
        int i10 = singleNameReference.sourceStart;
        simpleName.setSourceRange(i10, (singleNameReference.sourceEnd - i10) + 1);
        return simpleName;
    }

    public Statement convert(org.eclipse.jdt.internal.compiler.ast.Statement statement) {
        if (statement instanceof ForeachStatement) {
            return convert((ForeachStatement) statement);
        }
        if (statement instanceof LocalDeclaration) {
            return convertToVariableDeclarationStatement((LocalDeclaration) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.AssertStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.AssertStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.Block) {
            return convert((org.eclipse.jdt.internal.compiler.ast.Block) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.BreakStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.BreakStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ContinueStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.ContinueStatement) statement);
        }
        if (statement instanceof CaseStatement) {
            return convert((CaseStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.DoStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.DoStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.EmptyStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.EmptyStatement) statement);
        }
        if (statement instanceof ExplicitConstructorCall) {
            return convert((ExplicitConstructorCall) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ForStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.ForStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.IfStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.IfStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.LabeledStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.LabeledStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ReturnStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.ReturnStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.SwitchStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.SwitchStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.ThrowStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.ThrowStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.TryStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.TryStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) {
            ASTNode convert = convert((org.eclipse.jdt.internal.compiler.ast.TypeDeclaration) statement);
            if (convert != null && (convert instanceof TypeDeclaration)) {
                TypeDeclarationStatement typeDeclarationStatement = new TypeDeclarationStatement(this.ast);
                typeDeclarationStatement.setDeclaration((TypeDeclaration) convert);
                if (this.ast.apiLevel != 2) {
                    AbstractTypeDeclaration declaration = typeDeclarationStatement.getDeclaration();
                    typeDeclarationStatement.setSourceRange(declaration.getStartPosition(), declaration.getLength());
                } else {
                    TypeDeclaration internalGetTypeDeclaration = typeDeclarationStatement.internalGetTypeDeclaration();
                    typeDeclarationStatement.setSourceRange(internalGetTypeDeclaration.getStartPosition(), internalGetTypeDeclaration.getLength());
                }
                return typeDeclarationStatement;
            }
            return createFakeEmptyStatement(statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.WhileStatement) {
            return convert((org.eclipse.jdt.internal.compiler.ast.WhileStatement) statement);
        }
        if (statement instanceof org.eclipse.jdt.internal.compiler.ast.Expression) {
            org.eclipse.jdt.internal.compiler.ast.Expression expression = (org.eclipse.jdt.internal.compiler.ast.Expression) statement;
            if (expression.isTrulyExpression()) {
                Expression convert2 = convert(expression);
                ExpressionStatement expressionStatement = new ExpressionStatement(this.ast);
                expressionStatement.setExpression(convert2);
                int startPosition = convert2.getStartPosition();
                expressionStatement.setSourceRange(startPosition, (expression.statementEnd - startPosition) + 1);
                return expressionStatement;
            }
        }
        return createFakeEmptyStatement(statement);
    }

    public Expression convert(org.eclipse.jdt.internal.compiler.ast.StringLiteral stringLiteral) {
        if (stringLiteral instanceof StringLiteralConcatenation) {
            return convert((StringLiteralConcatenation) stringLiteral);
        }
        int i10 = stringLiteral.sourceEnd;
        int i11 = stringLiteral.sourceStart;
        int i12 = (i10 - i11) + 1;
        StringLiteral stringLiteral2 = new StringLiteral(this.ast);
        if (this.resolveBindings) {
            recordNodes(stringLiteral2, stringLiteral);
        }
        stringLiteral2.internalSetEscapedValue(new String(this.compilationUnitSource, i11, i12));
        int i13 = stringLiteral.sourceStart;
        stringLiteral2.setSourceRange(i13, (stringLiteral.sourceEnd - i13) + 1);
        return stringLiteral2;
    }

    public Expression convert(org.eclipse.jdt.internal.compiler.ast.SwitchExpression switchExpression) {
        if (this.ast.apiLevel < 12) {
            return createFakeNullLiteral(switchExpression);
        }
        SwitchExpression switchExpression2 = new SwitchExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(switchExpression2, switchExpression);
        }
        int i10 = switchExpression.sourceStart;
        switchExpression2.setSourceRange(i10, (switchExpression.sourceEnd - i10) + 1);
        switchExpression2.setExpression(convert(switchExpression.expression));
        org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr = switchExpression.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                org.eclipse.jdt.internal.compiler.ast.Statement statement = statementArr[i11];
                if (statement instanceof LocalDeclaration) {
                    checkAndAddMultipleLocalDeclaration(statementArr, i11, switchExpression2.statements());
                } else {
                    Statement convert = convert(statement);
                    if (convert != null) {
                        switchExpression2.statements().add(convert);
                    }
                }
            }
        }
        return switchExpression2;
    }

    public SwitchStatement convert(org.eclipse.jdt.internal.compiler.ast.SwitchStatement switchStatement) {
        SwitchStatement switchStatement2 = new SwitchStatement(this.ast);
        int i10 = switchStatement.sourceStart;
        switchStatement2.setSourceRange(i10, (switchStatement.sourceEnd - i10) + 1);
        switchStatement2.setExpression(convert(switchStatement.expression));
        org.eclipse.jdt.internal.compiler.ast.Statement[] statementArr = switchStatement.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                org.eclipse.jdt.internal.compiler.ast.Statement statement = statementArr[i11];
                if (statement instanceof LocalDeclaration) {
                    checkAndAddMultipleLocalDeclaration(statementArr, i11, switchStatement2.statements());
                } else {
                    Statement convert = convert(statement);
                    if (convert != null) {
                        switchStatement2.statements().add(convert);
                    }
                }
            }
        }
        return switchStatement2;
    }

    public SynchronizedStatement convert(org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement synchronizedStatement) {
        SynchronizedStatement synchronizedStatement2 = new SynchronizedStatement(this.ast);
        int i10 = synchronizedStatement.sourceStart;
        synchronizedStatement2.setSourceRange(i10, (synchronizedStatement.sourceEnd - i10) + 1);
        synchronizedStatement2.setBody(convert(synchronizedStatement.block));
        synchronizedStatement2.setExpression(convert(synchronizedStatement.expression));
        return synchronizedStatement2;
    }

    public Expression convert(ThisReference thisReference) {
        if (thisReference.isImplicitThis()) {
            return null;
        }
        if (thisReference instanceof QualifiedSuperReference) {
            return convert((QualifiedSuperReference) thisReference);
        }
        if (thisReference instanceof QualifiedThisReference) {
            return convert((QualifiedThisReference) thisReference);
        }
        ThisExpression thisExpression = new ThisExpression(this.ast);
        int i10 = thisReference.sourceStart;
        thisExpression.setSourceRange(i10, (thisReference.sourceEnd - i10) + 1);
        if (this.resolveBindings) {
            recordNodes(thisExpression, thisReference);
            recordPendingThisExpressionScopeResolution(thisExpression);
        }
        return thisExpression;
    }

    public ThrowStatement convert(org.eclipse.jdt.internal.compiler.ast.ThrowStatement throwStatement) {
        ThrowStatement throwStatement2 = new ThrowStatement(this.ast);
        int i10 = throwStatement.sourceStart;
        throwStatement2.setSourceRange(i10, (throwStatement.sourceEnd - i10) + 1);
        throwStatement2.setExpression(convert(throwStatement.exception));
        return throwStatement2;
    }

    public BooleanLiteral convert(TrueLiteral trueLiteral) {
        BooleanLiteral booleanLiteral = new BooleanLiteral(this.ast);
        booleanLiteral.setBooleanValue(true);
        if (this.resolveBindings) {
            recordNodes(booleanLiteral, trueLiteral);
        }
        int i10 = trueLiteral.sourceStart;
        booleanLiteral.setSourceRange(i10, (trueLiteral.sourceEnd - i10) + 1);
        return booleanLiteral;
    }

    public TryStatement convert(org.eclipse.jdt.internal.compiler.ast.TryStatement tryStatement) {
        TryStatement tryStatement2 = new TryStatement(this.ast);
        int i10 = tryStatement.sourceStart;
        tryStatement2.setSourceRange(i10, (tryStatement.sourceEnd - i10) + 1);
        int length = tryStatement.resources.length;
        if (length > 0) {
            int i11 = this.ast.apiLevel;
            if (i11 == 2 || i11 == 3) {
                tryStatement2.setFlags(tryStatement2.getFlags() | 1);
            } else if (i11 == 4 || i11 == 8) {
                int i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        break;
                    }
                    org.eclipse.jdt.internal.compiler.ast.Statement statement = tryStatement.resources[i12];
                    if (!(statement instanceof LocalDeclaration)) {
                        tryStatement2.setFlags(tryStatement2.getFlags() | 1);
                        break;
                    }
                    LocalDeclaration localDeclaration = (LocalDeclaration) statement;
                    VariableDeclarationExpression convertToVariableDeclarationExpression = convertToVariableDeclarationExpression(localDeclaration);
                    int startPosition = convertToVariableDeclarationExpression.getStartPosition();
                    convertToVariableDeclarationExpression.setSourceRange(startPosition, (localDeclaration.declarationEnd - startPosition) + 1);
                    tryStatement2.resources().add(convertToVariableDeclarationExpression);
                    i12++;
                }
            } else {
                int i13 = 0;
                while (true) {
                    if (i13 >= length) {
                        break;
                    }
                    org.eclipse.jdt.internal.compiler.ast.Statement statement2 = tryStatement.resources[i13];
                    if (statement2 instanceof LocalDeclaration) {
                        LocalDeclaration localDeclaration2 = (LocalDeclaration) statement2;
                        VariableDeclarationExpression convertToVariableDeclarationExpression2 = convertToVariableDeclarationExpression(localDeclaration2);
                        int startPosition2 = convertToVariableDeclarationExpression2.getStartPosition();
                        convertToVariableDeclarationExpression2.setSourceRange(startPosition2, (localDeclaration2.declarationEnd - startPosition2) + 1);
                        tryStatement2.resources().add(convertToVariableDeclarationExpression2);
                    } else if (statement2 instanceof NameReference) {
                        tryStatement2.resources().add(convert((NameReference) statement2));
                    } else if (statement2 instanceof FieldReference) {
                        tryStatement2.resources().add(convert((FieldReference) statement2));
                    } else {
                        tryStatement2.setFlags(tryStatement2.getFlags() | 1);
                        break;
                    }
                    i13++;
                }
            }
        }
        tryStatement2.setBody(convert(tryStatement.tryBlock));
        Argument[] argumentArr = tryStatement.catchArguments;
        if (argumentArr != null) {
            int length2 = argumentArr.length;
            org.eclipse.jdt.internal.compiler.ast.Block[] blockArr = tryStatement.catchBlocks;
            int i14 = tryStatement.tryBlock.sourceEnd;
            for (int i15 = 0; i15 < length2; i15++) {
                CatchClause catchClause = new CatchClause(this.ast);
                int retrieveStartingCatchPosition = retrieveStartingCatchPosition(i14, argumentArr[i15].sourceStart);
                catchClause.setSourceRange(retrieveStartingCatchPosition, (blockArr[i15].sourceEnd - retrieveStartingCatchPosition) + 1);
                catchClause.setBody(convert(blockArr[i15]));
                catchClause.setException(convert(argumentArr[i15]));
                tryStatement2.catchClauses().add(catchClause);
                i14 = blockArr[i15].sourceEnd;
            }
        }
        org.eclipse.jdt.internal.compiler.ast.Block block = tryStatement.finallyBlock;
        if (block != null) {
            tryStatement2.setFinally(convert(block));
        }
        return tryStatement2;
    }

    public ASTNode convert(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration) {
        int kind = org.eclipse.jdt.internal.compiler.ast.TypeDeclaration.kind(typeDeclaration.modifiers);
        if (kind == 3) {
            if (this.ast.apiLevel == 2) {
                return null;
            }
            return convertToEnumDeclaration(typeDeclaration);
        }
        if (kind != 4) {
            checkCanceled();
            TypeDeclaration typeDeclaration2 = new TypeDeclaration(this.ast);
            ASTNode aSTNode = this.referenceContext;
            this.referenceContext = typeDeclaration2;
            if (typeDeclaration.modifiersSourceStart != -1) {
                setModifiers(typeDeclaration2, typeDeclaration);
            }
            boolean z10 = kind == 2;
            typeDeclaration2.setInterface(z10);
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(typeDeclaration.name));
            int i10 = typeDeclaration.sourceStart;
            simpleName.setSourceRange(i10, (typeDeclaration.sourceEnd - i10) + 1);
            typeDeclaration2.setName(simpleName);
            int i11 = typeDeclaration.declarationSourceStart;
            typeDeclaration2.setSourceRange(i11, (typeDeclaration.bodyEnd - i11) + 1);
            TypeReference typeReference = typeDeclaration.superclass;
            if (typeReference != null) {
                if (this.ast.apiLevel != 2) {
                    typeDeclaration2.setSuperclassType(convertType(typeReference));
                } else {
                    typeDeclaration2.internalSetSuperclass(convert(typeReference));
                }
            }
            TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
            if (typeReferenceArr != null) {
                if (this.ast.apiLevel != 2) {
                    for (TypeReference typeReference2 : typeReferenceArr) {
                        typeDeclaration2.superInterfaceTypes().add(convertType(typeReference2));
                    }
                } else {
                    for (TypeReference typeReference3 : typeReferenceArr) {
                        typeDeclaration2.internalSuperInterfaces().add(convert(typeReference3));
                    }
                }
            }
            org.eclipse.jdt.internal.compiler.ast.TypeParameter[] typeParameterArr = typeDeclaration.typeParameters;
            if (typeParameterArr != null) {
                if (this.ast.apiLevel != 2) {
                    for (org.eclipse.jdt.internal.compiler.ast.TypeParameter typeParameter : typeParameterArr) {
                        typeDeclaration2.typeParameters().add(convert(typeParameter));
                    }
                } else {
                    typeDeclaration2.setFlags(typeDeclaration2.getFlags() | 1);
                }
            }
            buildBodyDeclarations(typeDeclaration, typeDeclaration2, z10);
            if (this.resolveBindings) {
                recordNodes(typeDeclaration2, typeDeclaration);
                recordNodes(simpleName, typeDeclaration);
                typeDeclaration2.resolveBinding();
            }
            this.referenceContext = aSTNode;
            return typeDeclaration2;
        }
        if (this.ast.apiLevel == 2) {
            return null;
        }
        return convertToAnnotationDeclaration(typeDeclaration);
    }

    public TypeParameter convert(org.eclipse.jdt.internal.compiler.ast.TypeParameter typeParameter) {
        TypeParameter typeParameter2 = new TypeParameter(this.ast);
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(typeParameter.name));
        int i10 = typeParameter.sourceStart;
        simpleName.setSourceRange(i10, (typeParameter.sourceEnd - i10) + 1);
        typeParameter2.setName(simpleName);
        org.eclipse.jdt.internal.compiler.ast.Annotation[] annotationArr = typeParameter.annotations;
        if (annotationArr != null) {
            org.eclipse.jdt.internal.compiler.ast.Annotation annotation = annotationArr[0];
            if (annotation != null) {
                i10 = annotation.sourceStart;
            }
            annotateTypeParameter(typeParameter2, annotationArr);
        }
        TypeReference typeReference = typeParameter.type;
        int i11 = typeParameter.declarationSourceEnd;
        if (typeReference != null) {
            Type convertType = convertType(typeReference);
            typeParameter2.typeBounds().add(convertType);
            i11 = (convertType.getStartPosition() + convertType.getLength()) - 1;
        }
        TypeReference[] typeReferenceArr = typeParameter.bounds;
        if (typeReferenceArr != null) {
            for (TypeReference typeReference2 : typeReferenceArr) {
                Type convertType2 = convertType(typeReference2);
                typeParameter2.typeBounds().add(convertType2);
                i11 = (convertType2.getStartPosition() + convertType2.getLength()) - 1;
            }
        }
        int i12 = typeParameter.declarationSourceStart;
        if (i10 >= i12) {
            i10 = i12;
        }
        typeParameter2.setSourceRange(i10, (retrieveClosingAngleBracketPosition(i11) - i10) + 1);
        if (this.resolveBindings) {
            recordName(simpleName, typeParameter);
            recordNodes(typeParameter2, typeParameter);
            typeParameter2.resolveBinding();
        }
        return typeParameter2;
    }

    public Name convert(TypeReference typeReference) {
        char[][] typeName = typeReference.getTypeName();
        if (typeName.length > 1) {
            return setQualifiedNameNameAndSourceRanges(typeName, ((QualifiedTypeReference) typeReference).sourcePositions, typeReference);
        }
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(typeName[0]));
        int i10 = typeReference.sourceStart;
        simpleName.setSourceRange(i10, (typeReference.sourceEnd - i10) + 1);
        simpleName.index = 1;
        if (this.resolveBindings) {
            recordNodes(simpleName, typeReference);
        }
        return simpleName;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0042, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PrefixExpression convert(UnaryExpression unaryExpression) {
        PrefixExpression prefixExpression = new PrefixExpression(this.ast);
        if (this.resolveBindings) {
            recordNodes(prefixExpression, unaryExpression);
        }
        int i10 = unaryExpression.sourceStart;
        prefixExpression.setSourceRange(i10, (unaryExpression.sourceEnd - i10) + 1);
        prefixExpression.setOperand(convert(unaryExpression.expression));
        switch ((unaryExpression.bits & org.eclipse.jdt.internal.compiler.ast.ASTNode.OperatorMASK) >> 6) {
            case 11:
                prefixExpression.setOperator(PrefixExpression.Operator.NOT);
                break;
            case 12:
                prefixExpression.setOperator(PrefixExpression.Operator.COMPLEMENT);
                break;
            case 13:
                prefixExpression.setOperator(PrefixExpression.Operator.MINUS);
                break;
            case 14:
                prefixExpression.setOperator(PrefixExpression.Operator.PLUS);
                break;
        }
    }

    public WhileStatement convert(org.eclipse.jdt.internal.compiler.ast.WhileStatement whileStatement) {
        WhileStatement whileStatement2 = new WhileStatement(this.ast);
        int i10 = whileStatement.sourceStart;
        whileStatement2.setSourceRange(i10, (whileStatement.sourceEnd - i10) + 1);
        whileStatement2.setExpression(convert(whileStatement.condition));
        Statement convert = convert(whileStatement.action);
        if (convert == null) {
            return null;
        }
        whileStatement2.setBody(convert);
        return whileStatement2;
    }
}
