.class public Lorg/openjdk/tools/javac/comp/Attr;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;,
        Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;,
        Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;,
        Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;,
        Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo;,
        Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;,
        Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;,
        Lorg/openjdk/tools/javac/comp/Attr$CheckMode;,
        Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;,
        Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;
    }
.end annotation


# static fields
.field public static final anyNonAbstractOrDefaultMethod:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field protected static final attrKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Attr;",
            ">;"
        }
    .end annotation
.end field

.field static final primitiveTags:[Lorg/openjdk/tools/javac/code/TypeTag;


# instance fields
.field allowDefaultMethods:Z

.field allowLambda:Z

.field allowPoly:Z

.field allowStaticInterfaceMethods:Z

.field allowStringsInSwitch:Z

.field allowTypeAnnos:Z

.field final analyzer:Lorg/openjdk/tools/javac/comp/Analyzer;

.field final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field final argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field private breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

.field final cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

.field final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private clinits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation
.end field

.field final deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

.field final deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

.field final dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

.field final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field final flow:Lorg/openjdk/tools/javac/comp/Flow;

.field private identAttributer:Lorg/openjdk/source/tree/TreeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field final infer:Lorg/openjdk/tools/javac/comp/Infer;

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field final make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field final memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

.field final methodAttrInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field final operators:Lorg/openjdk/tools/javac/comp/Operators;

.field final recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field removeClassParams:Lorg/openjdk/tools/javac/tree/TreeTranslator;

.field result:Lorg/openjdk/tools/javac/code/Type;

.field resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field final rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field sourceName:Ljava/lang/String;

.field final statInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field final target:Lorg/openjdk/tools/javac/jvm/Target;

.field targetChecker:Lorg/openjdk/tools/javac/code/Types$MapVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$MapVisitor<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            ">;"
        }
    .end annotation
.end field

.field final typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

.field final typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

.field final typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

.field final types:Lorg/openjdk/tools/javac/code/Types;

.field final unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field final unknownTypeExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field final unknownTypeInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field useBeforeDeclarationWarning:Z

