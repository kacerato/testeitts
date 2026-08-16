.class public interface abstract Lorg/openjdk/tools/javac/tree/JCTree$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract Annotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;"
        }
    .end annotation
.end method

.method public abstract Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation
.end method

.method public abstract Assert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;
.end method

.method public abstract Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;
.end method

.method public abstract Assignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;
.end method

.method public abstract Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;
.end method

.method public abstract Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;"
        }
    .end annotation
.end method

.method public abstract Break(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;
.end method

.method public abstract Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCase;"
        }
    .end annotation
.end method

.method public abstract Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;
.end method

.method public abstract ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;"
        }
    .end annotation
.end method

.method public abstract Conditional(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;
.end method

.method public abstract Continue(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;
.end method

.method public abstract DoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;
.end method

.method public abstract Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;"
        }
    .end annotation
.end method

.method public abstract Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;
.end method

.method public abstract Exports(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExports;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExports;"
        }
    .end annotation
.end method

.method public abstract ForLoop(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;"
        }
    .end annotation
.end method

.method public abstract ForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;
.end method

.method public abstract Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;
.end method

.method public abstract If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;
.end method

.method public abstract Import(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCImport;
.end method

.method public abstract Indexed(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;
.end method

.method public abstract Labelled(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;
.end method

.method public abstract LetExpr(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;"
        }
    .end annotation
.end method

.method public abstract Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;
.end method

.method public abstract MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;"
        }
    .end annotation
.end method

.method public abstract Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;"
        }
    .end annotation
.end method

.method public abstract ModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/source/tree/ModuleTree$ModuleKind;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;"
        }
    .end annotation
.end method

.method public abstract NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;"
        }
    .end annotation
.end method

.method public abstract NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation
.end method

.method public abstract Opens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;"
        }
    .end annotation
.end method

.method public abstract PackageDecl(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;"
        }
    .end annotation
.end method

.method public abstract Parens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCParens;
.end method

.method public abstract Provides(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;"
        }
    .end annotation
.end method

.method public abstract Requires(ZZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;
.end method

.method public abstract Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;
.end method

.method public abstract Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;
.end method

.method public abstract Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;
.end method

.method public abstract Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCase;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;"
        }
    .end annotation
.end method

.method public abstract Synchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;
.end method

.method public abstract Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;
.end method

.method public abstract TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;"
        }
    .end annotation
.end method

.method public abstract Try(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation
.end method

.method public abstract Try(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTry;"
        }
    .end annotation
.end method

.method public abstract TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;"
        }
    .end annotation
.end method

.method public abstract TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;
.end method

.method public abstract TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;
.end method

.method public abstract TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;
.end method

.method public abstract TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
.end method

.method public abstract TypeParameter(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;"
        }
    .end annotation
.end method

.method public abstract TypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;
.end method

.method public abstract Unary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;
.end method

.method public abstract Uses(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUses;
.end method

.method public abstract VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
.end method

.method public abstract WhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;
.end method

.method public abstract Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;
.end method
