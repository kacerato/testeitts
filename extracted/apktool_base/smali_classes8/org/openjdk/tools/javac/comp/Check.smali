.class public Lorg/openjdk/tools/javac/comp/Check;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;,
        Lorg/openjdk/tools/javac/comp/Check$DefaultMethodClashFilter;,
        Lorg/openjdk/tools/javac/comp/Check$ClashFilter;,
        Lorg/openjdk/tools/javac/comp/Check$CycleChecker;,
        Lorg/openjdk/tools/javac/comp/Check$Validator;,
        Lorg/openjdk/tools/javac/comp/Check$NestedCheckContext;,
        Lorg/openjdk/tools/javac/comp/Check$CheckContext;
    }
.end annotation


# static fields
.field protected static final checkKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Check;",
            ">;"
        }
    .end annotation
.end field

.field private static final diamondTypeChecker:Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$SimpleVisitor<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final ignoreAnnotatedCasts:Z = true


# instance fields
.field allowDefaultMethods:Z

.field allowDiamondWithAnonymousClassCreation:Z

.field allowPrivateSafeVarargs:Z

.field allowSimplifiedVarargs:Z

.field allowStrictMethodClashCheck:Z

.field basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

.field private compiled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTargets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation
.end field

.field private final deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

.field private deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

.field private deprecationHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