.field final varAssignmentInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Attr;->attrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BYTE:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->SHORT:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v7, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v8, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    filled-new-array/range {v1 .. v8}, [Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Attr;->primitiveTags:[Lorg/openjdk/tools/javac/code/TypeTag;

    new-instance v0, Lorg/openjdk/tools/javac/comp/A;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/A;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Attr;->anyNonAbstractOrDefaultMethod:Lorg/openjdk/tools/javac/util/Filter;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 3

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/comp/Attr$IdentAttributer;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Attr$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->identAttributer:Lorg/openjdk/source/tree/TreeVisitor;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Attr$2;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->removeClassParams:Lorg/openjdk/tools/javac/tree/TreeTranslator;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$6;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Attr$6;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->targetChecker:Lorg/openjdk/tools/javac/code/Types$MapVisitor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->clinits:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr;->attrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Operators;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Operators;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Flow;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Flow;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/MemberEnter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/MemberEnter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Infer;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Infer;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Analyzer;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Analyzer;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->analyzer:Lorg/openjdk/tools/javac/comp/Analyzer;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ConstFold;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/TypeAnnotations;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Dependencies;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Dependencies;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowStringsInSwitch()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowStringsInSwitch:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowPoly()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowPoly:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowTypeAnnotations()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowTypeAnnos:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowLambda()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowLambda:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowDefaultMethods()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowDefaultMethods:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowStaticInterfaceMethods()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowStaticInterfaceMethods:Z

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->sourceName:Ljava/lang/String;

    const-string p1, "useBeforeDeclarationWarning"

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->useBeforeDeclarationWarning:Z

    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->NIL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-direct {p1, p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->statInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ASG:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-direct {p1, p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->varAssignmentInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-direct {p1, p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->methodAttrInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-direct {p1, p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownTypeInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-direct {p1, p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownTypeExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    invoke-direct {p1, p0, v0}, Lorg/openjdk/tools/javac/comp/Attr$RecoveryInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$checkReferenceCompatible$8(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method private static addVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Scope$WriteableScope;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private attribClassBody(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isAnonymous()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v3, p1}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v3, p1}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v3, p1}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->markAbstractIfNeeded(Lorg/openjdk/tools/javac/code/Types;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x600

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkAllDefined(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    :cond_2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v3

    const-wide/16 v7, 0x2000

    and-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "cant.extend.intf.annotation"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "intf.annotation.cant.have.type.params"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->getRepeatable()Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, v3}, Lorg/openjdk/tools/javac/comp/Attr;->getDiagnosticPosition(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v4, p2, v1, v3}, Lorg/openjdk/tools/javac/comp/Check;->validateRepeatable(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkCompatibleSupertypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowDefaultMethods:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkDefaultMethodClashes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_6
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkClassBounds(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_7
    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "generic.throwable"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkImplementations(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, p1, v3}, Lorg/openjdk/tools/javac/comp/Attr;->checkAutoCloseable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v3, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v3, v4, :cond_c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v3

    const-wide/16 v7, 0x8

    and-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_c

    :cond_9
    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flags(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v3

    const-wide/16 v7, 0x208

    and-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_b

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v7, :cond_b

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    :cond_b
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v7, "icls.cant.have.static.decl"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v4, v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCyclicConstructors(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclicElements(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->isSerializable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v3

    const-wide/16 v7, 0x4000

    and-long/2addr v3, v7

    cmp-long p1, v3, v5

    if-nez p1, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isAnonymous()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->checkForSerial(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->checkSerialVersionUID(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    :cond_e
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowTypeAnnos:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->organizeTypeAnnotationsBodies(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->validateTypeAnnotations(Lorg/openjdk/tools/javac/tree/JCTree;Z)V

    :cond_f
    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$static$10(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$checkReferenceCompatible$6(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method private capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method private checkAccessibleTypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/comp/C;

    invoke-direct {v0, p0, p1, p2, p4}, Lorg/openjdk/tools/javac/comp/C;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p3, p4, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Type;

    .line 5
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {p4, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->checkAccessibleType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private varargs checkAccessibleTypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/InferenceContext;[Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "[",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lorg/openjdk/tools/javac/util/List;->from([Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Attr;->checkAccessibleTypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method private checkEnumInitializer(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/comp/Attr;->isStaticEnumField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq p3, v0, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v0, p3}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Resolve;->isInitializer(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "illegal.enum.static.ref"

    invoke-virtual {p2, p1, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method private checkInit(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->enclosingInitEnv(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->enclVar:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v1, p3, :cond_0

    iget v1, p3, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-le v1, v2, :cond_6

    :cond_0
    iget-object v1, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_6

    iget-object v2, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    if-eq v1, p1, :cond_6

    :cond_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->enclVar:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, p3, :cond_3

    const-string v0, "self.ref"

    goto :goto_1

    :cond_3
    const-string v0, "forward.ref"

    :goto_1
    if-eqz p4, :cond_5

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/comp/Attr;->isStaticEnumField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->useBeforeDeclarationWarning:Z

    if-eqz p4, :cond_6

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr;->checkEnumInitializer(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    return-void
.end method

.method private checkSerialVersionUID(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 6

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->serialVersionUID:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v2, "missing.SVUID"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x18

    and-long/2addr v2, v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v1, "improper.SVUID"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v1, "long.SVUID"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v1, "constant.SVUID"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$visitNewClass$1(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$setFunctionalInfo$9(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method private enumConstant(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    move-object p2, v0

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    iget-object p2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-wide p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x4000

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$visitLambda$4(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method private fallbackDescriptorType(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const-string p1, "Cannot get here!"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object p1

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object p1
.end method

.method private findJumpTarget(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    :goto_0
    if-eqz p4, :cond_3

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v1, p4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p3, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BREAK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne p2, v0, :cond_2

    iget-object p1, p4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p1

    :pswitch_1
    if-nez p3, :cond_2

    iget-object p1, p4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p1

    :pswitch_2
    iget-object v0, p4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    if-ne p3, v1, :cond_2

    sget-object p4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CONTINUE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne p2, p4, :cond_1

    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object p4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DOLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object p4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->WHILELOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object p4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->FORLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object p4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->FOREACHLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "not.loop.label"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p4, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->referencedStatement(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    iget-object p4, p4, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :cond_3
    :pswitch_3
    if-eqz p3, :cond_4

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "undef.label"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p4, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object p3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CONTINUE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    const/4 p4, 0x0

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p3, "cont.outside.loop"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p3, "break.outside.switch.loop"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$checkAccessibleTypes$5(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method private getDiagnosticPosition(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic h(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$visitAnonymousClassDefinition$2(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method public static synthetic i(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$visitLambda$3(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr;->attrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Attr;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Attr;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isBooleanOrNumeric(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v2

    invoke-virtual {v0, p2, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->primitiveOrBoxed(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->removeClassParams:Lorg/openjdk/tools/javac/tree/TreeTranslator;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownTypeInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v2

    invoke-virtual {v0, p2, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->primitiveOrBoxed(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v2

    invoke-virtual {v0, p2, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    :goto_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_0
    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->primitiveOrBoxed(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1

    :pswitch_2
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->isBooleanOrNumeric(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->isBooleanOrNumeric(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_3
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->isBooleanOrNumeric(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result p1

    return p1

    :pswitch_4
    return v2

    :pswitch_5
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/TypeTag;->isSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object p2, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    if-eq p1, p2, :cond_3

    sget-object p2, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne p1, p2, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :cond_3
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isStaticEnumField(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Flags;->isEnum(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Flags;->isStatic(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Flags;->isConstant(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isType(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$check$0(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method public static synthetic k(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Attr;->lambda$checkReferenceCompatible$7(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$check$0(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    iget-object p6, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p6}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p6

    invoke-virtual {p1, p6}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p1

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p3, p2, p5, p1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method private synthetic lambda$checkAccessibleTypes$5(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-virtual {p4, p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p4, p3}, Lorg/openjdk/tools/javac/comp/Attr;->checkAccessibleTypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method private static synthetic lambda$checkReferenceCompatible$6(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->referentType:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method private static synthetic lambda$checkReferenceCompatible$7(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$checkReferenceCompatible$8(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    check-cast p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setThrow()V

    return-void
.end method

.method private synthetic lambda$setFunctionalInfo$9(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 7

    invoke-virtual {p7, p4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {p7, p5}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->setFunctionalInfo(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method

.method private static synthetic lambda$static$10(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x80000000400L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x400

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$visitAnonymousClassDefinition$2(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 12

    move-object v10, p0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v1, p9

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v11, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-object v1, p3

    :try_start_0
    iput-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/openjdk/tools/javac/comp/Attr;->visitAnonymousClassDefinition(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v11, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    return-void

    :catchall_0
    move-exception v0

    iput-object v11, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    throw v0
.end method

.method private static synthetic lambda$visitLambda$3(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$visitLambda$4(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    check-cast p0, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setThrow()V

    return-void
.end method

.method private static synthetic lambda$visitNewClass$1(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method private selectSym(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p3

    move-object/from16 v9, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    iget-object v12, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-ne v12, v0, :cond_0

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v11}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v2, v3, v1, v0}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v10, v1, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    iget-object v12, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v8, 0x19

    move-object v7, v0

    move-object v11, v2

    invoke-direct/range {v7 .. v12}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0

    :cond_0
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "cant.deref"

    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v10, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0

    :pswitch_0
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v12, v1, v11}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object v0

    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr;->selectSym(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "type.var.cant.be.deref"

    invoke-virtual {v0, v10, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v9, v11, v0}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v8, v1

    goto :goto_1

    :cond_3
    move-object v8, v0

    :goto_1
    iget-object v7, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    const/4 v13, 0x1

    move-object v9, v10

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v13}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_3
    iget-object v0, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v12, v1, :cond_7

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v12, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-ne v12, v0, :cond_6

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v11}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v2, v3, v1, v0}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v10, v1, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    iget-object v12, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v8, 0x19

    move-object v7, v0

    move-object v11, v2

    invoke-direct/range {v7 .. v12}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0

    :cond_6
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v9, v11, v12, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findIdentInType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v8

    iget-object v7, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    const/4 v13, 0x1

    move-object v9, v10

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v13}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_2
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v10, v9, v1, v12}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveSelf(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_3
    iget-object v7, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v13

    iget-object v0, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v14

    move-object v8, v10

    move-object/from16 v9, p4

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v14}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v7, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v11, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v7, v9, v0, v12, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findIdentInPackage(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v8

    const/4 v13, 0x1

    move-object v9, v10

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v13}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFunctionalInfo(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/Check$CheckContext;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v7, p1

    move-object v0, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    invoke-interface/range {p6 .. p6}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p6 .. p6}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v10

    invoke-static/range {p3 .. p4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v11

    new-instance v12, Lorg/openjdk/tools/javac/comp/B;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/B;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    invoke-virtual {v10, v11, v12}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    goto/16 :goto_1

    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v8}, Lorg/openjdk/tools/javac/code/Types;->removeWildcards(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, v8, :cond_1

    iget-object v4, v9, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/code/Types;->removeWildcards(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v8}, Lorg/openjdk/tools/javac/code/Types;->removeWildcards(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    invoke-interface/range {p6 .. p6}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v1, v2, :cond_4

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v5, v1, :cond_4

    :try_start_0
    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const-wide/16 v5, 0x400

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Types;->makeFunctionalInterfaceClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;J)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2, v3, v1, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkImplementations(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NoSuitableFunctionalIntfInst(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    :try_end_2
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-interface {v1, v2, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private visitAnonymousClassDefinition(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v5, p4

    move-object/from16 v13, p5

    move-object/from16 v9, p8

    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_0

    invoke-virtual {v14, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_2

    invoke-virtual {v14, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v4, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v15

    new-instance v8, Lorg/openjdk/tools/javac/comp/x;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v13, v8

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/openjdk/tools/javac/comp/x;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    invoke-virtual {v14, v15, v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    move-object/from16 v7, p5

    goto/16 :goto_6

    :cond_2
    const/4 v6, 0x1

    if-eqz v0, :cond_5

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v12, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    move-object v2, v12

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkDiamondDenotable(Lorg/openjdk/tools/javac/code/Type$ClassType;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->Diamond(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object v2

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_3

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->DiamondInvalidArgs(Ljava/util/List;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->DiamondInvalidArg(Ljava/util/List;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->CantApplyDiamond1(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v3, v4, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->checkAccessibleType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    :cond_5
    iget-object v1, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move-object/from16 v1, p2

    goto :goto_2

    :cond_7
    move-object/from16 v1, p2

    iput-object v1, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_3

    :goto_2
    invoke-static/range {p2 .. p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    :goto_3
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v1, v2, :cond_8

    invoke-virtual {v10, v12}, Lorg/openjdk/tools/javac/comp/Attr;->isSerializable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v7, p5

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v6, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    goto :goto_4

    :cond_8
    move-object/from16 v7, p5

    :goto_4
    invoke-virtual {v10, v5, v7}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_9

    iget-object v1, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v10, v2}, Lorg/openjdk/tools/javac/comp/Attr;->makeNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_5

    :cond_9
    move-object/from16 v2, p6

    move-object v1, v2

    :goto_5
    if-eqz v0, :cond_a

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v9, v0}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->deferredCopier:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_a
    move-object v8, v1

    iget-object v0, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v12, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    move-object/from16 v2, p5

    move-object v3, v12

    move-object v4, v8

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    iput-object v3, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object v3, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    move-object/from16 v1, p7

    invoke-virtual {v10, v0, v8, v1}, Lorg/openjdk/tools/javac/comp/Attr;->newMethodTemplate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_TREE_UPDATE:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-direct {v5, v10, v9, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr;->checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    :goto_6
    iget-object v0, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v12

    :goto_7
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_INFERENCE_HOOK:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v1

    invoke-virtual {v10, v11, v12, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1, v7}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method


# virtual methods
.method public adjustMethodReturnType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->getClass:Lorg/openjdk/tools/javac/util/Name;

    if-ne p3, v0, :cond_0

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    new-instance p4, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/code/BoundKind;->EXTENDS:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p4, p2, v0, v1}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-static {p4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object p4, p5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object p5

    invoke-direct {p1, p3, p2, p4, p5}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->clone:Lorg/openjdk/tools/javac/util/Name;

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isArray(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    return-object p5
.end method

.method public attrib(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribPackage(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribModule(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTopLevel(Lorg/openjdk/tools/javac/comp/Env;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public attribAnnotationTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public attribAnyTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public attribArgs(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowPoly:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->methodAttrInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    :goto_1
    invoke-virtual {p0, v0, p3, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    filled-new-array {v1, p1}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object p1

    :cond_1
    invoke-virtual {p4, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public attribBase(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;ZZZ)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->checkBase(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public attribClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 4
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    .line 6
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    .line 7
    iget-wide v5, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v7, 0x1000000

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    .line 8
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/comp/Attr;->attribClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 10
    :cond_1
    iget-object v5, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v9, :cond_2

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 12
    :cond_2
    iget-wide v5, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v9, 0x10000000

    and-long/2addr v9, v5

    cmp-long v3, v9, v7

    if-eqz v3, :cond_7

    const-wide/32 v9, -0x10000001

    and-long/2addr v5, v9

    .line 13
    iput-wide v5, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    .line 14
    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    move-object v5, v3

    .line 15
    :goto_0
    iget-object v6, v5, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v9, v6

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    if-nez v9, :cond_3

    .line 16
    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v5, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v6, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v6

    iput-object v6, v5, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    .line 18
    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v6, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v5

    .line 19
    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v9, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v6, v9}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v6

    .line 20
    iget-object v9, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    .line 21
    :try_start_0
    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    iget-object v11, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->flush(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    .line 22
    iget-object v10, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v4, v10, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    .line 23
    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v10, v10, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const/4 v11, 0x0

    const-wide/32 v12, 0x1004000

    if-ne v4, v10, :cond_4

    iget-wide v14, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v14, v12

    cmp-long v4, v14, v7

    if-nez v4, :cond_4

    .line 24
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v10, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    const-string v14, "enum.no.subclassing"

    new-array v15, v11, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v14, v15}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 25
    :cond_4
    :goto_1
    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v2, :cond_5

    iget-wide v14, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v16, 0x4000

    and-long v14, v14, v16

    cmp-long v2, v14, v7

    if-eqz v2, :cond_5

    iget-wide v14, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v12, v14

    cmp-long v2, v12, v7

    if-nez v2, :cond_5

    .line 26
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v7, "enum.types.not.extensible"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_5
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->isSerializable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    iget-object v2, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    .line 29
    :cond_6
    invoke-direct {v1, v3, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribClassBody(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 30
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 31
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkClassOverrideEqualsAndHashIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 32
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v2, v4, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkFunctionalInterface(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 33
    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkLeaksNotAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v0, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v9, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    .line 35
    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 36
    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    goto :goto_3

    .line 37
    :goto_2
    iget-object v2, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v9, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    .line 38
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 39
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    .line 40
    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public attribClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    .line 2
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method

.method public attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p3, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    :goto_0
    invoke-direct {v0, p0, v1, p3}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public attribExprToTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Attr$BreakAttr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;->access$100(Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :cond_0
    :try_start_2
    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;->access$100(Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method public attribExprs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public attribIdent(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->identAttributer:Lorg/openjdk/source/tree/TreeVisitor;

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1
.end method

.method public attribIdent(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/Enter;->topLevelEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iput-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribIdent(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public attribIdentAsEnumType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public attribImportQualifier(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    :goto_0
    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-direct {v1, p0, p1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, v0, p2, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public attribLazyConstantValue(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    :try_start_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/tools/javac/comp/Attr;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const/4 p1, 0x0

    return-object p1

    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    throw p1
.end method

.method public attribModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public attribModule(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    .line 2
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method

.method public attribPackage(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public attribPackage(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    .line 2
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribPackage(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method

.method public attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->statInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, p2, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->analyzer:Lorg/openjdk/tools/javac/comp/Analyzer;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    return-object p2

    :catchall_0
    move-exception p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->analyzer:Lorg/openjdk/tools/javac/comp/Analyzer;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzeIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    throw p2
.end method

.method public attribStatToTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Attr$BreakAttr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;->access$100(Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :cond_0
    :try_start_2
    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;->access$100(Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method public attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public attribTopLevel(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method

.method public attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->needsArgumentAttr(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {v2, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attribArg(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_0
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->breakTree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-ne p1, v2, :cond_2

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-eq p3, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->copyEnv(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p3, p2, v2}, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;-><init>(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$1;)V

    throw p3

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    return-object p1

    :goto_3
    :try_start_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    throw p1
.end method

.method public attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownTypeInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-direct {v0, p0, v1, p3}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public attribTypeVariables(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v6, 0x10000000

    or-long/2addr v4, v6

    iput-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    sget-object v3, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v3, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v4, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->setBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->setBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/util/List;)V

    :goto_2
    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v4, -0x10000001

    and-long/2addr v2, v4

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type$TypeVar;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public attribTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribAnyTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkRefTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 11

    iget-object v0, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p3, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->subset(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->kindNames()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->kindNames()Ljava/util/Set;

    move-result-object p3

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "unexpected.type"

    invoke-virtual {v0, v1, v2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_2

    :cond_1
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowPoly:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_2

    iget-object v1, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, p2

    :goto_1
    iget-object v1, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->installPostInferenceHook()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    new-instance v10, Lorg/openjdk/tools/javac/comp/z;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p4

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/z;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    invoke-virtual {v0, v9, v10}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    :cond_3
    move-object p2, v8

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p4, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :cond_5
    :goto_2
    iget-object p3, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->updateTreeType()Z

    move-result p3

    if-eqz p3, :cond_6

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_6
    return-object p2
.end method

.method public checkAssignable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object p3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->CantAssignValToThis:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v4, 0x40000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne p3, v0, :cond_2

    :cond_1
    invoke-virtual {p0, p2, p4}, Lorg/openjdk/tools/javac/comp/Attr;->isAssignableAsBlankFinal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "try.resource.may.not.be.assigned"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p4, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "cant.assign.val.to.final.var"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p4, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public checkAutoCloseable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p3, v1}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p3, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v3, 0x0

    invoke-virtual {v1, p3, v3}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v1, Lorg/openjdk/tools/javac/util/Names;->close:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableClose:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Symbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->interruptedExceptionType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p3, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->isHandled(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->TRY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "try.resource.throws.interrupted.exc"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p1, v1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public checkBase(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;ZZZ)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    sget-object p3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p3

    if-eqz p3, :cond_0

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isAnonymous()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "cant.inherit.from.anon"

    new-array p5, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, p4, p5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p3

    if-eqz p3, :cond_2

    return-object p1

    :cond_2
    sget-object p3, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    if-nez p5, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "illegal.forward.ref"

    new-array p5, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, p4, p5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p3, p2, p1, p6}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :cond_4
    const-wide/16 v1, 0x200

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_5

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v1

    cmp-long p3, v5, v3

    if-nez p3, :cond_5

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "intf.expected.here"

    new-array p5, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, p4, p5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p6, :cond_6

    if-eqz p4, :cond_6

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p3

    and-long/2addr p3, v1

    cmp-long p3, p3, v3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "no.intf.expected.here"

    new-array p5, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, p4, p5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz p6, :cond_7

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p3

    const-wide/16 p5, 0x10

    and-long/2addr p3, p5

    cmp-long p3, p3, v3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p4, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string p5, "cant.inherit.from.final"

    invoke-virtual {p3, p2, p5, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p3, p2, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1
.end method

.method public checkFirstConstructorStat(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EXEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "call.must.be.first.stmt.in.ctor"

    invoke-virtual {p2, v0, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public checkForSerial(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr;->anyNonAbstractOrDefaultMethod:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->anyMatch(Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result p1

    return p1
.end method

.method public checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->checkIdInternal(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Attr;->checkMethodId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public checkIdInternal(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p4, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    new-instance p2, Ljava/lang/AssertionError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "unexpected kind: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " in tree "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :pswitch_0
    iget-object p2, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto/16 :goto_1

    :pswitch_1
    new-instance p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, p6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v0, p6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v5, p6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    iget-object v0, p5, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->args(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v0, p6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v0, p6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->checkMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_2
    move-object p4, p3

    check-cast p4, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ASG:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->subset(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_2

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->asOuterSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p4, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "unchecked.assign.to.var"

    filled-new-array {p4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_3

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v2, :cond_3

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->isStaticReference(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :cond_4
    iget-object p4, p6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    if-ne p4, v0, :cond_9

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1

    :pswitch_3
    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p4, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    move-object v3, p3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v2, p5, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkForBadAuxiliaryClassAccess(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eq p2, v1, :cond_8

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p2, v2}, Lorg/openjdk/tools/javac/code/Types;->asEnclosingSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :cond_6
    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :cond_7
    if-eq p2, v1, :cond_8

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object p4

    invoke-direct {v0, p2, v1, v2, p4}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    move-object p2, v0

    goto :goto_1

    :cond_8
    move-object p2, p4

    :cond_9
    :goto_1
    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne p4, v0, :cond_a

    sget-object p4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REFERENCE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, p4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p4

    if-eqz p4, :cond_b

    :cond_a
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p5, p5, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p5, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p5, p5, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p5, p5, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p4, v0, p5, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkSunAPI(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkProfile(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_b
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->toSelector()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p6}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public checkIntersection(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v4, v1

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v7, v1

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/openjdk/tools/javac/comp/Attr;->checkBase(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v1, "type.var.may.not.be.followed.by.other.bounds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_1
    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, v3

    invoke-virtual/range {v4 .. v10}, Lorg/openjdk/tools/javac/comp/Attr;->checkBase(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;ZZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkNotRepeated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Ljava/util/Set;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_5
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object p1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/Types;->makeIntersectionType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    move-result-object v0

    iget-object v3, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->isInterface()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    move-object v9, p2

    move-object v8, v3

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v5, 0x401

    invoke-virtual {p1, v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    iget-object p2, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v3

    const-wide/32 v5, 0x1000000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    move v2, v1

    :cond_8
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-wide v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v4, 0x10000000

    or-long/2addr v2, v4

    iput-wide v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v2, p1, v1}, Lorg/openjdk/tools/javac/comp/Enter;->classEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v1, p2, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->put(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-object v0
.end method

.method public checkLambdaCompatible(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 3

    invoke-interface {p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->STATEMENT:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->canCompleteNormally:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "missing.ret.val"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "incompatible.ret.type.in.lambda"

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_0
    invoke-interface {p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVars(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "incompatible.arg.types.in.lambda"

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_1
    return-void
.end method

.method public checkMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v8, 0x8

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v6, v2}, Lorg/openjdk/tools/javac/code/Types;->asOuterSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v8}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/openjdk/tools/javac/code/Types;->isSameTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v8, "unchecked.call.mbr.of.raw.type"

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v8, v0}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v4, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v4, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v8

    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v8, v9}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v8, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v2, v8}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v8, v5

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3, v2, v8}, Lorg/openjdk/tools/javac/code/Types;->interfaceCandidates(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v3, v5, :cond_2

    move-object v8, v3

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v10, 0x1

    invoke-virtual {v8, v5, v3, v9, v10}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v8, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v10, "overridden.default"

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "illegal.default.super.call"

    invoke-virtual {v0, v3, v8, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Type;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "illegal.static.intf.meth.call"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v2, v3, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    new-instance v0, Lorg/openjdk/tools/javac/util/Warner;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Warner;-><init>()V

    :try_start_0
    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    move-object/from16 v9, p4

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object v15, v0

    invoke-virtual/range {v8 .. v15}, Lorg/openjdk/tools/javac/comp/Resolve;->checkMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;

    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v10, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v10, v10, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-direct {v3, v8, v9, v5, v10}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v8, p6

    :try_start_1
    invoke-virtual {v8, v3}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v15
    :try_end_1
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    sget-object v8, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v8}, Lorg/openjdk/tools/javac/util/Warner;->hasNonSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0
    :try_end_2
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_8

    :try_start_3
    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v8, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    const-string v9, "unchecked.meth.invocation.applied"

    invoke-static/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v16

    iget-object v10, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v11, v7, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v12, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v18

    iget-object v11, v7, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v15, v3}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v21

    move-object/from16 v17, v10

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v8, v9, v3}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/comp/Infer;->anyPoly:Lorg/openjdk/tools/javac/code/Type;

    if-ne v0, v3, :cond_7

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isPartial()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v10, v4

    move-object v2, v6

    goto/16 :goto_7

    :cond_7
    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v3, v8, v2, v9}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    :try_end_3
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v0

    goto :goto_2

    :cond_8
    move-object v9, v2

    :goto_2
    :try_start_4
    iget-object v0, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0
    :try_end_4
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_9

    :try_start_5
    iget-object v0, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ForAll;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->POLY:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;
    :try_end_5
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_9
    :try_start_6
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->STANDALONE:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    :goto_3
    iget-object v2, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->setPolyKind(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;)V

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Infer;->anyPoly:Lorg/openjdk/tools/javac/code/Type;

    if-ne v0, v2, :cond_a

    goto :goto_4

    :cond_a
    iget-object v8, v7, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v0, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->lastResolveVarargs()Z

    move-result v14

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0
    :try_end_6
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v15

    move-object v2, v15

    move-object v15, v0

    :try_start_7
    invoke-virtual/range {v8 .. v15}, Lorg/openjdk/tools/javac/comp/Check;->checkMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9
    :try_end_7
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    return-object v9

    :catch_2
    move-exception v0

    move-object v15, v2

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v15

    goto :goto_6

    :catch_4
    move-exception v0

    :goto_5
    move-object v15, v8

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v8, p6

    goto :goto_5

    :goto_6
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    new-instance v8, Lorg/openjdk/tools/javac/comp/Attr$8;

    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v10, v4

    move-object v4, v9

    move-object v11, v5

    move-object/from16 v5, p2

    move-object v14, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr$8;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$ResolveDeferredRecoveryMap;

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-direct {v0, v1, v2, v11, v3}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveDeferredRecoveryMap;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    invoke-virtual {v15, v0}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sget-object v9, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v10, v10, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v13, v11, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move-object v2, v14

    move-object v14, v0

    move-object/from16 v15, p7

    invoke-virtual/range {v8 .. v15}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Log;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0

    :goto_7
    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public checkMethodId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x400000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Attr;->checkSigPolyMethodId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Attr;->checkMethodIdInternal(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public checkMethodIdInternal(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v10, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    new-instance v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v4, v9, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-direct {v1, v2, v3, p3, v4}, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->map(Lorg/openjdk/tools/javac/code/Types$TypeMapping;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkIdInternal(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    new-instance v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;

    iget-object v3, v7, Lorg/openjdk/tools/javac/comp/Attr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v5, v9, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-direct {v2, v3, v4, p3, v5}, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->map(Lorg/openjdk/tools/javac/code/Types$TypeMapping;)Lorg/openjdk/tools/javac/code/Type;

    return-object v0

    :cond_0
    iget-object v4, v10, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkIdInternal(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public checkReferenceCompatible(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Z)V
    .locals 7

    invoke-interface {p4}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$source$tree$MemberReferenceTree$ReferenceMode:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :goto_1
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;

    invoke-direct {v3, p0, p4}, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    invoke-interface {p4, p1, v2, v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->checkWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;

    move-result-object v6

    invoke-virtual {v3, v2, v1, v6}, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;->compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, v4

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "inconvertible.types"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "incompatible.ret.type.in.mref"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    invoke-interface {p4, p1, v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    new-instance v1, Lorg/openjdk/tools/javac/comp/D;

    invoke-direct {v1, p1, p3}, Lorg/openjdk/tools/javac/comp/D;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v0, p4, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    goto :goto_4

    :cond_6
    iput-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->referentType:Lorg/openjdk/tools/javac/code/Type;

    :goto_4
    if-nez p5, :cond_8

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVars(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p5

    invoke-virtual {p4, p5, p2}, Lorg/openjdk/tools/javac/comp/Check;->unhandled(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p5, "incompatible.thrown.types.in.mref"

    invoke-virtual {p4, p1, p5, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/comp/E;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/comp/E;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/comp/F;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/comp/F;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_8
    return-void
.end method

.method public checkSigPolyMethodId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr;->checkMethodIdInternal(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    sget-object p2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object p2, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/ConstFold;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public condType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p3}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/TypeTag;->isStrictSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1, v0}, Lorg/openjdk/tools/javac/code/Types;->isAssignable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/TypeTag;->isStrictSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isAssignable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object v2, Lorg/openjdk/tools/javac/comp/Attr;->primitiveTags:[Lorg/openjdk/tools/javac/code/TypeTag;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->typeOfTag:[Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v0, v5}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v1, v5}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_7
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_8
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p3, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_a
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    filled-new-array {p2, p3}, [Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->lub([Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "neither.conditional.subtype"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, v1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->baseType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public conditionalContext(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Check$CheckContext;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$3;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$3;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object v0
.end method

.method public copyEnv(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->copyScope(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr;->copyEnv(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    :cond_0
    return-object p1
.end method

.method public copyScope(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public diamondContext(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Check$CheckContext;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$4;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0
.end method

.method public enclosingInitEnv(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :pswitch_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getTargetInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->targetChecker:Lorg/openjdk/tools/javac/code/Types$MapVisitor;

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v2, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {v1, p1, v0, p3, v2}, Lorg/openjdk/tools/javac/comp/Infer;->instantiateFunctionalInterface(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Types;->removeWildcards(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->fallbackDescriptorType(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {p3, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid.generic.lambda.target"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :cond_2
    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;

    invoke-direct {p1, p0, v1, p3}, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1
.end method

.method public isAssignableAsBlankFinal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v2, 0x1

    if-eq v1, v0, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eq v1, v3, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    const-wide/32 v9, 0x100000

    and-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v7, 0x8

    and-long/2addr v0, v7

    cmp-long p1, v0, v5

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :cond_3
    :goto_1
    return v2
.end method

.method public isSerializable(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->serializableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->complete()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->serializableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isStaticReference(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public lambdaBodyResult(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBody()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v0, p0, p1, p3}, Lorg/openjdk/tools/javac/comp/Attr$ExpressionLambdaReturnContext;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;

    iget-object p1, p3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    sget-object p3, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object p3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2, v0}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    :goto_1
    return-object p1
.end method

.method public lambdaEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_3

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v2, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->clinits:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v1, :cond_1

    new-instance v8, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v8, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, v2, Lorg/openjdk/tools/javac/util/Names;->clinit:Lorg/openjdk/tools/javac/util/Name;

    const-wide/16 v5, 0x100a

    move-object v4, v1

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->clinits:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public litType(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->typeOfTag:[Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public makeNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v2, :cond_2

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NULLCHK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Unary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, p1, v0, v3}, Lorg/openjdk/tools/javac/comp/Operators;->resolveUnary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public memberReferenceQualifierResult(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object p1

    sget-object v1, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    if-ne p1, v1, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0
.end method

.method public newMethodTemplate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-direct {p1, p3, v0}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pkind:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    return-object v0
.end method

.method public postAttr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public preFlow(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$5;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Attr$5;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Attr$5;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public primitiveOrBoxed(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->unboxedTypeOrType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pt()Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public removeClinit(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->clinits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p1
.end method

.method public setPackageSymbols(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$9;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/Attr$9;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public thisSym(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveSelf(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public validateTypeAnnotations(Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/Attr$TypeAnnotationsValidator;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Z)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribAnnotationTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->TO_BE_SET:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->annotatedType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isNewClass:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1, v2, v0}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateTypeSecondStage(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 0

    const-string p1, "should be handled in annotate"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 13

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    const/4 v8, 0x1

    if-eq v5, v2, :cond_1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v5, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v8

    :goto_1
    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Attr;->checkFirstConstructorStat(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v8, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, v4, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribArgs(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v4, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    const-string v10, "no.superclass"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v7, v10, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    :cond_2
    :goto_2
    move-object v10, v4

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    goto :goto_2

    :goto_3
    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v10, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_4

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    goto :goto_4

    :cond_4
    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v7, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    invoke-virtual {p0, v5, v0, v4}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v5, v4, :cond_7

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v10, v8}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveImplicitThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_5

    :cond_6
    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, v10, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "illegal.qual.not.icls"

    invoke-virtual {v4, v5, v7, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_5
    iget-object v4, v10, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v4, v6, :cond_8

    iget-object v4, v5, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :cond_8
    move-object v11, v2

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v12, v4, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    move-object v4, v2

    check-cast v4, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v8, v4, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v3, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    move-object v4, v0

    move-object v5, v10

    move-object v6, v11

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v12, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2, v5}, Lorg/openjdk/tools/javac/tree/TreeInfo;->setSymbol(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v11, v9}, Lorg/openjdk/tools/javac/comp/Attr;->newMethodTemplate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v7, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-direct {v7, p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    move-object v2, p0

    move-object v4, v10

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    :cond_9
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    goto/16 :goto_8

    :cond_a
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, v4, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribArgs(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribAnyTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v6, v9}, Lorg/openjdk/tools/javac/comp/Attr;->newMethodTemplate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v3, v7, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v7, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v10, v10, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v7, p0, v4, v2, v10}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    invoke-virtual {p0, v3, v0, v7}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v7, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_6
    move-object v4, v2

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_6

    :goto_7
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->adjustMethodReturnType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v4, v9}, Lorg/openjdk/tools/javac/comp/Check;->checkRefTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v8}, Lorg/openjdk/tools/javac/comp/InferenceContext;->cachedCapture(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v2, v1, v3}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    :goto_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->varAssignmentInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->varAssignmentInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->noAssignOp()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Operators;->noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkDivZero(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCastable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Operators;->noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget v4, v2, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {v5, v4, v0, v1}, Lorg/openjdk/tools/javac/comp/ConstFold;->fold2(ILorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {v6, v5, v3}, Lorg/openjdk/tools/javac/comp/ConstFold;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    :cond_0
    const/16 v5, 0xa5

    if-eq v4, v5, :cond_1

    const/16 v5, 0xa6

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    new-instance v5, Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/util/Warner;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    invoke-virtual {v4, v0, v1, v5}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "incomparable.types"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkDivZero(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_3
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v3, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    const-wide/32 v5, 0x100000

    or-long/2addr v1, v5

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x800

    and-long/2addr v5, v7

    or-long v6, v1, v5

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v8, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v9, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    const-wide/16 v5, 0x8

    and-long/2addr v1, v5

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, p1, v0, v2, v4}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-wide v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    and-long/2addr v2, v5

    cmp-long p1, v2, v7

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendClassInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendInitTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    :goto_0
    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    throw p1
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->label:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->findJumpTarget(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-static {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isInAnnotation(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    :cond_2
    :goto_1
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v2, :cond_3

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-eqz v3, :cond_4

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v5, 0x400000

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    new-instance p1, Lorg/openjdk/tools/javac/comp/y;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/comp/y;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :goto_3
    new-instance v1, Lorg/openjdk/tools/javac/comp/y;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/y;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    throw p1
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowPoly:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/comp/Infer;->anyPoly:Lorg/openjdk/tools/javac/code/Type;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Attr;->isBooleanOrNumeric(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->POLY:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->STANDALONE:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    :goto_1
    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->POLY:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "conditional.target.cant.be.void"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :cond_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->STANDALONE:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Attr;->conditionalContext(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v1

    :goto_2
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v3, v4, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v4, v5, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    if-ne v4, v2, :cond_5

    invoke-virtual {p0, p1, v3, v1}, Lorg/openjdk/tools/javac/comp/Attr;->condType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :goto_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v1

    :goto_4
    invoke-virtual {v4, v3, v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :cond_7
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->label:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->findJumpTarget(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitErroneous(Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;->errs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ERR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void

    :goto_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    throw p1
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->cvarUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->iterableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "foreach.not.applicable.to.type"

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v6, "type.req.array.or.iterable"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3, v2, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void

    :goto_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    throw p1
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 8

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v2, v3, :cond_1

    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveIdent(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0

    :goto_2
    iput-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v2, v3, :cond_3

    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v4, :cond_3

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v3, :cond_3

    :goto_3
    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_3

    :cond_3
    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_4

    move-object v2, v5

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v2, v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkInit(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Z)V

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ASG:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->subset(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v4, v2, v1, v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkAssignable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_4
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_7

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v6, 0x8

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_6

    move-object v2, v5

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->thisSym(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->earlyRefError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_8

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_8

    iget-object v1, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eq v1, v2, :cond_8

    :goto_6
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3, v5}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isLambda:Z

    invoke-virtual {v2, p1, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkAccessFromSerializableElement(Lorg/openjdk/tools/javac/tree/JCTree;Z)V

    :cond_9
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkEmptyIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitImport(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V
    .locals 0

    return-void
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->isArray(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "array.req.but.found"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_2
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LABELLED:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "label.already.in.use"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 14

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v0, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->lambdaEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    const/4 v9, 0x1

    if-ne v2, v3, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v1

    :goto_0
    if-eqz v10, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->isSerializable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v9, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v9, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->isLambda:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto/16 :goto_9

    :cond_2
    :goto_1
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->EXPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    const/4 v11, 0x0

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v11

    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v3, v2}, Lorg/openjdk/tools/javac/comp/Attr;->getTargetInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;

    move-result-object v2

    iget-object v12, v2, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->target:Lorg/openjdk/tools/javac/code/Type;

    iget-object v13, v2, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->descriptor:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v12, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v12, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-eqz v10, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v8, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v6, v13

    move-object v7, v12

    invoke-direct/range {v2 .. v8}, Lorg/openjdk/tools/javac/comp/Attr;->setFunctionalInfo(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v13, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "invalid.generic.lambda.target"

    iget-object v5, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v5}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v5

    iget-object v6, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v13, v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-eqz v10, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    :cond_6
    return-void

    :cond_7
    :try_start_2
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->IMPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne v2, v3, :cond_d

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    move v4, v1

    :goto_3
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    move v4, v9

    :cond_8
    if-eqz v4, :cond_9

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_4

    :cond_9
    iget-object v5, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    :goto_4
    iget-object v6, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    check-cast v6, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    iput-object v5, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iput-object v11, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :goto_5
    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_b
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    if-eqz v4, :cond_d

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "incompatible.arg.types.in.lambda"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v12}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_2
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-eqz v10, :cond_c

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    :cond_c
    return-void

    :cond_d
    :try_start_3
    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v13, v3}, Lorg/openjdk/tools/javac/comp/Attr;->lambdaBodyResult(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v2

    sget-object v4, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v2, v4, :cond_e

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBody()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_6

    :catch_1
    move-exception v2

    move v10, v1

    move-object v1, v2

    goto/16 :goto_9

    :cond_e
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    :goto_6
    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v12, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v4, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v3, v4, :cond_f

    goto :goto_7

    :cond_f
    move v9, v1

    :goto_7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->preFlow(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v4, p1, v5, v9}, Lorg/openjdk/tools/javac/comp/Flow;->analyzeLambda(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/TreeMaker;Z)V

    iput-object v12, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p0, p1, v13, v3}, Lorg/openjdk/tools/javac/comp/Attr;->checkLambdaCompatible(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    if-nez v9, :cond_11

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v3

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v4, p1, v5}, Lorg/openjdk/tools/javac/comp/Flow;->analyzeLambdaThrownTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v4}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v4

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVars(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v5, v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->unhandled(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/javac/comp/G;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/comp/G;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/javac/comp/H;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/comp/H;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_10
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v3

    filled-new-array {v13, v12}, [Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-direct {p0, p1, v0, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->checkAccessibleTypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/InferenceContext;[Lorg/openjdk/tools/javac/code/Type;)V

    :cond_11
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v12, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_3
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void

    :goto_8
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_a

    :goto_9
    :try_start_5
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v2, p1, v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-eqz v10, :cond_12

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    :cond_12
    return-void

    :catchall_2
    move-exception v2

    move v1, v10

    :goto_a
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->recoveryInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    :cond_13
    throw v2

    :cond_14
    :goto_b
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "unexpected.lambda"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr;->litType(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide v5, 0x80000000000L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v7, v2}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v7

    iget-object v8, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v8, v7}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v8

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v9, v2}, Lorg/openjdk/tools/javac/comp/Check;->setMethod(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v9

    :try_start_0
    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->flush(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Attr;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v10, v0, v11}, Lorg/openjdk/tools/javac/comp/MemberEnter;->methodEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v10

    iget-object v11, v10, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v11, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v7, v11, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iget-object v7, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v7, v10}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    iget-object v12, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v12, v12, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v12, v12, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v11, v12, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkHideClashes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    iget-object v12, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v12, v12, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v12, v12, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v11, v12, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkOverrideClashes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    :goto_1
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v7, v11, v0, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkOverride(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    if-eqz v3, :cond_2

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Lorg/openjdk/tools/javac/code/Types;->overridesObjectMethod(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v11, "default.overrides.object.member"

    iget-object v12, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v13

    invoke-static {v13}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v13

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v14

    filled-new-array {v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v0, v11, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v7, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v10, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v11, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v11, v11, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v12, v7, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v12, v12, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v12, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_3
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v11

    const-wide/16 v13, 0x2000

    and-long/2addr v11, v13

    cmp-long v11, v11, v5

    if-eqz v11, :cond_6

    iget-object v11, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v11, :cond_6

    :cond_4
    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v12, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v12, v12, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v12

    goto :goto_3

    :cond_5
    iget-object v12, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v12

    :goto_3
    const-string v15, "intf.annotation.members.cant.have.params"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v15, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_4
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, v6, v10}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_4

    :cond_7
    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v5, v10, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkVarargsMethodDecl(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5, v6, v10}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5, v6, v10}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_8
    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v5, v0, v6}, Lorg/openjdk/tools/javac/comp/MemberEnter;->methodEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v5

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v1, v6, v5}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v11, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v6, v11, v5}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_9
    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v13

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    if-eqz v5, :cond_c

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    const-string v11, "throws.not.allowed.in.intf.annotation"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v11, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    const-string v11, "intf.annotation.members.cant.have.type.params"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v11, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationType(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    :cond_c
    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    :goto_5
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v11, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v11, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    iget-object v12, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v12, v12, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v15, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v15, v15, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v11, v12, v15}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_5

    :cond_d
    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-nez v5, :cond_10

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v5, :cond_e

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v13

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    if-nez v5, :cond_e

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    const-string v7, "default.allowed.in.intf.annotation.member"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    if-nez v3, :cond_f

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v11, 0x500

    and-long/2addr v5, v11

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-nez v3, :cond_17

    :cond_f
    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "missing.meth.body.or.decl.abstract"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_10
    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide v11, 0x80000000402L

    and-long/2addr v5, v11

    const-wide/16 v11, 0x400

    cmp-long v3, v5, v11

    if-nez v3, :cond_12

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v5

    const-wide/16 v11, 0x200

    and-long/2addr v5, v11

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-eqz v3, :cond_11

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "intf.meth.cant.have.body"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_11
    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "abstract.meth.cant.have.body"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_12
    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v11, 0x100

    and-long/2addr v5, v11

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-eqz v3, :cond_13

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v6, "native.meth.cant.have.body"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_13
    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v5, :cond_16

    iget-object v3, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, v5, :cond_16

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v5}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isSelfCall(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_6

    :cond_14
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x4000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_16

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v11, 0x1000000000L

    and-long/2addr v4, v11

    cmp-long v4, v4, v6

    if-nez v4, :cond_16

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isSuperCall(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "call.to.super.not.allowed.in.enum.ctor"

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_15
    :goto_6
    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Attr;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v11, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v7, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v7

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v11

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v12

    invoke-virtual {v6, v7, v11, v12, v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->SuperCall(Lorg/openjdk/tools/javac/tree/TreeMaker;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    :cond_16
    :goto_7
    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v10, v2, v5}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1, v3, v10}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    :cond_17
    :goto_8
    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, v8}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, v9}, Lorg/openjdk/tools/javac/comp/Check;->setMethod(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-void

    :goto_9
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v8}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/comp/Check;->setMethod(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    throw v0
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->completeUsesProvides()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkModuleName(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->flush(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    move-object v3, v2

    move-object v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v4, v1, v5}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    new-instance v4, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v4, v2, v5}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :goto_1
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "illegal.initializer.for.type"

    invoke-virtual {v2, v3, v5, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    if-eqz v3, :cond_4

    invoke-virtual {p0, v3, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribExprs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v0, v1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "generic.array.creation"

    invoke-virtual {v0, v1, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 28

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v8

    iget-object v9, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    move-object/from16 v27, v5

    move-object v5, v3

    move-object/from16 v3, v27

    goto :goto_2

    :cond_0
    :goto_1
    move-object v5, v4

    goto :goto_2

    :cond_1
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :goto_2
    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v6, :cond_6

    iget-object v11, v10, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v12, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v13, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v10, v12, v13}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lorg/openjdk/tools/javac/comp/Check;->checkRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v11, v10, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v12, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v11

    iget-object v12, v10, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v12, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    move-object v12, v3

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v12, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v11, v6, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v6

    iget-object v11, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v11, v11, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v11, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    invoke-virtual {v0, v11}, Lorg/openjdk/tools/javac/tree/JCTree;->getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result v12

    invoke-interface {v11, v6, v12}, Lorg/openjdk/tools/javac/tree/EndPosTable;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v11}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v1

    check-cast v11, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v12, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v11, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v11, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v10, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v11, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v6, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v6

    :cond_3
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v12, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v6

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v10, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v11, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v6, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v6

    :cond_5
    :goto_3
    move-object v11, v6

    goto :goto_4

    :cond_6
    move-object v11, v1

    move-object v6, v3

    :goto_4
    const/4 v12, 0x0

    :try_start_0
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v13, 0x1

    iput-boolean v13, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->isNewClass:Z

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isEnumInit(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    move-object v2, v11

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    invoke-virtual {v10, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribIdentAsEnumType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_7
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v10, v11, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    iget-object v2, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v12, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->isNewClass:Z

    iget-object v2, v10, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkDiamond(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v15

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v1, v11, v8}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v15, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v6}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->setSymbol(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v1, v3

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v5, :cond_8

    iput-object v1, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_8
    invoke-virtual {v15}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v9, :cond_9

    iget-object v1, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "anon.class.impl.intf.no.qual.for.new"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    iget-object v1, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "qualified.new.of.static.class"

    invoke-virtual {v1, v2, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    iget-object v1, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, v2, v3, v15}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveImplicitThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    :cond_b
    :goto_6
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    sget-object v14, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v10, v14, v2, v8, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribArgs(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v6

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v10, v2, v8}, Lorg/openjdk/tools/javac/comp/Attr;->attribTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v15, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object/from16 v16, v14

    iget-wide v13, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v17, 0x4000

    and-long v13, v13, v17

    const-wide/16 v21, 0x0

    cmp-long v3, v13, v21

    if-eqz v3, :cond_d

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    move-object v5, v3

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v13, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long v13, v13, v17

    cmp-long v5, v13, v21

    if-eqz v5, :cond_c

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eq v3, v0, :cond_d

    :cond_c
    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v13, "enum.cant.be.instantiated"

    new-array v14, v12, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v13, v14}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v5, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v3, v5, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    move v3, v12

    :goto_7
    if-nez v9, :cond_f

    if-nez v3, :cond_f

    iget-object v3, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v13

    const-wide/16 v17, 0x600

    and-long v13, v13, v17

    cmp-long v3, v13, v21

    if-eqz v3, :cond_f

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v13, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "abstract.cant.be.instantiated"

    invoke-virtual {v3, v5, v14, v13}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    move-object v13, v1

    move-object v14, v2

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    if-eqz v9, :cond_12

    iget-object v3, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v5, "anon.class.impl.intf.no.args"

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5, v13}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "anon.class.impl.intf.no.typeargs"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_8

    :cond_12
    move-object v13, v1

    move-object v14, v2

    move v1, v12

    :goto_9
    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v5, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v12

    invoke-direct {v5, v1, v2, v3, v12}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    invoke-virtual {v8, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v12

    iget-object v1, v12, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    if-eqz v9, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v4, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v22

    move-object/from16 v21, v1

    move-object/from16 v23, v12

    move-object/from16 v24, v5

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    invoke-virtual/range {v21 .. v26}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveDiamond(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v15, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    new-instance v18, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10, v2, v13, v14}, Lorg/openjdk/tools/javac/comp/Attr;->newMethodTemplate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v2, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {v10, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->diamondContext(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-result-object v19

    sget-object v21, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_TREE_UPDATE:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v22, v5

    move-object/from16 v5, v19

    move-object/from16 v23, v7

    move-object v7, v6

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v15}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, v17

    move-object v5, v12

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v15}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v10, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithReturn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    :cond_14
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v12, 0x1

    invoke-virtual {v1, v2, v3, v12}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    move-object v4, v1

    move-object/from16 v27, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v27

    goto/16 :goto_f

    :cond_15
    move-object/from16 v23, v7

    const/4 v12, 0x1

    move-object v7, v6

    if-nez v1, :cond_1a

    invoke-virtual {v8, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v6

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    if-eqz v9, :cond_16

    move v3, v12

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    :goto_b
    iput-boolean v3, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v4, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    move-object v4, v14

    move-object/from16 v5, v16

    move-object v14, v1

    move-object/from16 v20, v15

    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v17, v20

    move-object/from16 v18, v13

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v19}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v14

    iput-object v14, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    if-nez v9, :cond_19

    new-instance v15, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-virtual {v10, v1, v13, v4}, Lorg/openjdk/tools/javac/comp/Attr;->newMethodTemplate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_TREE_UPDATE:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-direct {v15, v10, v7, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v16, v4

    move-object v4, v14

    move-object v14, v5

    move-object v5, v6

    move-object v12, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v12, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->lastResolveVarargs()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_17

    goto :goto_c

    :cond_17
    const/4 v12, 0x0

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v12, 0x1

    :goto_d
    invoke-static {v12}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    goto :goto_e

    :cond_19
    move-object/from16 v16, v4

    move-object v14, v5

    goto :goto_e

    :cond_1a
    move-object/from16 v20, v15

    move-object/from16 v27, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v27

    :cond_1b
    :goto_e
    move-object/from16 v4, v20

    :goto_f
    if-eqz v9, :cond_1c

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v5, v9

    move-object v6, v8

    move-object v0, v7

    move-object v7, v13

    move-object/from16 v8, v16

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lorg/openjdk/tools/javac/comp/Attr;->visitAnonymousClassDefinition(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    return-void

    :cond_1c
    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v1, :cond_1e

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1e

    move-object v7, v4

    goto :goto_10

    :cond_1d
    move-object/from16 v23, v7

    :cond_1e
    move-object/from16 v7, v23

    :goto_10
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {v10, v0, v7, v14, v1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/comp/w;

    invoke-direct {v3, v0}, Lorg/openjdk/tools/javac/comp/w;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    :cond_1f
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0, v8}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void

    :goto_11
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isNewClass:Z

    throw v0
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "illegal.start.of.type"

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq v0, v1, :cond_1

    :cond_0
    move-object v11, v15

    move v15, v14

    goto/16 :goto_f

    :cond_1
    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v15}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    :try_start_0
    iget-object v1, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual/range {p0 .. p1}, Lorg/openjdk/tools/javac/comp/Attr;->memberReferenceQualifierResult(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v3

    invoke-virtual {v8, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v2

    sget-object v13, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "invalid.mref"

    if-ne v2, v13, :cond_2

    :try_start_1
    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkConstructorRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v4

    invoke-static {v4}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v4

    iget-object v5, v8, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v6, "mref.infer.and.explicit.params"

    new-array v7, v14, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v12, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :cond_2
    move-object v11, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v15

    goto/16 :goto_e

    :goto_0
    invoke-virtual {v11}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v11, v15, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v11, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :cond_3
    iget-object v1, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_4

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, v2, v3, v14}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Z)V

    goto :goto_2

    :cond_4
    iget-object v1, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v3, :cond_5

    move v1, v10

    goto :goto_1

    :cond_5
    move v1, v14

    :goto_1
    iput-boolean v1, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    :goto_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v2, :cond_6

    invoke-virtual {v8, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_6
    move-object v9, v1

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v7, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v1, v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/openjdk/tools/javac/comp/Attr;->isSerializable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v19, v10

    goto :goto_3

    :cond_7
    move/from16 v19, v14

    :goto_3
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    const/4 v2, 0x0

    invoke-virtual {v8, v15, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->getTargetInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;

    move-result-object v1

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->target:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->descriptor:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Attr;->setFunctionalInfo(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    invoke-virtual/range {v20 .. v20}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    :cond_8
    move-object/from16 v16, v1

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->save()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1
    :try_end_1
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v5}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v17

    iget-object v5, v8, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Resolve;->basicReferenceChooser:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v9

    move-object v9, v2

    move v2, v10

    move-object v10, v0

    move-object v2, v11

    move-object/from16 v11, p1

    move-object/from16 v23, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v4

    move v4, v14

    move-object v14, v7

    move-object v4, v15

    move-object v15, v6

    move-object/from16 v18, v5

    :try_start_3
    invoke-virtual/range {v9 .. v18}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMemberReference(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v9, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v9}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->rollback(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v1, v5, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v5, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;

    iget-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v5, :cond_d

    sget-object v0, Lorg/openjdk/tools/javac/comp/Attr$10;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected result kind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :pswitch_0
    const/16 v24, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v11, v4

    goto/16 :goto_e

    :pswitch_1
    const/16 v24, 0x1

    :goto_4
    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v12, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v14, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object v10, v0

    move-object/from16 v11, p1

    move-object v13, v2

    move-object v15, v7

    move-object/from16 v16, v6

    invoke-virtual/range {v9 .. v16}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    if-eqz v24, :cond_9

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_9
    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    goto :goto_5

    :goto_6
    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v3

    const-string v5, "invalid.mref"

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v6

    invoke-static {v6}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v6

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    move-object v11, v4

    move-object/from16 v4, p1

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    if-eqz v24, :cond_a

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    move-object/from16 v12, v21

    if-ne v12, v1, :cond_b

    iput-object v12, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v12, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :catch_2
    move-exception v0

    goto/16 :goto_e

    :cond_a
    move-object/from16 v12, v21

    :cond_b
    if-eqz v24, :cond_c

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1, v11, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_7

    :cond_c
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Log;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :goto_7
    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v12}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :cond_d
    move-object v11, v4

    move-object/from16 v12, v21

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v10, v1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;->referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v1

    iput-boolean v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->ownerAccessible:Z

    invoke-virtual/range {v20 .. v20}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v4, Lorg/openjdk/tools/javac/code/Type;->recoveryType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v1, v4, :cond_e

    iput-object v12, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v12, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :cond_e
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    if-nez v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v1

    if-ne v1, v3, :cond_f

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_f

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, v8, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, v3, v4, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveImplicitThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    :cond_f
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    move-object/from16 v3, v22

    if-ne v1, v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v1

    sget-object v3, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    if-ne v1, v3, :cond_10

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->isUnbound()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {v20 .. v20}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v3, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkRaw(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_10
    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "static.mref.with.targs"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v12}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :cond_11
    const/4 v5, 0x0

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->SUPER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    if-ne v1, v3, :cond_12

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Resolve;->checkNonAbstract(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_12
    if-eqz v19, :cond_13

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    const/4 v3, 0x1

    invoke-virtual {v1, v11, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkAccessFromSerializableElement(Lorg/openjdk/tools/javac/tree/JCTree;Z)V

    goto :goto_8

    :cond_13
    const/4 v3, 0x1

    goto :goto_8

    :cond_14
    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_8
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual/range {v20 .. v20}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    sget-object v13, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v13}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    goto :goto_9

    :cond_15
    invoke-virtual/range {v20 .. v20}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    :goto_9
    iget-object v13, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->isUnbound()Z

    move-result v13

    if-eqz v13, :cond_16

    iget-object v13, v7, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_a

    :cond_16
    move-object v13, v7

    :goto_a
    invoke-virtual {v8, v4, v13, v6}, Lorg/openjdk/tools/javac/comp/Attr;->newMethodTemplate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    new-instance v6, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;

    iget-object v13, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v13, v13, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v6, v8, v13}, Lorg/openjdk/tools/javac/comp/Attr$FunctionalReturnContext;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    sget-object v13, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_TREE_UPDATE:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {v1, v4, v6, v13}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v13

    iget-object v4, v10, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v1, p0

    move-object v14, v2

    move v15, v3

    move-object/from16 v2, p1

    move-object v3, v4

    move v6, v5

    move-object v4, v9

    move-object v5, v0

    move v15, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v1, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->isUnbound()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    iget-object v2, v7, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v2

    iget-object v3, v7, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "Can\'t get here"

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v7, v8, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v10, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v10

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v9, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->adjustMethodReturnType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithReturn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    move-object v4, v1

    goto :goto_b

    :cond_18
    move-object v9, v6

    move-object v4, v9

    :goto_b
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v1, v2, :cond_19

    const/4 v14, 0x1

    goto :goto_c

    :cond_19
    move v14, v15

    :goto_c
    iput-object v12, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkReferenceCompatible(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Z)V

    if-nez v14, :cond_1a

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    move-object/from16 v2, v20

    filled-new-array {v2, v12}, [Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {v8, v11, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->checkAccessibleTypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/InferenceContext;[Lorg/openjdk/tools/javac/code/Type;)V

    :cond_1a
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {v8, v11, v12, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :catchall_0
    move-exception v0

    move-object v11, v4

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v11, v15

    :goto_d
    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->rollback(Lorg/openjdk/tools/javac/util/List;)V

    throw v0
    :try_end_5
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_e
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1, v11, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "unexpected.mref"

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, v8, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v1, "ret.outside.meth"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "unexpected.ret.val"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v3, "missing.ret.val"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->NIL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v3, :cond_3

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v3, :cond_3

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {v0, v2}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_2

    filled-new-array {v0, v3, v2}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    filled-new-array {v0, v1, v3}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    :cond_4
    :goto_1
    iget-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v4, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-direct {v3, v6, v0, v4}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v6, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {v6, v1}, Lorg/openjdk/tools/javac/comp/Attr;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :cond_5
    move-object v8, v1

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/4 v9, 0x0

    if-ne v0, v1, :cond_7

    move-object v0, v8

    :goto_2
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_2

    :cond_6
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "type.var.cant.be.deref"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2, v8}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v7, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iput-object v0, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void

    :cond_7
    iget-object v0, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v10

    iget-object v4, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v11, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v12, 0x1

    if-eqz v10, :cond_8

    iget-object v2, v10, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v3, :cond_8

    move v2, v12

    goto :goto_3

    :cond_8
    move v2, v9

    :goto_3
    iput-boolean v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v5, v6, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr;->selectSym(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v13, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v13, :cond_9

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_9

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_9

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "not.encl.class"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    :cond_9
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Attr;->isType(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {v6, v8}, Lorg/openjdk/tools/javac/comp/Attr;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    iget-object v4, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, v6, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr;->selectSym(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_a
    move-object v3, v0

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/AttrContext;->lastResolveVarargs()Z

    iput-object v3, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v8, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Attr;->isType(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_b

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v8, v12}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    :cond_b
    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v13, :cond_c

    move-object v0, v3

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v6, v7, v1, v0, v12}, Lorg/openjdk/tools/javac/comp/Attr;->checkInit(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Z)V

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ASG:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pkind()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->subset(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v6, v1, v0, v2, v4}, Lorg/openjdk/tools/javac/comp/Attr;->checkAssignable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_c
    if-eqz v10, :cond_d

    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v13, :cond_d

    move-object v0, v10

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_d

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->close:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableClose:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v10, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0, v1, v2, v12}, Lorg/openjdk/tools/javac/code/Symbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->TRY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "try.explicit.close.call"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v2, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Attr;->isType(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v10, :cond_e

    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    iget-object v0, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    if-nez v10, :cond_f

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    goto :goto_4

    :cond_f
    iget-object v2, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->toSelector()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v2

    :goto_4
    new-instance v4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Attr;->pt()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    invoke-direct {v4, v6, v5, v9}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v6, v0, v1, v2, v4}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v7, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_10
    invoke-static {v10}, Lorg/openjdk/tools/javac/comp/Attr;->isType(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x8

    if-eqz v0, :cond_14

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v9, :cond_11

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v9, v9, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-eqz v9, :cond_13

    iget-object v9, v8, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v9, v0, :cond_13

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Lorg/openjdk/tools/javac/comp/Check;->earlyRefError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_5

    :cond_11
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v14

    and-long/2addr v14, v4

    cmp-long v0, v14, v1

    if-nez v0, :cond_13

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v9, :cond_13

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v13, :cond_12

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v9, :cond_13

    :cond_12
    iget-object v14, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    new-instance v15, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v15, v14, v3}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v16

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    const/16 v19, 0x1

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v19}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    :cond_13
    :goto_5
    iget-boolean v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->allowStaticInterfaceMethods:Z

    if-nez v0, :cond_15

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v9, :cond_15

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v9, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    iget-object v12, v6, Lorg/openjdk/tools/javac/comp/Attr;->sourceName:Ljava/lang/String;

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "static.intf.method.invoke.not.supported.in.source"

    invoke-virtual {v0, v9, v10, v13, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_14
    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v9, :cond_15

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v9

    and-long/2addr v9, v4

    cmp-long v0, v9, v1

    if-eqz v0, :cond_15

    iget-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, v6, Lorg/openjdk/tools/javac/comp/Attr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v9, :cond_15

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v9, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->kindName()Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v9

    iget-object v10, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "static.not.qualified.by.type"

    invoke-virtual {v0, v7, v10, v9}, Lorg/openjdk/tools/javac/comp/Check;->warnStatic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    :goto_6
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    if-eqz v0, :cond_16

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v9

    and-long/2addr v4, v9

    cmp-long v0, v4, v1

    if-nez v0, :cond_16

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/openjdk/tools/javac/comp/Resolve;->checkNonAbstract(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_16

    move-object v2, v0

    goto :goto_7

    :cond_16
    move-object v2, v8

    :goto_7
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isSerializable:Z

    if-eqz v1, :cond_17

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isLambda:Z

    invoke-virtual {v1, v7, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkAccessFromSerializableElement(Lorg/openjdk/tools/javac/tree/JCTree;Z)V

    :cond_17
    iget-object v4, v6, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v11, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    iget-object v5, v6, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Attr;->checkId(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v6, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitSkip(Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 13

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v0, v6}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowStringsInSwitch:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v7, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v8, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    const-string v9, "string.switch.not.supported.in.source"

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Attr;->sourceName:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    if-nez v5, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v6, v7, v0, v8}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    move v7, v4

    :goto_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v9, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_7

    const-string v10, "duplicate.case.label"

    if-eqz v2, :cond_4

    :try_start_1
    invoke-direct {p0, v9, v0}, Lorg/openjdk/tools/javac/comp/Attr;->enumConstant(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v10, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    const-string v11, "enum.label.must.be.unqualified.enum"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v11, v10, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v9, v1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    sget-object v11, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v9, v11}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v10, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    if-eqz v5, :cond_5

    const-string v11, "string.const.req"

    goto :goto_3

    :cond_5
    const-string v11, "const.expr.req"

    :goto_3
    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v11, v10, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-eqz v7, :cond_8

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    const-string v11, "duplicate.default.label"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    move v7, v3

    :cond_9
    :goto_4
    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v10, v10, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v10, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v10, v9}, Lorg/openjdk/tools/javac/comp/Attr;->attribStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v8, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-static {v8, v9}, Lorg/openjdk/tools/javac/comp/Attr;->addVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->addVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    throw p1

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void

    :goto_5
    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    throw p1
.end method

.method public visitSynchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowPoly:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowPoly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1, v0, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 10

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    move-object v2, v0

    :goto_0
    :try_start_1
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Attr$1;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v5, p0, v6}, Lorg/openjdk/tools/javac/comp/Attr$1;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    new-instance v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v6, p0, v7, v8, v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v4, v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v5, v0, v6}, Lorg/openjdk/tools/javac/comp/Attr;->checkAutoCloseable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    sget-object v5, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, v4, v2, v6}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    :try_start_2
    iget-object v1, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    :cond_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v4, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isMultiCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-wide v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v8, 0x8000000010L

    or-long/2addr v6, v8

    iput-wide v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v7, :cond_5

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    :cond_5
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v6, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v8, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v8, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v6, v4, v7}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v2, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :goto_4
    iget-object v1, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    throw p1

    :cond_6
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-void

    :goto_5
    if-eqz v1, :cond_8

    :try_start_5
    iget-object v1, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    :cond_8
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    throw p1
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    :cond_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v4

    if-ne v3, v4, :cond_7

    move-object v3, v2

    :goto_0
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type;->withTypeVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v4}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_2
    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_5

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_1
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eq v4, v0, :cond_6

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/code/Types;->asOuterSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    :goto_2
    new-instance v3, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getMetadata()Lorg/openjdk/tools/javac/code/TypeMetadata;

    move-result-object v1

    invoke-direct {v3, v0, v2, v4, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/TypeMetadata;)V

    move-object v0, v3

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "wrong.number.type.args"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "type.doesnt.take.params"

    invoke-virtual {v0, v2, v3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_9
    :goto_4
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->allowPoly:Z

    if-eqz v3, :cond_1

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REFERENCE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    new-instance v2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Attr$7;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {v5, p0, v6}, Lorg/openjdk/tools/javac/comp/Attr$7;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    invoke-direct {v2, p0, v3, v0, v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    :goto_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v3, v5, v2, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCastable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {v3, v2, v0}, Lorg/openjdk/tools/javac/comp/ConstFold;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_4
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Attr;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    if-nez v4, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkRedundantCast(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V

    :cond_5
    return-void
.end method

.method public visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->typeOfTag:[Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTypeIntersection(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->checkIntersection(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateTypeParameterSecondStage(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Attr;->checkIntersection(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    :cond_1
    return-void
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkNullOrRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkClassOrArrayType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    const-string v5, "illegal.generic.type.for.instof"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v2, v4, v5, v3}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Z)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkCastable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTypeUnion(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;)V
    .locals 11

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v6, v4, v7}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/openjdk/tools/javac/comp/Check;->intersects(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v4, v6}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v8, v6, v4}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v8

    if-nez v7, :cond_2

    if-eqz v8, :cond_1

    :cond_2
    if-eqz v7, :cond_3

    move-object v8, v4

    goto :goto_2

    :cond_3
    move-object v8, v6

    :goto_2
    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v4

    :goto_3
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v9

    const-string v10, "multicatch.types.must.be.disjoint"

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v9, v10, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_7
    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Types;->lub(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->NO_TREE_UPDATE:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v4

    invoke-virtual {p0, p1, v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    move-object v0, v2

    :goto_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$UnionClassType;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-direct {v2, v1, v0}, Lorg/openjdk/tools/javac/code/Type$UnionClassType;-><init>(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/util/List;)V

    move-object v1, v2

    :cond_a
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isIncOrDecUnaryOp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->varAssignmentInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lorg/openjdk/tools/javac/comp/Operators;->resolveUnary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Operators;->noOpSymbol:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isIncOrDecUnaryOp()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :goto_1
    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {v3, v1, v0}, Lorg/openjdk/tools/javac/comp/ConstFold;->fold1(ILorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->blockAnnotations()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/MemberEnter;->memberEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    throw p1

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    :cond_2
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v7, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->IMPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne v3, v7, :cond_3

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    const-wide v9, 0x200000000L

    and-long/2addr v7, v9

    cmp-long v3, v7, v5

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v8, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    xor-int/2addr v3, v4

    invoke-virtual {v7, v8, v9, v3}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Z)V

    :try_start_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->flush(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecatedAnnotation(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_5

    iget-wide v7, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v9, 0x10

    and-long/2addr v7, v9

    cmp-long v4, v7, v5

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/MemberEnter;->needsLazyConstValue(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v3, p1, v4}, Lorg/openjdk/tools/javac/comp/MemberEnter;->initEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v1, v5, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    check-cast v4, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v0, v4, Lorg/openjdk/tools/javac/comp/AttrContext;->enclVar:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    :cond_5
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    sget-object v1, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Attr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->boundClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v0, v2, v3}, Lorg/openjdk/tools/javac/code/Type$WildcardType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/BoundKind;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Attr;->check(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method
