.class public abstract Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Visitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitCase(Lorg/openjdk/tools/javac/tree/JCTree$JCCase;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitErroneous(Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitExports(Lorg/openjdk/tools/javac/tree/JCTree$JCExports;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitImport(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLetExpr(Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitModifiers(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitOpens(Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitProvides(Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitRequires(Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitSkip(Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitSynchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeBoundKind(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeIntersection(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeUnion(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitUses(Lorg/openjdk/tools/javac/tree/JCTree$JCUses;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;->visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method