.field private final dfltTargetMeta:[Lorg/openjdk/tools/javac/util/Name;

.field private final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private equalsHasCodeFilter:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private final infer:Lorg/openjdk/tools/javac/comp/Infer;

.field isTypeArgErroneous:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$UnaryVisitor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lint:Lorg/openjdk/tools/javac/code/Lint;

.field private localClassNameIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private method:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field overrideWarner:Lorg/openjdk/tools/javac/util/Warner;

.field private final profile:Lorg/openjdk/tools/javac/jvm/Profile;

.field private removalHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

.field private final rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field private final source:Lorg/openjdk/tools/javac/code/Source;

.field private sunApiHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field syntheticNameChar:C

.field private final typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

.field private final types:Lorg/openjdk/tools/javac/code/Types;

.field private uncheckedHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

.field private final warnOnAnyAccessToMembers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Check;->checkKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$2;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/Check$2;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Check;->diamondTypeChecker:Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->localClassNameIndexes:Ljava/util/Map;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Check$1;-><init>(Lorg/openjdk/tools/javac/comp/Check;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$3;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Check$3;-><init>(Lorg/openjdk/tools/javac/comp/Check;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->isTypeArgErroneous:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;

    new-instance v0, Lorg/openjdk/tools/javac/util/Warner;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Warner;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->overrideWarner:Lorg/openjdk/tools/javac/util/Warner;

    new-instance v0, Lorg/openjdk/tools/javac/comp/K;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/K;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->equalsHasCodeFilter:Lorg/openjdk/tools/javac/util/Filter;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Check;->checkKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Names;->PACKAGE:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/Names;->TYPE:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->FIELD:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Names;->METHOD:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v0, Lorg/openjdk/tools/javac/util/Names;->CONSTRUCTOR:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, v0, Lorg/openjdk/tools/javac/util/Names;->ANNOTATION_TYPE:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, v0, Lorg/openjdk/tools/javac/util/Names;->LOCAL_VARIABLE:Lorg/openjdk/tools/javac/util/Name;

    iget-object v8, v0, Lorg/openjdk/tools/javac/util/Names;->PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array/range {v1 .. v8}, [Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->dfltTargetMeta:[Lorg/openjdk/tools/javac/util/Name;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Infer;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Infer;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/TypeAnnotations;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    const-class v2, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Source;->allowSimplifiedVarargs()Z

    move-result v3

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Source;->allowDefaultMethods()Z

    move-result v3

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Check;->allowDefaultMethods:Z

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Source;->allowStrictMethodClashCheck()Z

    move-result v3

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Check;->allowStrictMethodClashCheck:Z

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Source;->allowPrivateSafeVarargs()Z

    move-result v3

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Check;->allowPrivateSafeVarargs:Z

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Source;->allowDiamondWithAnonymousClassCreation()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Check;->allowDiamondWithAnonymousClassCreation:Z

    const-string v2, "warnOnAccessToMembers"

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Check;->warnOnAnyAccessToMembers:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v1

    iput-char v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syntheticNameChar:C

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Profile;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v6, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v6}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v3

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v7, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REMOVAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v7}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v8

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v9, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v9}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v10

    new-instance v11, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    const-string v5, "deprecated"

    const/4 v12, 0x1

    move-object v1, v11

    move-object v2, v0

    move v4, v12

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;ZZLjava/lang/String;Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    iput-object v11, p0, Lorg/openjdk/tools/javac/comp/Check;->deprecationHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    new-instance v11, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    const-string v5, "removal"

    move-object v1, v11

    move v3, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;ZZLjava/lang/String;Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    iput-object v11, p0, Lorg/openjdk/tools/javac/comp/Check;->removalHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    new-instance v7, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    const-string v5, "unchecked"

    move-object v1, v7

    move v3, v10

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;ZZLjava/lang/String;Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    iput-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->uncheckedHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    new-instance v7, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    const-string v5, "sunapi"

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;ZZLjava/lang/String;Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    iput-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->sunApiHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkImportsUnique$8(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->method:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->isTrustMeAllowedOnMethod(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->isAPISymbol(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Check;->checkVisible(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V

    return-void
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/comp/Infer;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/comp/DeferredAttr;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->firstIncompatibleTypeArg(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/comp/Enter;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->noteCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    return-object p0
.end method

.method private asTypeParam(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "type.parameter"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private assertConvertible(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2, p3, p4}, Lorg/openjdk/tools/javac/code/Types;->isConvertible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p4}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)Z

    :cond_1
    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkType$0(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method private belongsToRestrictedPackage(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "org.openjdk.javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sun."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".internal."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkDeprecated$5(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private checkClassOverrideEqualsAndHash(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OVERRIDES:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->equals:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->hashCode:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->equalsHasCodeFilter:Lorg/openjdk/tools/javac/util/Filter;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, p2, v5, v4}, Lorg/openjdk/tools/javac/code/Types;->implementation(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;ZLorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v3, 0x1

    if-ne v0, p2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Check;->equalsHasCodeFilter:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {v4, v2, p2, v5, v6}, Lorg/openjdk/tools/javac/code/Types;->implementation(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;ZLorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4

    if-eq v4, v2, :cond_1

    move v5, v3

    :cond_1
    if-eqz v0, :cond_2

    if-nez v5, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "override.equals.but.not.hashcode"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private checkCyclicConstructor(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Symbol;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-wide/32 v4, 0x8000000

    and-long v8, v0, v4

    cmp-long v6, v8, v6

    if-eqz v6, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "recursive.ctor.invocation"

    invoke-virtual {p3, p1, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    or-long/2addr v0, v4

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, p1, v0, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkCyclicConstructor(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Symbol;Ljava/util/Map;)V

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v4, -0x8000001

    and-long/2addr v0, v4

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :goto_0
    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_1
    return-void
.end method

.method private checkExtends(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isUnbound()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->cvarUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isExtendsBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, p2, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isSuperBound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->wildLowerBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->notSoftSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    return v1
.end method

.method private checkNameClash(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;->accepts(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;->accepts(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->hasSameArgs(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkNonCyclic1(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type$TypeVar;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/32 v3, 0x10000000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p3, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v0, "cyclic.inheritance"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->getBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v0, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclic1(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private checkNonCyclicInternal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 12

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    const-wide/32 v8, 0x8000000

    and-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->noteCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_3

    :cond_1
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_6

    const-wide/32 v0, -0x8000001

    :try_start_0
    iget-wide v10, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v8, v10

    iput-wide v8, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v8, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v8}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v8, v4, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    move v9, v5

    if-eqz v8, :cond_2

    :goto_0
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v10}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclicInternal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v10

    and-int/2addr v9, v10

    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v4, :cond_3

    if-eqz v4, :cond_3

    sget-object v8, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v8}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, p1, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclicInternal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v4

    and-int/2addr v9, v4

    :cond_3
    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v8, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v8, v10, :cond_5

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclicInternal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v9, p1

    goto :goto_1

    :cond_4
    move v9, v5

    :cond_5
    :goto_1
    iget-wide v10, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v10

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_4

    :goto_2
    iget-wide v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v2

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    throw p1

    :cond_6
    :goto_3
    move v9, v5

    :goto_4
    if-eqz v9, :cond_8

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v8, 0x10000000

    and-long/2addr v0, v8

    cmp-long p1, v0, v6

    if-nez p1, :cond_7

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    move v9, v5

    :cond_8
    if-eqz v9, :cond_9

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_9
    return v9
.end method

.method private checkTypeContainsImportableElement(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkTypeContainsImportableElement(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/comp/Check;->checkTypeContainsImportableElement(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-virtual {p0, p4, p3}, Lorg/openjdk/tools/javac/comp/Check;->importAccessible(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p4, p2, p5}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p4

    if-eqz p4, :cond_4

    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method private checkUniqueImport(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;Z)Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/I;

    invoke-direct {v0, p5}, Lorg/openjdk/tools/javac/comp/I;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, p5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    if-nez p2, :cond_0

    if-nez p6, :cond_0

    iget-object p2, p5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p3, p2, v0}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    if-eqz p6, :cond_1

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p5, "already.defined.static.single.import"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p1, p5, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p5, "already.defined.single.import"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p1, p5, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return p3

    :cond_2
    iget-object p2, p5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p4, p2, v0}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p5, "already.defined.this.unit"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p1, p5, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private checkVisible(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V
    .locals 4

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->isAPISymbol(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object p4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, p2, v1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->LeaksNotAccessible(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p4

    invoke-direct {p0, p4}, Lorg/openjdk/tools/javac/comp/Check;->findExport(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    move-result-object v0

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/comp/Check;->findExport(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    move-result-object v1

    if-nez v0, :cond_1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object p4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, p2, v1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->LeaksNotAccessibleUnexported(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    return-void

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_3

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v2, p2, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->LeaksNotAccessibleUnexportedQualified(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_3
    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v0, p3, :cond_8

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v0, v1, :cond_8

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    :cond_4
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->isTransitive()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    goto :goto_0

    :cond_7
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object p4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, p2, v1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->LeaksNotAccessibleNotRequiredTransitive(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_8
    return-void
.end method

.method private closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    .line 5
    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    .line 11
    invoke-direct {p0, v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkDivZero$7(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-void
.end method

.method private defaultTargetMetaInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Symbol;)[Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->dfltTargetMeta:[Lorg/openjdk/tools/javac/util/Name;

    return-object p1
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkMethod$2(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkModuleExists$10(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method private findExport(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private firstDirectIncompatibility(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v5

    sget-object v6, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v8, v6, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v8, v9, :cond_0

    iget-object v8, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v8, v9}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide/16 v10, 0x1000

    and-long/2addr v8, v10

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v6

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v9, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v15, 0x0

    invoke-virtual {v8, v9, v14, v15}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide/16 v14, 0x400

    and-long/2addr v8, v14

    cmp-long v8, v8, v12

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v8

    iget-object v9, v6, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v6, v9, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v14, v9, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v15, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v14, v15, :cond_9

    iget-object v14, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v9, v14, v15}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v14

    and-long/2addr v14, v10

    cmp-long v14, v14, v12

    if-eqz v14, :cond_4

    goto/16 :goto_2

    :cond_4
    if-nez v7, :cond_5

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v2, v6}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    :cond_5
    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v14, v3, v9}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v14

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v15, v7, v14}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v15

    invoke-virtual {v14}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v14}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v13

    invoke-virtual {v12, v13, v10, v15}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v10

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v12, v11, v10}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/code/Type;->isPrimitiveOrVoid()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->isPrimitiveOrVoid()Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v13, v12, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v12, v11, v10, v13}, Lorg/openjdk/tools/javac/code/Types;->covariantReturnType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v13, v12, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v12, v10, v11, v13}, Lorg/openjdk/tools/javac/code/Types;->covariantReturnType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v10

    if-nez v10, :cond_9

    :cond_6
    invoke-virtual {v0, v6, v9, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkCommonOverriderIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_2

    :cond_7
    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v3, v9}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "types.incompatible.diff.ret"

    invoke-virtual {v4, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9

    :cond_8
    iget-object v10, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v10, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v10, v6, v9}, Lorg/openjdk/tools/javac/comp/Check;->checkNameClash(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v0, v6, v9, v4}, Lorg/openjdk/tools/javac/comp/Check;->checkCommonOverriderIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    filled-new-array {v6, v3, v9, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "name.clash.same.erasure.no.override"

    invoke-virtual {v2, v1, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9

    :cond_9
    :goto_2
    const-wide/16 v10, 0x1000

    const-wide/16 v12, 0x0

    goto/16 :goto_1

    :cond_a
    return-object v7
.end method

.method private firstIncompatibility(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;)V

    if-ne p2, p3, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;Ljava/util/Map;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v0, v2, p4}, Lorg/openjdk/tools/javac/comp/Check;->firstDirectIncompatibility(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private firstIncompatibleTypeArg(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v0, v3}, Lorg/openjdk/tools/javac/code/Types;->substBounds(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->withTypeVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Check;->isTypeArgErroneous(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkExtends(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Check;->isTypeArgErroneous(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_4
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkModuleRequires$12(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-void
.end method

.method private getDefaultTargetSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->defaultTargets:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->ANNOTATION_TYPE:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->CONSTRUCTOR:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->FIELD:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->LOCAL_VARIABLE:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->METHOD:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->PACKAGE:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->TYPE:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->defaultTargets:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->defaultTargets:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic h(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkSunAPI$6(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static synthetic i(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkPackageExistsForOpens$11(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    return-void
.end method

.method private implicitEnumFinalFlag(Lorg/openjdk/tools/javac/tree/JCTree;)J
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$1SpecialTreeVisitor;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Check$1SpecialTreeVisitor;-><init>(Lorg/openjdk/tools/javac/comp/Check;)V

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-boolean v3, v0, Lorg/openjdk/tools/javac/comp/Check$1SpecialTreeVisitor;->specialized:Z

    if-eqz v3, :cond_1

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x10

    return-wide v0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Check;->checkKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Check;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Check;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private is292targetTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)Z
    .locals 6

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x2000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isAPISymbol(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 6

    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isCanonical(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isDeprecatedOverrideIgnorable(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 9

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v4}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_1

    :goto_0
    return v3

    :cond_3
    if-eq v1, p1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    return v3
.end method

.method private isEffectivelyNonPublic(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v3, 0x1

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isTargetSubsetOf(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/Names;->TYPE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v4, :cond_3

    iget-object v5, v3, Lorg/openjdk/tools/javac/util/Names;->ANNOTATION_TYPE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v3, Lorg/openjdk/tools/javac/util/Names;->TYPE_USE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v5, :cond_1

    if-eq v0, v4, :cond_0

    iget-object v2, v3, Lorg/openjdk/tools/javac/util/Names;->ANNOTATION_TYPE:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v2, :cond_0

    iget-object v2, v3, Lorg/openjdk/tools/javac/util/Names;->TYPE_PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private isTrustMeAllowedOnMethod(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 8

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Check;->allowPrivateSafeVarargs:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    or-int/lit8 p1, p1, 0x18

    int-to-long v6, p1

    and-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static synthetic j(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkRedundantCast$1(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V

    return-void
.end method

.method public static synthetic k(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->lambda$checkUniqueImport$9(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Check;->lambda$new$3(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkDeprecated$5(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->warnDeprecated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private synthetic lambda$checkDivZero$7(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->warnDivZero(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-void
.end method

.method private static synthetic lambda$checkImportsUnique$8(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

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

.method private synthetic lambda$checkMethod$2(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 8

    invoke-virtual {p7, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method private synthetic lambda$checkModuleExists$10(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->MODULE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ModuleNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkModuleRequires$12(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->isTransitive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REQUIRES_TRANSITIVE_AUTOMATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->RequiresTransitiveAutomatic:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REQUIRES_AUTOMATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->RequiresAutomatic:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkPackageExistsForOpens$11(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPENS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->PackageEmptyOrNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkRedundantCast$1(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->CAST:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "redundant.cast"

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkSunAPI$6(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "sun.proprietary"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryWarning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkType$0(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-virtual {p5, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p5, p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method private static synthetic lambda$checkUniqueImport$9(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    iget-object p0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$isTypeAnnotation$4(ZLorg/openjdk/tools/javac/code/Attribute;)Z
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/comp/Check;->isTypeAnnotation(Lorg/openjdk/tools/javac/code/Attribute;Z)Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$new$3(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation_filter:Lorg/openjdk/tools/javac/util/Filter;

    invoke-interface {v0, p0}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x200000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic m(Lorg/openjdk/tools/javac/comp/Check;ZLorg/openjdk/tools/javac/code/Attribute;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->lambda$isTypeAnnotation$4(ZLorg/openjdk/tools/javac/code/Attribute;)Z

    move-result p0

    return p0
.end method

.method private noteCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "cyclic.inheritance"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void
.end method

.method public static protection(J)I
    .locals 2

    const-wide/16 v0, 0x7

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    const/4 p1, 0x2

    if-eqz p0, :cond_2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return p1
.end method

.method private syntheticError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "synthetic.name.conflict"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private validateAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->isAnnotationType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->annotationApplicable(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v3, "annotation.type.not.applicable"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->functionalInterfaceType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v2, :cond_3

    .line 5
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v2, :cond_1

    .line 6
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v0, "bad.functional.intf.anno"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "not.a.functional.intf"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "bad.functional.intf.anno.1"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private validateAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z
    .locals 9

    .line 9
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->getAnnotationElements()Ljava/util/Set;

    move-result-object v1

    .line 11
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 12
    sget-object v7, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    .line 14
    iget-object v7, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v7}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 15
    iget-object v8, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 17
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v8, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "duplicate.annotation.member.value"

    invoke-virtual {v4, v5, v8, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v6

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->getAnnotationElementsWithDefault()Ljava/util/Set;

    move-result-object v0

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    .line 21
    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 23
    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_1

    .line 24
    :cond_6
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_7

    const-string v1, "annotation.missing.default.value.1"

    goto :goto_2

    :cond_7
    const-string v1, "annotation.missing.default.value"

    .line 27
    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v6

    :cond_8
    if-eqz v4, :cond_9

    .line 28
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->validateTargetAnnotationValue(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v3, v6

    :goto_3
    return v3
.end method

.method private validateDefault(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v3, "invalid.repeatable.annotation.elem.nondefault"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p2, v3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validateDocumented(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->documentedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->documentedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "invalid.repeatable.annotation.not.documented"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p3, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private validateInherited(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->inheritedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->inheritedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "invalid.repeatable.annotation.not.inherited"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p3, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private validateRetention(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->getRetention(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->getRetention(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/comp/Check$5;->$SwitchMap$com$sun$tools$javac$code$Attribute$RetentionPolicy:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->SOURCE:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->RUNTIME:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    if-eq v0, v2, :cond_2

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v3, "invalid.repeatable.annotation.retention"

    filled-new-array {p1, v0, p2, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p3, v3, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private validateTarget(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 7

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->getAttributeTargetAttribute(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Attribute$Array;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Check;->getDefaultTargetSet()Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    instance-of v6, v5, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    check-cast v5, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->getAttributeTargetAttribute(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Attribute$Array;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Check;->getDefaultTargetSet()Ljava/util/Set;

    move-result-object v1

    goto :goto_5

    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v4, v2

    :goto_3
    if-ge v1, v4, :cond_5

    aget-object v5, v2, v1

    instance-of v6, v5, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    check-cast v5, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_5
    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->isTargetSubsetOf(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "invalid.repeatable.annotation.incompatible.target"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p3, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private validateValue(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, p2}, Lorg/openjdk/tools/javac/code/Types;->makeArrayType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type$ArrayType;

    move-result-object p2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invalid.repeatable.annotation.value.return"

    invoke-virtual {v1, p3, p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v0, "invalid.repeatable.annotation.no.value"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private withinAnonConstr(Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public annotationApplicable(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 11

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Check;->getAttributeTargetAttribute(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Attribute$Array;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->defaultTargetMetaInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Symbol;)[Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length p1, p1

    new-array p1, p1, [Lorg/openjdk/tools/javac/util/Name;

    move v3, v1

    :goto_0
    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    instance-of v5, v4, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    if-nez v5, :cond_1

    return v2

    :cond_1
    check-cast v4, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v0, p1

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_10

    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->TYPE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_3

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    return v2

    :cond_3
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->FIELD:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_4

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v4, v5, :cond_e

    return v2

    :cond_4
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->METHOD:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_5

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v4

    if-nez v4, :cond_e

    return v2

    :cond_5
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    const-wide v7, 0x200000000L

    const-wide/16 v9, 0x0

    if-ne v4, v6, :cond_6

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v7

    cmp-long v4, v4, v9

    if-eqz v4, :cond_e

    return v2

    :cond_6
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->CONSTRUCTOR:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_7

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_e

    return v2

    :cond_7
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->LOCAL_VARIABLE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_8

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v7

    cmp-long v4, v4, v9

    if-nez v4, :cond_e

    return v2

    :cond_8
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->ANNOTATION_TYPE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_9

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x2000

    and-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-eqz v4, :cond_e

    return v2

    :cond_9
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->PACKAGE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_a

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    return v2

    :cond_a
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/Names;->TYPE_USE:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v6, :cond_d

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v4, v5, :cond_c

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v4, v5, :cond_c

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_b

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_c
    return v2

    :cond_d
    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->TYPE_PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v5, :cond_f

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_e

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_e

    return v2

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_f
    return v2

    :cond_10
    return v1
.end method

.method public cannotOverride(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "cant.override"

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-string v0, "cant.implement"

    goto :goto_0

    :cond_1
    const-string v0, "clashes.with"

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    filled-new-array {p1, v2, p2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public castWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;

    const-string v3, "unchecked.cast.to.type"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v6
.end method

.method public checkAccessFromSerializableElement(Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check;->warnOnAnyAccessToMembers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isSuppressed(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v3, 0x200000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v3, :cond_2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->serializableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Check;->isEffectivelyNonPublic(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Check;->belongsToRestrictedPackage(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v2, "access.to.member.from.serializable.lambda"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v1, "access.to.member.from.serializable.element"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public checkAllDefined(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->firstUnimplementedAbstract(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v5, v0}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    filled-new-array {p2, v7, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "does.not.override.abstract"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkAnnotationResType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/comp/Check$5;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkAnnotationResType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclicElementsInternal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkCanonical(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->isCanonical(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "import.requires.canonical"

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkCastable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCastable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public checkCastable(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->castWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "inconvertible.types"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    .line 4
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public checkClassBounds(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 5
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->containsTypeEquivalent(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 10
    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Type;->toString(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Type;->toString(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 12
    const-string v3, "cant.inherit.diff.arg"

    invoke-virtual {v4, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkClassBounds(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Type;)V

    .line 14
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    .line 16
    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq p3, v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkClassBounds(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_3
    return-void
.end method

.method public checkClassBounds(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkClassBounds(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public checkClassOrArrayType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "type.req.class.array"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->asTypeParam(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->typeTagError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public checkClassOverrideEqualsAndHashIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eq p2, v0, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x400

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->comparatorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkClassOverrideEqualsAndHash(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    const-string v2, "type.req.class"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    .line 4
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->asTypeParam(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->typeTagError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    .line 9
    :goto_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const-string v1, "type.req.exact"

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->typeTagError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public checkCommonOverriderIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p3, p1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, p3, p2}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {p0, p3, v0}, Lorg/openjdk/tools/javac/comp/Check;->closure(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v4, p1, :cond_1

    if-eq v4, p2, :cond_1

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide v7, 0x80001000L    # 1.060999919E-314

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, p3, v4}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v4, v1}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v4, v2}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v4, v1}, Lorg/openjdk/tools/javac/code/Types;->returnTypeSubstitutable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v4, v2}, Lorg/openjdk/tools/javac/code/Types;->returnTypeSubstitutable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public checkCompatibleAbstracts(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 4

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Check;->firstIncompatibility(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkCompatibleConcretes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v3, v2

    :goto_0
    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v7, :cond_9

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide v8, 0x80001008L    # 1.060999923E-314

    and-long/2addr v6, v8

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-nez v6, :cond_9

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v5

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v7, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v13, 0x1

    invoke-virtual {v6, v7, v12, v13}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v6

    if-eq v6, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v3, v5}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v7

    iget-object v12, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v6, v12, :cond_2

    goto :goto_1

    :cond_2
    move-object v12, v2

    :goto_2
    sget-object v14, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v12, v14}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v14}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v14

    iget-object v15, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v14, v15}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v15, v5, :cond_7

    iget-object v13, v15, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v13, v10, :cond_6

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v10

    and-long/2addr v10, v8

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-nez v10, :cond_5

    iget-object v10, v15, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v10

    if-ne v10, v7, :cond_5

    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v15, v10, v11}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v15

    check-cast v10, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v11, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v8, 0x1

    invoke-virtual {v10, v11, v13, v8}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v9

    if-eq v9, v15, :cond_3

    :goto_4
    move v13, v8

    move-wide/from16 v10, v16

    :goto_5
    const-wide v8, 0x80001008L    # 1.060999923E-314

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v9, v12, v15}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v10, v6, v9}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v10, "concrete.inheritance.conflict"

    filled-new-array {v5, v3, v15, v12, v2}, [Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v13, p1

    invoke-virtual {v9, v13, v10, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    move-object/from16 v13, p1

    goto :goto_4

    :cond_5
    move-object/from16 v13, p1

    :goto_6
    move-wide/from16 v10, v16

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v13, p1

    const-wide/16 v16, 0x0

    goto :goto_6

    :cond_7
    move v8, v13

    move-object/from16 v13, p1

    move v13, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v16, v10

    move v8, v13

    move-object/from16 v13, p1

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v9, v12}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v12

    move v13, v8

    const-wide v8, 0x80001008L    # 1.060999923E-314

    goto/16 :goto_2

    :cond_9
    move-object/from16 v13, p1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v13, p1

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public checkCompatibleSupertypes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v3, v2, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkCompatibleAbstracts(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object v2, v0

    :goto_1
    if-eq v2, v1, :cond_3

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v3, v4, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkCompatibleAbstracts(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkCompatibleConcretes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public checkConflicts(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 10

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-eq p3, v0, :cond_3

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p2, v1, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    and-long/2addr v6, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v6, 0x80000000L

    and-long/2addr v2, v6

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v6

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v4

    cmp-long p3, v2, v8

    if-nez p3, :cond_1

    move-object p2, v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->syntheticError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    goto :goto_0

    :cond_3
    return-void
.end method

.method public checkConstructorRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkClassOrArrayType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x600

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "abstract.cant.be.instantiated"

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v6, 0x4000

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "enum.cant.be.instantiated"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v2, p2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "generic.array.creation"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :cond_3
    :goto_0
    return-object p2
.end method

.method public checkCyclicConstructors(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->firstConstructorCall(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v4, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v4}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v5, :cond_1

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v2, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v5, 0x40000000

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :goto_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    new-array v2, v1, [Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openjdk/tools/javac/code/Symbol;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-direct {p0, p1, v4, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCyclicConstructor(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Symbol;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public checkDefaultMethodClashes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    new-instance v1, Lorg/openjdk/tools/javac/comp/Check$DefaultMethodClashFilter;

    invoke-direct {v1, v0, v7}, Lorg/openjdk/tools/javac/comp/Check$DefaultMethodClashFilter;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/openjdk/tools/javac/code/Types;->membersClosure(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v8

    :goto_1
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v3, v1

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2, v7, v3}, Lorg/openjdk/tools/javac/code/Types;->interfaceCandidates(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_5

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v10

    const-wide v12, 0x80000000000L

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v5

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v10

    const-wide/16 v14, 0x400

    and-long/2addr v10, v14

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v6

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v10

    add-int/2addr v6, v10

    const/4 v10, 0x2

    if-lt v6, v10, :cond_4

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v6

    if-le v6, v4, :cond_3

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    const-string v4, "types.incompatible.unrelated.defaults"

    :goto_4
    move-object v10, v4

    goto :goto_5

    :cond_3
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    const-string v4, "types.incompatible.abstract.default"

    goto :goto_4

    :goto_5
    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, v7, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v4}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v4

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v7, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v12

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v13

    move-object v1, v4

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    move-object v5, v12

    move-object v6, v13

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v6, p1

    invoke-virtual {v11, v6, v10, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v6, p1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v6, p1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public checkDeprecated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecatedForRemoval()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecated()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    if-ne v0, p2, :cond_1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    new-instance v0, Lorg/openjdk/tools/javac/comp/U;

    invoke-direct {v0, p0, p1, p3}, Lorg/openjdk/tools/javac/comp/U;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V

    :cond_2
    return-void
.end method

.method public checkDeprecatedAnnotation(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEP_ANN:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecatableViaAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/32 v4, 0x20000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "missing.deprecated.annotation"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecatableViaAnnotation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "deprecated.annotation.has.no.effect"

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public checkDiamond(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 5

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check;->allowDiamondWithAnonymousClassCreation:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->DiamondAndAnonClassNotSupportedInSource(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->CantApplyDiamond1(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_1
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "cant.apply.diamond.1"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v3, "diamond.non.generic"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v3, "diamond.and.explicit.params"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2

    :cond_4
    :goto_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkClassType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public checkDiamondDenotable(Lorg/openjdk/tools/javac/code/Type$ClassType;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ClassType;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Check;->diamondTypeChecker:Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z
    .locals 3

    and-long/2addr p4, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_0

    and-long/2addr p2, p6

    cmp-long p6, p2, v0

    if-eqz p6, :cond_0

    iget-object p6, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p4, p5}, Lorg/openjdk/tools/javac/tree/TreeInfo;->firstFlag(J)J

    move-result-wide p4

    invoke-static {p4, p5}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object p4

    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->firstFlag(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object p2

    filled-new-array {p4, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "illegal.combination.of.modifiers"

    invoke-virtual {p6, p1, p3, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public checkDivZero(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 4

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/TypeTag;->isSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget p2, p2, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 p3, 0x6c

    if-eq p2, p3, :cond_0

    const/16 p3, 0x70

    if-eq p2, p3, :cond_0

    const/16 p3, 0x6d

    if-eq p2, p3, :cond_0

    const/16 p3, 0x71

    if-ne p2, p3, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    new-instance p3, Lorg/openjdk/tools/javac/comp/T;

    invoke-direct {p3, p0, p1}, Lorg/openjdk/tools/javac/comp/T;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V

    :cond_1
    return-void
.end method

.method public checkEmptyIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SKIP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EMPTY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "empty.if"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkFlags(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)J
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    sget-object v0, Lorg/openjdk/tools/javac/comp/Check$5;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v1, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x200

    const-wide/16 v5, 0x0

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    const-wide/16 v13, 0x400

    const-wide/16 v15, 0x4000

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    const-string v1, "enums.must.be.static"

    const-wide/16 v17, 0x8

    if-eqz v0, :cond_2

    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v11, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long v11, v11, v17

    cmp-long v0, v11, v5

    if-nez v0, :cond_0

    and-long v11, p2, v15

    cmp-long v0, v11, v5

    if-eqz v0, :cond_0

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v1, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x5c10

    :cond_1
    :goto_0
    move-wide/from16 v17, v5

    goto :goto_3

    :cond_2
    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v7, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v11, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v7, v11, :cond_6

    iget-object v7, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v11, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v7, v11, :cond_5

    iget-wide v11, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long v11, v11, v17

    cmp-long v0, v11, v5

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    and-long v11, p2, v15

    cmp-long v0, v11, v5

    if-eqz v0, :cond_4

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v1, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-wide/16 v0, 0x5e17

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/16 v0, 0x5e1f

    :goto_2
    const-wide/16 v11, 0x4200

    and-long v11, p2, v11

    cmp-long v7, v11, v5

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0x7e11

    goto :goto_0

    :goto_3
    and-long v11, p2, v3

    cmp-long v7, v11, v5

    if-eqz v7, :cond_7

    or-long v17, v17, v13

    :cond_7
    and-long v11, p2, v15

    cmp-long v7, v11, v5

    if-eqz v7, :cond_8

    const-wide/16 v11, -0x411

    and-long/2addr v0, v11

    move-object/from16 v7, p5

    invoke-direct {v8, v7}, Lorg/openjdk/tools/javac/comp/Check;->implicitEnumFinalFlag(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v11

    or-long v17, v17, v11

    :cond_8
    iget-object v7, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v11, v7, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v13, 0x800

    and-long/2addr v11, v13

    or-long v11, v17, v11

    :goto_4
    move-wide v15, v11

    :cond_9
    move-wide v11, v0

    goto/16 :goto_9

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    const-wide v11, 0x80000000000L

    const-wide/16 v17, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v15

    cmp-long v0, v0, v5

    if-eqz v0, :cond_c

    move-wide/from16 v0, v17

    move-wide v15, v0

    goto :goto_7

    :cond_c
    const-wide/16 v0, 0x7

    :goto_5
    move-wide v15, v5

    goto :goto_7

    :cond_d
    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long v15, v0, v3

    cmp-long v7, v15, v5

    if-eqz v7, :cond_12

    const-wide/16 v15, 0x2000

    and-long/2addr v0, v15

    cmp-long v0, v0, v5

    const-wide/16 v15, 0x401

    if-eqz v0, :cond_f

    :cond_e
    move-wide v0, v15

    goto :goto_7

    :cond_f
    const-wide v0, 0x8000000000aL

    and-long v0, p2, v0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_e

    and-long v0, p2, v17

    cmp-long v0, v0, v5

    if-eqz v0, :cond_10

    move-wide v0, v5

    goto :goto_6

    :cond_10
    const-wide/16 v0, 0x1

    :goto_6
    and-long v15, p2, v11

    cmp-long v7, v15, v5

    const-wide v15, 0x80000000c0bL

    if-eqz v7, :cond_11

    or-long/2addr v0, v13

    :cond_11
    move-wide/from16 v19, v0

    move-wide v0, v15

    move-wide/from16 v15, v19

    goto :goto_7

    :cond_12
    const-wide/16 v0, 0xd3f

    goto :goto_5

    :goto_7
    or-long v17, p2, v15

    and-long v13, v17, v13

    cmp-long v7, v13, v5

    if-eqz v7, :cond_13

    and-long v11, p2, v11

    cmp-long v7, v11, v5

    if-eqz v7, :cond_9

    :cond_13
    iget-object v7, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v11, v7, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v13, 0x800

    and-long/2addr v11, v13

    or-long/2addr v11, v15

    goto :goto_4

    :cond_14
    move-object/from16 v7, p5

    invoke-static/range {p5 .. p5}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isReceiverParam(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide v0, 0x200000000L

    :goto_8
    move-wide v11, v0

    move-wide v15, v5

    goto :goto_9

    :cond_15
    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v7, :cond_16

    const-wide v0, 0x200000010L

    goto :goto_8

    :cond_16
    iget-wide v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v3

    cmp-long v0, v0, v5

    if-eqz v0, :cond_17

    const-wide/16 v0, 0x19

    move-wide v11, v0

    move-wide v15, v11

    goto :goto_9

    :cond_17
    const-wide/16 v0, 0x40df

    goto :goto_8

    :goto_9
    const-wide v0, 0x80000000fffL

    and-long v0, p2, v0

    not-long v13, v11

    and-long/2addr v0, v13

    cmp-long v7, v0, v5

    if-eqz v7, :cond_19

    and-long v13, v0, v3

    cmp-long v5, v13, v5

    if-eqz v5, :cond_18

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "intf.not.allowed.here"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    or-long/2addr v11, v3

    goto/16 :goto_a

    :cond_18
    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mod.not.allowed.here"

    invoke-virtual {v2, v9, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_19
    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v13, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v13, :cond_1a

    const-wide/16 v4, 0x400

    const-wide v6, 0x8000000000aL

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const-wide/16 v4, 0xa

    const-wide v6, 0x80000000000L

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/16 v4, 0x600

    const-wide/16 v6, 0x130

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-wide/16 v4, 0x10

    const-wide/16 v6, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v13, :cond_1b

    const-wide/16 v4, 0x500

    const-wide/16 v6, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkDisjoint(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JJJ)Z

    :cond_1b
    :goto_a
    const-wide v0, -0x80000001000L

    or-long/2addr v0, v11

    and-long v0, p2, v0

    or-long/2addr v0, v15

    return-wide v0
.end method

.method public checkForBadAuxiliaryClassAccess(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->AUXILIARYCLASS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x100000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v1, p3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, v1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "auxiliary.class.accessed.from.outside.of.its.source.file"

    invoke-virtual {p2, p1, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkFunctionalInterface(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->functionalInterfaceType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->getModifiers()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->functionalInterfaceType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "bad.functional.intf.anno.1"

    invoke-virtual {p1, v0, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkHideClashes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lorg/openjdk/tools/javac/code/Types;->membersClosure(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object v1

    iget-object v2, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-boolean v5, p0, Lorg/openjdk/tools/javac/comp/Check;->allowStrictMethodClashCheck:Z

    invoke-virtual {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/code/Types;->isSubSignature(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v4}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->hasSameArgs(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    filled-new-array {p3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "name.clash.same.erasure.no.hide"

    invoke-virtual {p2, p1, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkPotentiallyAmbiguousOverloads(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkImplementations(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, p1, v0, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkImplementations(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public checkImplementations(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/Types;->closure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    :goto_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    .line 6
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v5, :cond_0

    .line 7
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x408

    and-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    .line 8
    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    .line 9
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v2, v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    .line 10
    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    .line 11
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    and-long/2addr v5, v7

    .line 12
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v9

    and-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 13
    invoke-virtual {p0, p1, v2, v1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkOverride(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkImportedPackagesObservable(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getImports()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-boolean v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->asterisk:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Convert;->packagePart(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Scope;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v4, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    const-string v5, "doesnt.exist"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v5, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public checkImportsResolvable(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 10

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getImports()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-boolean v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->asterisk:Lorg/openjdk/tools/javac/util/Name;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v8, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/comp/Check;->checkTypeContainsImportableElement(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/Name;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$KindName;->STATIC:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    iget-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    iget-object v8, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v8}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v8

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v8}, Lorg/openjdk/tools/javac/code/Kinds;->typeKindName(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v8

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    iget-object v9, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "cant.resolve.location"

    invoke-virtual {v3, v1, v4, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public checkImportsUnique(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 13

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v8

    iget-object v9, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v10, v1

    check-cast v10, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-object v1, v10, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->importScope:Lorg/openjdk/tools/javac/code/Scope;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/openjdk/tools/javac/comp/P;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/comp/P;-><init>()V

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkUniqueImport(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;Z)Z

    invoke-virtual {v8, v12}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Check;->checkUniqueImport(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;Z)Z

    invoke-virtual {v0, v12}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v10, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->importScope:Lorg/openjdk/tools/javac/code/Scope;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public checkLeaksNotAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v1, v3, :cond_2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v1, v2, :cond_2

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v1

    const-wide/32 v3, 0x1000000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/Check;->findExport(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/openjdk/tools/javac/comp/Check$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check$4;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;Z",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v10, p7

    invoke-virtual {v10, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v11

    new-instance v12, Lorg/openjdk/tools/javac/comp/L;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/L;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Z)V

    invoke-virtual {v10, v11, v12}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    return-object v9

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    if-eq v2, v5, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v5, v6, :cond_3

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v5, v6, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :cond_3
    if-eqz p4, :cond_6

    move-object/from16 v5, p4

    :goto_1
    iget-object v6, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v6, v2, :cond_4

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    iget-object v10, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v11, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v11, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v7, v10, v11}, Lorg/openjdk/tools/javac/comp/Check;->convertWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;

    move-result-object v7

    iget-object v10, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v11, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v11, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v6, v10, v11, v7}, Lorg/openjdk/tools/javac/comp/Check;->assertConvertible(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_4
    if-eqz p6, :cond_5

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_2
    iget-object v1, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_6

    iget-object v1, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v6, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v6, v0}, Lorg/openjdk/tools/javac/comp/Check;->convertWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;

    move-result-object v2

    iget-object v6, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, v6, v0, v2}, Lorg/openjdk/tools/javac/comp/Check;->assertConvertible(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v5, 0x400400000000L

    and-long/2addr v0, v5

    const-wide v5, 0x400000000L

    cmp-long v0, v0, v5

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual/range {p5 .. p5}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v5, v8, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v0}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "inexact.non-varargs.call"

    invoke-virtual {v1, v2, v5, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-eqz p6, :cond_9

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v8, Lorg/openjdk/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->trustMeType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->isTrustMeAllowedOnMethod(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "unchecked.generic.array.creation"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v5}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v5, 0x400000000000L

    and-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_9

    iget-object v1, v4, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->setVarargsElement(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_9
    return-object v9
.end method

.method public checkModuleExists(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    new-instance v1, Lorg/openjdk/tools/javac/comp/V;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/V;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V

    :cond_0
    return-void
.end method

.method public checkModuleName(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->MODULE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    if-eqz p1, :cond_3

    sget-object v0, Lorg/openjdk/tools/javac/comp/Check$5;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected qualified identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->MODULE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->PoorChoiceForModuleName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v0

    invoke-virtual {v2, v3, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_2
    move-object p1, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public checkModuleRequires(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)V
    .locals 4

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    new-instance v1, Lorg/openjdk/tools/javac/comp/J;

    invoke-direct {v1, p0, p2, p1}, Lorg/openjdk/tools/javac/comp/J;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V

    :cond_0
    return-void
.end method

.method public checkNonCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type$TypeVar;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclic1(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public checkNonCyclic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkNonCyclicInternal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z

    return-void
.end method

.method public checkNonCyclicDecl(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;-><init>(Lorg/openjdk/tools/javac/comp/Check;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, v0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->errorFound:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->partialCheck:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_0
    return-void
.end method

.method public checkNonCyclicElements(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/32 v2, 0x8000000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    const-wide v0, 0x800000000L

    const-wide/32 v4, -0x8000001

    :try_start_0
    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v7, v6, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v2, v7

    iput-wide v2, v6, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v6, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkAnnotationResType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void

    :goto_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v6, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long v3, v6, v4

    or-long/2addr v0, v3

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    throw v2
.end method

.method public checkNonCyclicElementsInternal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 10

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, 0x800000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-wide/32 v4, 0x8000000

    and-long v8, v0, v4

    cmp-long v6, v8, v6

    if-eqz v6, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cyclic.annotation.element"

    invoke-virtual {p2, p1, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    or-long/2addr v0, v4

    const-wide/32 v4, -0x8000001

    :try_start_0
    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v6, v7, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkAnnotationResType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void

    :goto_1
    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    throw p1
.end method

.method public checkNonVoid(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "void.not.allowed.here"

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public checkNotRepeated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "repeated.interface"

    invoke-virtual {p2, p1, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public checkNullOrRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "type.req.ref"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->typeTagError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public checkOverride(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ")V"
        }
    .end annotation

    .line 75
    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 76
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->finalize:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->enumFinalFinalize:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v1, v0, v3, v2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    const-string p3, "enum.no.finalize"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v1, v3, :cond_1

    .line 81
    invoke-virtual {p0, p2, v1, v0, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkOverride(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    .line 82
    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    .line 83
    invoke-virtual {p0, p2, v4, v0, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkOverride(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->overrideType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    .line 86
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->isAnonymousDiamond:Z

    if-eqz p1, :cond_9

    .line 87
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isPrivate()Z

    move-result p1

    if-nez p1, :cond_9

    .line 88
    :cond_5
    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/comp/Check;->isOverrider(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 89
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getModifiers()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    .line 91
    iget-object v0, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->overrideType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_6

    .line 92
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    .line 93
    :cond_7
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    if-eqz v2, :cond_8

    sget-object p3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->MethodDoesNotOverrideSuperclass:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    goto :goto_2

    :cond_8
    sget-object p3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->DiamondAnonymousMethodsImplicitlyOverride:Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    .line 94
    invoke-static {p3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->AnonymousDiamondMethodDoesNotOverrideSuperclass(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p3

    .line 95
    :goto_2
    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_9
    return-void
.end method

.method public checkOverride(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide v7, 0x80001000L    # 1.060999919E-314

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_10

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v9, 0x1000

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v9, 0x8

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    const-wide v11, 0x200000000000L

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 4
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->cannotOverride(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 6
    const-string v5, "override.static"

    invoke-virtual {v4, v0, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v3, v11

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void

    .line 8
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v13, 0x10

    and-long/2addr v5, v13

    cmp-long v5, v5, v7

    if-nez v5, :cond_f

    .line 9
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 10
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 11
    :cond_2
    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v13, 0x2000

    and-long/2addr v5, v13

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/openjdk/tools/javac/comp/Check;->protection(J)I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/openjdk/tools/javac/comp/Check;->protection(J)I

    move-result v6

    if-le v5, v6, :cond_5

    .line 13
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->cannotOverride(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v5

    .line 15
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v9

    const-wide/16 v13, 0x7

    and-long/2addr v9, v13

    cmp-long v6, v9, v7

    if-nez v6, :cond_4

    const-string v3, "package"

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    and-long/2addr v6, v13

    invoke-static {v6, v7}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v3

    :goto_0
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 17
    const-string v5, "override.weaker.access"

    invoke-virtual {v4, v0, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v3, v11

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void

    .line 19
    :cond_5
    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v6, v2}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    .line 20
    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v13, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v13, v3}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    .line 21
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v13

    .line 22
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v14

    .line 23
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v15

    .line 24
    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v12

    invoke-virtual {v11, v12, v14, v13}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v11

    .line 25
    iget-object v12, v1, Lorg/openjdk/tools/javac/comp/Check;->overrideWarner:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/util/Warner;->clear()V

    .line 26
    iget-object v12, v1, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Check;->overrideWarner:Lorg/openjdk/tools/javac/util/Warner;

    .line 27
    invoke-virtual {v12, v5, v6, v11, v7}, Lorg/openjdk/tools/javac/code/Types;->returnTypeSubstitutable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 28
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v9

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v9

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 29
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 30
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    .line 31
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v6

    .line 32
    invoke-static {v2, v5, v3, v6}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->CantHide(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object v3

    invoke-static {v3, v15, v11}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->OverrideIncompatibleRet(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    .line 33
    invoke-virtual {v4, v0, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    .line 34
    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v5, 0x200000000000L

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_1

    .line 35
    :cond_6
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 36
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->cannotOverride(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3, v15, v11}, [Ljava/lang/Object;

    move-result-object v3

    .line 37
    const-string v5, "override.incompatible.ret"

    invoke-virtual {v4, v0, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v5, 0x200000000000L

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :goto_1
    return-void

    .line 39
    :cond_7
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Check;->overrideWarner:Lorg/openjdk/tools/javac/util/Warner;

    sget-object v8, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/Warner;->hasNonSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 40
    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    .line 41
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->uncheckedOverrides(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v8

    filled-new-array {v8, v15, v11}, [Ljava/lang/Object;

    move-result-object v8

    .line 42
    const-string v9, "override.unchecked.ret"

    invoke-virtual {v1, v7, v9, v8}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_8
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v7, v6, v14, v13}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    .line 44
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    iget-object v8, v1, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/openjdk/tools/javac/comp/Check;->unhandled(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    .line 45
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Lorg/openjdk/tools/javac/comp/Check;->unhandled(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    .line 46
    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 47
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 48
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->cannotOverride(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 49
    const-string v5, "override.meth.doesnt.throw"

    invoke-virtual {v4, v0, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v5, 0x200000000000L

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void

    .line 51
    :cond_9
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 52
    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 53
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->cannotOverride(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 54
    const-string v3, "override.unchecked.thrown"

    invoke-virtual {v1, v0, v3, v2}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    xor-long/2addr v5, v7

    const-wide v7, 0x400000000L

    and-long/2addr v5, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-eqz v5, :cond_c

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v6, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OVERRIDES:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    .line 56
    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 57
    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    .line 58
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v11

    and-long/2addr v7, v11

    cmp-long v7, v7, v9

    if-eqz v7, :cond_b

    const-string v7, "override.varargs.missing"

    goto :goto_2

    :cond_b
    const-string v7, "override.varargs.extra"

    .line 59
    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->varargsOverrides(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 60
    invoke-virtual {v5, v6, v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide v7, 0x80000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_d

    .line 62
    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    .line 63
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->uncheckedOverrides(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 64
    const-string v8, "override.bridge"

    invoke-virtual {v5, v6, v8, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_d
    invoke-direct {v1, v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->isDeprecatedOverrideIgnorable(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 66
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v4

    .line 67
    :try_start_0
    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    .line 69
    throw v0

    :cond_e
    :goto_3
    return-void

    .line 70
    :cond_f
    :goto_4
    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->cannotOverride(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;

    move-result-object v5

    .line 72
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x18

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 73
    const-string v5, "override.meth"

    invoke-virtual {v4, v0, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v5, 0x200000000000L

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_10
    :goto_5
    return-void
.end method

.method public checkOverride(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 5

    .line 96
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 97
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p2

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    .line 98
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v2, 0x0

    invoke-virtual {p4, v0, p3, v1, v2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 100
    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, p1, p4, v0, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkOverride(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkOverrideClashes(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 12

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/Check$ClashFilter;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lorg/openjdk/tools/javac/code/Types;->membersClosure(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object v2

    iget-object v4, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v4, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v10, v5, v6, v3}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v5

    if-nez v5, :cond_2

    if-ne v10, p3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_0

    check-cast v10, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1, v10}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eq v10, p3, :cond_3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    const/4 v4, 0x1

    :cond_3
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, p2, v3}, Lorg/openjdk/tools/javac/code/Types;->membersClosure(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object v5

    iget-object v6, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v6, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v8, v10, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, p2, v8}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    iget-boolean v11, p0, Lorg/openjdk/tools/javac/comp/Check;->allowStrictMethodClashCheck:Z

    invoke-virtual {v6, v7, v9, v11}, Lorg/openjdk/tools/javac/code/Types;->isSubSignature(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/openjdk/tools/javac/code/Types;->hasSameArgs(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-wide v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, 0x40000000000L

    or-long/2addr v0, v2

    iput-wide v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    if-ne v10, p3, :cond_6

    const-string p2, "name.clash.same.erasure.no.override"

    goto :goto_2

    :cond_6
    const-string p2, "name.clash.same.erasure.no.override.1"

    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v9

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v11

    move-object v6, p3

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    if-nez v4, :cond_8

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkPotentiallyAmbiguousOverloads(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public checkPackageExistsForOpens(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->flags()J

    move-result-wide v0

    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Q;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Q;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V

    :cond_0
    return-void
.end method

.method public checkPotentiallyAmbiguousOverloads(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 8

    if-eq p3, p4, :cond_4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check;->allowDefaultMethods:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OVERLOADS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2, p4}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/code/Type$ForAll;

    move-object v5, p2

    check-cast v5, Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-virtual {v1, v4, v5}, Lorg/openjdk/tools/javac/code/Types;->hasSameBounds(Lorg/openjdk/tools/javac/code/Type$ForAll;Lorg/openjdk/tools/javac/code/Type$ForAll;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p2, v5, v4}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v4, v0, p3, v1, v5}, Lorg/openjdk/tools/javac/comp/Resolve;->adjustArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;IZ)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v4, p2, p4, v1, v5}, Lorg/openjdk/tools/javac/comp/Resolve;->adjustArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;IZ)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v4

    if-eq v1, v4, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v6, v4}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v4, v6}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v4}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v4}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v4}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v4

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v6

    if-ne v4, v6, :cond_3

    move v1, v5

    :cond_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-wide v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v0, v2

    iput-wide v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-wide v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v0, v2

    iput-wide v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OVERLOADS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    filled-new-array {p3, v1, p4, v2}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "potentially.ambiguous.overload"

    invoke-virtual {p2, v0, p1, p4, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public checkProfile(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    sget-object v1, Lorg/openjdk/tools/javac/jvm/Profile;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Profile;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x200000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "not.in.profile"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkRaw(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->RAW:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->withinAnonConstr(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "raw.class.use"

    invoke-virtual {p2, v1, v0, v2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkRedundantCast(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;",
            ")V"
        }
    .end annotation

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->containsTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->is292targetTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    new-instance v0, Lorg/openjdk/tools/javac/comp/N;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/N;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V

    :cond_0
    return-void
.end method

.method public checkRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "type.req.ref"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->typeTagError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public checkRefTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    move-object v0, p2

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkRefType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public checkSunAPI(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x4000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    new-instance v1, Lorg/openjdk/tools/javac/comp/O;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/O;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->report(Lorg/openjdk/tools/javac/code/DeferredLintHandler$LintLogger;)V

    :cond_0
    return-void
.end method

.method public checkTransparentClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 3

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->duplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkTransparentVar(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/code/Scope;)V
    .locals 4

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->duplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 9

    .line 2
    invoke-interface {p4}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    invoke-static {p3, p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    new-instance v8, Lorg/openjdk/tools/javac/comp/S;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/comp/S;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    invoke-virtual {v0, v1, v8}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    .line 5
    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p3

    .line 6
    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    .line 7
    :cond_3
    invoke-interface {p4, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->checkWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;

    move-result-object v0

    invoke-interface {p4, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    .line 8
    :cond_4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "possible.loss.of.precision"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    .line 10
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 11
    :cond_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "inconvertible.types"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    .line 12
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public checkUnique(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->any:Lorg/openjdk/tools/javac/util/Name;

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    return v6

    :cond_1
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    sget-object v5, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    move-object/from16 v7, p3

    invoke-virtual {v7, v3, v5}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v2, v5, :cond_2

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    const-wide v9, 0x40000000000L

    and-long/2addr v7, v9

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-nez v7, :cond_2

    iget-object v7, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v8, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v7, v8, :cond_2

    iget-object v8, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v11, v11, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-eq v8, v11, :cond_2

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v7, v8, :cond_3

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v11, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v12, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v11, v12}, Lorg/openjdk/tools/javac/code/Types;->hasSameArgs(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v11, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v11}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v13, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/openjdk/tools/javac/code/Types;->hasSameArgs(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v11

    const-wide v13, 0x400000000L

    and-long/2addr v11, v13

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v15

    and-long/2addr v13, v15

    cmp-long v3, v11, v13

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1, v2, v5}, Lorg/openjdk/tools/javac/comp/Check;->varargsDuplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return v4

    :cond_4
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v8, :cond_5

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v7, v8, v6}, Lorg/openjdk/tools/javac/code/Types;->hasSameArgs(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v1, v2, v5}, Lorg/openjdk/tools/javac/comp/Check;->duplicateErasureError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-wide v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v5, v9

    iput-wide v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return v4

    :cond_5
    invoke-virtual {v0, v1, v5}, Lorg/openjdk/tools/javac/comp/Check;->duplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return v6

    :cond_6
    return v4
.end method

.method public checkUniqueClassName(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Z
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {p3, p2, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

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

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Check;->duplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    iget-object v1, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    iget-object v1, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, p2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->duplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return v0

    :cond_2
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_3
    return v0
.end method

.method public checkValidGenericType(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->firstIncompatibleTypeArg(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public checkVarargsMethodDecl(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            ")V"
        }
    .end annotation

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->trustMeType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->isTrustMeAllowedOnMethod(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v0, "varargs.invalid.trustme.anno"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->trustMeType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Check;->allowPrivateSafeVarargs:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "varargs.trustme.on.virtual.varargs"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "varargs.trustme.on.virtual.varargs.final.only"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    :goto_2
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->trustMeType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v4, "varargs.trustme.on.non.varargs.meth"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->trustMeType:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "varargs.trustme.on.reifiable.varargs"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "varargs.redundant.trustme.anno"

    invoke-virtual {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->warnUnsafeVararg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string p2, "unchecked.varargs.non.reifiable.type"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public clearLocalClassNameIndexes(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->NIL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->localClassNameIndexes:Ljava/util/Map;

    new-instance v2, Lorg/openjdk/tools/javac/util/Pair;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v2, v0, p1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->NON_DEFERRABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cant.access"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of p1, p2, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>()V

    throw p1
.end method

.method public convertWarner(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Warner;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;

    const-string v3, "unchecked.assign"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v6
.end method

.method public diff(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->excl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public duplicateErasureError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "name.clash.same.erasure"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public duplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 5

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isStaticOrInstanceInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v3

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    filled-new-array {v1, p2, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "already.defined.in.clinit"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    filled-new-array {v1, p2, v2, v3}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "already.defined"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public earlyRefError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v1, "cant.ref.before.ctor.called"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public excl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->excl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-ne v0, p1, :cond_2

    return-object p2

    :cond_2
    iget-object p1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeTargetAttribute(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Attribute$Array;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->getTarget()Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->member(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    instance-of v1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Array;

    return-object p1
.end method

.method public getCompiled(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1
.end method

.method public getCompiled(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1
.end method

.method public importAccessible(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    return v2

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_1

    if-ne p1, p2, :cond_2

    move v0, v2

    :cond_2
    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    return v0

    :goto_0
    throw p1
.end method

.method public incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->subset(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->excl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public intersect(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/comp/Check;->subset(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Check;->incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :cond_0
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Check;->subset(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :cond_2
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public intersects(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isHandled(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->isUnchecked(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->subset(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isOverrider(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Types;->closure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    const/4 v6, 0x1

    invoke-virtual {p1, v4, v0, v5, v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    :cond_4
    :goto_1
    return v2
.end method

.method public isTypeAnnotation(Lorg/openjdk/tools/javac/code/Attribute;Z)Z
    .locals 2

    .line 4
    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    .line 5
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Enum;->value:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Names;->TYPE_USE:Lorg/openjdk/tools/javac/util/Name;

    if-eq p1, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, v0, Lorg/openjdk/tools/javac/util/Names;->TYPE_PARAMETER:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->annotationTargets(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/comp/M;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/M;-><init>(Lorg/openjdk/tools/javac/comp/Check;Z)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isTypeArgErroneous(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->isTypeArgErroneous:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isUnchecked(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->errorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->runtimeExceptionType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isUnchecked(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    .line 4
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 5
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->isUnchecked(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 6
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->isUnchecked(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result p1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 7
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Check;->isUnchecked(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x1

    return p1
.end method

.method public localClassName(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/Name;
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->localClassNameIndexes:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v6, p0, Lorg/openjdk/tools/javac/comp/Check;->syntheticNameChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p0, v5, v4}, Lorg/openjdk/tools/javac/comp/Check;->getCompiled(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->localClassNameIndexes:Ljava/util/Map;

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public newRound()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->localClassNameIndexes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public putCompiled(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeCompiled(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->compiled:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportDeferredDiagnostics()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->deprecationHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->reportDeferredDiagnostic()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->removalHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->reportDeferredDiagnostic()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->uncheckedHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->reportDeferredDiagnostic()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->sunApiHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->reportDeferredDiagnostic()V

    return-void
.end method

.method public setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object v0
.end method

.method public setMethod(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->method:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->method:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object v0
.end method

.method public subset(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public typeTagError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    instance-of v0, p3, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    move-object v1, p3

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "illegal.start.of.type"

    invoke-virtual {p2, p1, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "type.found.req"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p2, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public uncheckedOverrides(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "unchecked.override"

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-string v0, "unchecked.implement"

    goto :goto_0

    :cond_1
    const-string v0, "unchecked.clash.with"

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    filled-new-array {p1, v2, p2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public unhandled(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/comp/Check;->isHandled(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Z)V

    return-void
.end method

.method public validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$Validator;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/comp/Check$Validator;-><init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/comp/Env;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p3, p2}, Lorg/openjdk/tools/javac/comp/Check$Validator;->validateTree(Lorg/openjdk/tools/javac/tree/JCTree;ZZ)V

    return-void
.end method

.method public validate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->validate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    .line 5
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validateAnnotationDeferErrors(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    :try_start_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    throw p1
.end method

.method public validateAnnotationMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->annotationType:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v4, "intf.annotation.member.clash"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, p1, v4, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public validateAnnotationTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Check$1AnnotationValidator;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Check$1AnnotationValidator;-><init>(Lorg/openjdk/tools/javac/comp/Check;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public validateAnnotationType(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    return-void
.end method

.method public validateAnnotationType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 6

    .line 2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x2000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->cvarLowerBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_4

    return-void

    .line 7
    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->isArray(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isArray(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    return-void

    .line 9
    :cond_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "invalid.annotation.member.type"

    invoke-virtual {p2, p1, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public validateAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validateRepeatable(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->repeatableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Attribute$Class;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Attribute$Class;->getValue()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v0, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->validateValue(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v0, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->validateRetention(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v0, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->validateDocumented(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v0, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->validateInherited(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v0, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->validateTarget(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->validateDefault(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-void
.end method

.method public validateTargetAnnotationValue(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->annotationTargetType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v4, "repeated.annotation.target"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto :goto_0

    :cond_5
    :goto_1
    return v2
.end method

.method public validateTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Z)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationTree(Lorg/openjdk/tools/javac/tree/JCTree;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPE_ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->isTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Z)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->AnnotationTypeNotApplicableToType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    return-void
.end method

.method public validateTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->validateTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargsDuplicateError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    filled-new-array {p2, p3, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "array.and.varargs"

    invoke-virtual {v0, p1, p3, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargsOverrides(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "varargs.override"

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-string v0, "varargs.implement"

    goto :goto_0

    :cond_1
    const-string v0, "varargs.clash.with"

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    filled-new-array {p1, v2, p2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public warnDeprecated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecatedForRemoval()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REMOVAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isSuppressed(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->removalHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    const-string v1, "has.been.deprecated.for.removal.module"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->removalHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "has.been.deprecated.for.removal"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isSuppressed(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->deprecationHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    const-string v1, "has.been.deprecated.module"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->deprecationHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "has.been.deprecated"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public warnDivZero(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DIVZERO:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "div.zero"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs warnStatic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->STATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isSuppressed(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->uncheckedHandler:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs warnUnsafeVararg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->VARARGS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check;->allowSimplifiedVarargs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
