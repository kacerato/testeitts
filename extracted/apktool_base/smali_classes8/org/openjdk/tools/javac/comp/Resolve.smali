.class public Lorg/openjdk/tools/javac/comp/Resolve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$BadConstructorReferenceError;,
        Lorg/openjdk/tools/javac/comp/Resolve$BadMethodReferenceError;,
        Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;,
        Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;,
        Lorg/openjdk/tools/javac/comp/Resolve$StaticError;,
        Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;,
        Lorg/openjdk/tools/javac/comp/Resolve$AccessError;,
        Lorg/openjdk/tools/javac/comp/Resolve$DiamondError;,
        Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;,
        Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;,
        Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;,
        Lorg/openjdk/tools/javac/comp/Resolve$InvalidSymbolError;,
        Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;,
        Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$UnboundMethodReferenceLookupHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;,
        Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;,
        Lorg/openjdk/tools/javac/comp/Resolve$ResolveDeferredRecoveryMap;,
        Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;,
        Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;,
        Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;,
        Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;,
        Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;,
        Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;,
        Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;,
        Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;
    }
.end annotation


# static fields
.field protected static final resolveKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Resolve;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accessibilityChecker:Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$SimpleVisitor<",
            "Ljava/lang/Void;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field public final allowFunctionalInterfaceMostSpecific:Z

.field public final allowMethodHandles:Z

.field public final allowModules:Z

.field arityMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

.field attr:Lorg/openjdk/tools/javac/comp/Attr;

.field basicLogResolveHelper:Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;

.field basicReferenceChooser:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;

.field public final checkVarargsAccessAfterResolution:Z

.field chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final compactMethodDiags:Z

.field currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

.field deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

.field diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final doRecoveryLoadClass:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

.field finder:Lorg/openjdk/tools/javac/code/ClassFinder;

.field private final inapplicableMethodException:Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

.field infer:Lorg/openjdk/tools/javac/comp/Infer;

.field log:Lorg/openjdk/tools/javac/util/Log;

.field methodLogResolveHelper:Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;

.field private final methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

.field final methodResolutionSteps:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ">;"
        }
    .end annotation
.end field

.field moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

.field private final namedImportScopeRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

.field names:Lorg/openjdk/tools/javac/util/Names;

.field nilMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

.field private final noArgs:Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;

.field private final noRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

.field noteWarner:Lorg/openjdk/tools/javac/util/Warner;

.field polymorphicSignatureScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field private final referenceNotFound:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

.field resolveMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

.field private final starImportScopeRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

.field structuralReferenceChooser:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

.field types:Lorg/openjdk/tools/javac/code/Types;

.field private final varNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

.field final verboseResolutionMode:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve;->resolveKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$1;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->accessibilityChecker:Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->nilMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$3;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$3;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->arityMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$4;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$4;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    new-instance v0, Lorg/openjdk/tools/javac/util/Warner;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Warner;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->noteWarner:Lorg/openjdk/tools/javac/util/Warner;

    new-instance v0, Lorg/openjdk/tools/javac/comp/f2;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/f2;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->noRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$6;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$6;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->doRecoveryLoadClass:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    new-instance v0, Lorg/openjdk/tools/javac/comp/g2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/g2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->namedImportScopeRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    new-instance v0, Lorg/openjdk/tools/javac/comp/X1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/X1;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->starImportScopeRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$7;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$7;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->basicLogResolveHelper:Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$8;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$8;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->methodLogResolveHelper:Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$15;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$15;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->basicReferenceChooser:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$16;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$16;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->structuralReferenceChooser:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;

    new-instance v0, Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;

    const-string v1, "compiler.misc.no.args"

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->noArgs:Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->methodResolutionSteps:Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve;->resolveKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v1, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-direct {v1, p0, v2}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->varNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-direct {v1, p0, v2}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-direct {v2, p0, v3}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;)V

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

    invoke-direct {v2, v1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->referenceNotFound:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Infer;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Infer;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ClassFinder;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ModuleFinder;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->XDIAGS:Lorg/openjdk/tools/javac/main/Option;

    const-string v3, "compact"

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "rawDiagnostics"

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->compactMethodDiags:Z

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->getVerboseResolutionMode(Lorg/openjdk/tools/javac/util/Options;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Target;->hasMethodHandles()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->allowMethodHandles:Z

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Source;->allowFunctionalInterfaceMostSpecific()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->allowFunctionalInterfaceMostSpecific:Z

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Source;->allowPostApplicabilityVarargsAccessCheck()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->checkVarargsAccessAfterResolution:Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->polymorphicSignatureScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {p1, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->inapplicableMethodException:Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->allowModules:Z

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$lookupPackage$7(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupInvisibleSymbol(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/openjdk/tools/javac/comp/Resolve;->findDiamond(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->referenceNotFound:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

    return-object p0
.end method

.method public static synthetic access$1400(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/openjdk/tools/javac/comp/Resolve;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->compactMethodDiags:Z

    return p0
.end method

.method public static synthetic access$1600(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->symbolPackageVisible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->inapplicableMethodException:Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$inaccessiblePackageReason$8(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)Z

    move-result p0

    return p0
.end method

.method private static bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->betterThan(Lorg/openjdk/tools/javac/code/Kinds$Kind;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$new$1(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0
.end method

.method private createInvisibleSymbolError(Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;Z",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->symbolPackageVisible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, p3}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object p2

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$new$3(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$superclasses$0(Lorg/openjdk/tools/javac/code/Type;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$new$5(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0
.end method

.method private findDiamond(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;ZZ)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p2

    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    iget-object v1, v10, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_0

    :cond_0
    iget-object v1, v10, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v8, v0

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v7, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    iget-wide v0, v7, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ForAll;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_2
    new-instance v5, Lorg/openjdk/tools/javac/code/Type$ForAll;

    iget-object v1, v10, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->asMethodType()Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithReturn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    new-instance v12, Lorg/openjdk/tools/javac/comp/Resolve$14;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, v10, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve$14;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-object v6, v8

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->selectBest(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v8

    goto :goto_1

    :cond_3
    return-object v8
.end method

.method private findMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;ZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "ZZ)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object/from16 v11, p0

    const/4 v0, 0x2

    .line 3
    new-array v12, v0, [Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    aput-object v1, v12, v0

    .line 4
    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;->ABSTRACT_OK:Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;

    move-object/from16 v1, p6

    .line 5
    invoke-virtual {v11, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->superclasses(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object/from16 v7, p7

    move-object v15, v0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 6
    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v6

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v13, v10

    move/from16 v10, v16

    .line 7
    invoke-virtual/range {v0 .. v10}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethodInScope(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;ZZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    .line 8
    iget-object v0, v11, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v10, p3

    if-ne v10, v0, :cond_0

    return-object v7

    :cond_0
    if-nez v15, :cond_1

    const/4 v0, 0x0

    :goto_1
    move-object v15, v0

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v15, v13, v11}, Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;->update(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;

    move-result-object v0

    goto :goto_1

    :goto_2
    if-eqz v15, :cond_2

    .line 10
    iget-object v0, v11, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v13, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 11
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, v11, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Types;->closure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v12, v4

    invoke-virtual {v3, v1, v4}, Lorg/openjdk/tools/javac/code/Types;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    aput-object v1, v12, v2

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v10, p3

    .line 12
    iget-object v0, v7, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isValid()Z

    move-result v0

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    cmp-long v0, v0, v13

    if-nez v0, :cond_4

    move-object v15, v7

    goto :goto_4

    :cond_4
    iget-object v0, v11, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    move-object v15, v0

    .line 14
    :goto_4
    invoke-static {}, Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;->values()[Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;

    move-result-object v9

    array-length v8, v9

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v8, :cond_9

    aget-object v5, v9, v6

    .line 15
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v12, v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    .line 16
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isInterface()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_6

    .line 17
    :cond_5
    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;->DEFAULT_OK:Lorg/openjdk/tools/javac/comp/Resolve$InterfaceLookupPhase;

    if-ne v5, v1, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 18
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v3, 0x80000000000L

    and-long/2addr v1, v3

    cmp-long v1, v1, v13

    if-nez v1, :cond_6

    goto :goto_6

    .line 19
    :cond_6
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 20
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v19, v5

    move-object/from16 v5, p5

    move/from16 v20, v6

    move-object/from16 v6, v17

    move/from16 v17, v8

    move/from16 v8, p8

    move-object/from16 v21, v9

    move/from16 v9, p9

    move/from16 v10, v18

    .line 21
    invoke-virtual/range {v0 .. v10}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethodInScope(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;ZZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eq v15, v0, :cond_7

    .line 22
    iget-object v1, v15, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    .line 23
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    .line 24
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v15, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 25
    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSubSignature(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v7, v15

    goto :goto_7

    :cond_7
    move-object v7, v0

    :goto_7
    move-object/from16 v10, p3

    move/from16 v8, v17

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v9, v21

    goto :goto_6

    :cond_8
    move/from16 v20, v6

    move/from16 v17, v8

    move-object/from16 v21, v9

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v10, p3

    goto/16 :goto_5

    :cond_9
    return-object v7
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$null$4(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$null$2(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->lambda$lookupPackage$6(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result p0

    return p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve;->resolveKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Resolve;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isImportOnDemand(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")Z"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->asterisk:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    if-ne p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isInitializer(Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v4, 0x100000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isInnerSubClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private isProtectedAccessible(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 6

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0, v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_2

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2, v1}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public static isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget p0, p0, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->staticLevel:I

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$inaccessiblePackageReason$8(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)Z
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$lookupPackage$6(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/util/Name;->startsWith(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$lookupPackage$7(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$1(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$new$3(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/comp/e2;

    invoke-direct {v2, p2}, Lorg/openjdk/tools/javac/comp/e2;-><init>(Lorg/openjdk/tools/javac/util/Name;)V

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$new$5(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/comp/b2;

    invoke-direct {v2, p2}, Lorg/openjdk/tools/javac/comp/b2;-><init>(Lorg/openjdk/tools/javac/util/Name;)V

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, v0, p2}, Lorg/openjdk/tools/javac/code/ClassFinder;->loadClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InvisibleSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$null$2(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$null$4(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$superclasses$0(Lorg/openjdk/tools/javac/code/Type;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$5;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$5;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0
.end method

.method private logResolveError(Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->setFlag(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/Log;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_0
    return-void
.end method

.method private lookupInvisibleSymbol(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Ljava/util/function/Function<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Ljava/lang/Iterable<",
            "TS;>;>;",
            "Ljava/util/function/BiFunction<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "TS;>;",
            "Ljava/util/function/Predicate<",
            "TS;>;Z",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {p5, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p6, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->createInvisibleSymbolError(Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/HashSet;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symtab;->getAllModules()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    :cond_3
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_2

    invoke-interface {p4, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_2

    invoke-interface {p5, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p6, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->createInvisibleSymbolError(Lorg/openjdk/tools/javac/comp/Env;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p7
.end method

.method private notOverriddenIn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->implementation(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/code/Types;->isSubSignature(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private pruneInterfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/code/Types;->directSupertypes(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    if-eq v2, v5, :cond_1

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v5, v2}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeNoCapture(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private resolveConstructor(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v3, p4

    .line 2
    iget-object v7, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    new-instance v8, Lorg/openjdk/tools/javac/comp/Resolve$12;

    move-object v9, p0

    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p5

    move-object/from16 v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$12;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, v7

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method private resolveQualifiedMethod(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 3
    new-instance v6, Lorg/openjdk/tools/javac/comp/Resolve$10;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve$10;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method private resolveSelfContainingInternal(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Z)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    :cond_0
    if-eqz p1, :cond_5

    const/4 p3, 0x0

    :goto_0
    if-eqz p1, :cond_5

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v1, :cond_5

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move p3, v2

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;

    invoke-direct {p1, p0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v1, p1

    :cond_2
    return-object v1

    :cond_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    move p3, v2

    :cond_4
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private signatureMoreSpecific(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Z)Z"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v0, p4

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->noteWarner:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Warner;->clear()V

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v4, p5

    iget-object v2, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v12, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    :try_start_0
    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v2, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v2, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v3, v12, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v3, v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v3, v12, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    move-object v5, p1

    invoke-interface {v3, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;->mostSpecificCheck(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    iget-object v2, v11, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3, v0}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/code/Types;->cvarLowerBounds(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    move/from16 v9, p6

    invoke-virtual {p0, v2, v0, v1, v9}, Lorg/openjdk/tools/javac/comp/Resolve;->adjustArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;IZ)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v10, v11, Lorg/openjdk/tools/javac/comp/Resolve;->noteWarner:Lorg/openjdk/tools/javac/util/Warner;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Lorg/openjdk/tools/javac/comp/Resolve;->instantiate(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v11, Lorg/openjdk/tools/javac/comp/Resolve;->noteWarner:Lorg/openjdk/tools/javac/util/Warner;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Warner;->hasLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v12, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    return v0

    :goto_1
    iput-object v12, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    throw v0
.end method

.method private symbolPackageVisible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")Z"
        }
    .end annotation

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p1, v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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


# virtual methods
.method public accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 11

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object v10, p0

    iget-object v9, v10, Lorg/openjdk/tools/javac/comp/Resolve;->basicLogResolveHelper:Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->accessInternal(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7

    .line 2
    iget-object v3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public accessInternal(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Z",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v4, p4

    move-object v5, p5

    move-object v0, p1

    move-object/from16 v1, p9

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    if-eqz p6, :cond_0

    iget-object v0, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v8, p0

    goto :goto_0

    :cond_0
    move-object v8, p0

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_0
    invoke-virtual {v2, p5, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->access(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-interface {v1, v2, v9, p5, v0}, Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;->getArgumentTypes(Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    move-object/from16 v7, p8

    invoke-interface {v1, p4, v6, v7}, Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;->resolveDiagnosticNeeded(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->logResolveError(Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_1

    :cond_1
    move-object v8, p0

    move-object v9, v0

    :cond_2
    :goto_1
    return-object v9
.end method

.method public accessMethod(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Z",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v10, p0

    .line 1
    iget-object v9, v10, Lorg/openjdk/tools/javac/comp/Resolve;->methodLogResolveHelper:Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->accessInternal(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$LogResolveHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public accessMethod(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Z",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v4, p3

    .line 2
    iget-object v3, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->accessMethod(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public adjustArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;IZ)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "IZ)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p4, v0}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p4

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad varargs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, p4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result p2

    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public ambiguityError(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    or-long/2addr v0, v2

    const-wide v2, 0x40000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method public checkAccessibleType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->accessibilityChecker:Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p1

    move-object/from16 v5, p4

    iget-object v12, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v2, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/comp/Infer;->anyPoly:Lorg/openjdk/tools/javac/code/Type;

    if-ne v2, v3, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    :goto_0
    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$202(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;)Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REFERENCE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;

    iget-object v3, v5, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceCheck;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    :cond_1
    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v8

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lorg/openjdk/tools/javac/comp/Resolve;->rawInstantiate(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v12, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    return-object v0

    :goto_1
    iput-object v12, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    throw v0
.end method

.method public checkNonAbstract(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v4, 0x80000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    filled-new-array {v1, p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "abstract.cant.be.accessed.directly"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dummyArgs(I)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public enclosingInstanceMissing(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, p2, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveSelfContainingInternal(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public findConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;ZZ)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v8, p0

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Resolve;->chk:Lorg/openjdk/tools/javac/comp/Check;

    move-object v2, p2

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v3, p1

    invoke-virtual {v1, p1, v2, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method public findField(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    :goto_0
    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p4

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->varNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_1

    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, p2, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p3, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    invoke-direct {p3, p0, p1, p2, v2}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v2, p3

    :goto_1
    return-object v2

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findField(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p4}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    :goto_2
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_7

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findField(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v2, v3, :cond_6

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v2, p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v0, v2

    goto :goto_3

    :cond_6
    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :goto_3
    iget-object p4, p4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public findFun(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;ZZ)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    move-object v13, v0

    move-object v12, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v13, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v2, :cond_5

    invoke-static {v13}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_0

    move v15, v14

    goto :goto_1

    :cond_0
    move v15, v1

    :goto_1
    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v1, :cond_1

    move v1, v14

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object v9, v8

    move/from16 v8, p6

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x8

    if-eqz v2, :cond_3

    if-eqz v15, :cond_2

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v2, :cond_2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    and-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v0, v10, v1}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v9, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    iget-object v0, v13, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v9, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object v1

    :cond_3
    :try_start_2
    invoke-static {v12, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v9, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v1

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    move v1, v14

    goto :goto_3

    :cond_4
    move v1, v15

    :goto_3
    iget-object v13, v13, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v9, v8

    :goto_4
    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v9, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->preferredTreeForDiagnostics:Lorg/openjdk/tools/javac/tree/JCTree;

    throw v0

    :cond_5
    iget-object v1, v10, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    invoke-virtual {v1, v11}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v7, v12

    :cond_7
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_7

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, v4, :cond_8

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    :cond_8
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10, v0, v3, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v3, v10, v0, v4, v1}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v6, v3

    goto :goto_6

    :cond_9
    move-object v6, v1

    :goto_6
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->selectBest(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    goto :goto_5

    :cond_a
    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v7

    :cond_b
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {v1, v11}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_c

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, v4, :cond_d

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    :cond_d
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10, v0, v3, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v3, v10, v0, v4, v1}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v6, v3

    goto :goto_8

    :cond_e
    move-object v6, v1

    :goto_8
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->selectBest(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    goto :goto_7

    :cond_f
    return-object v7
.end method

.method public findGlobalType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Scope;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->loadClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p3

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    if-eq v0, p3, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {p1, p0, v0, p3}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object p1

    :cond_0
    invoke-static {v0, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findIdent(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->findVar(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_1
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->findType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_3
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupPackage(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public findIdentInPackage(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-static {p3, p2}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFullName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p4, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->allowModules:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p4, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean p2, p2, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->doRecoveryLoadClass:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->noRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->loadClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne p3, v2, :cond_2

    return-object p2

    :cond_1
    invoke-static {v1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    :cond_2
    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p4, p2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupPackage(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public findIdentInType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p4, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findField(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_1
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {p4, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->findMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_2
    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public findImmediateMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object p4, p3

    :goto_0
    return-object p4

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    return-object p1
.end method

.method public findInheritedMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p4}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_2

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v2, v3, :cond_1

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v2, p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :goto_1
    iget-object p4, p4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public findMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->findImmediateMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->findInheritedMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public findMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;ZZ)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v10, p0

    .line 1
    iget-object v7, v10, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    move-object v2, p2

    .line 2
    iget-object v0, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v6, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public findMethodInScope(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;ZZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Scope;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "ZZZ)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;

    move-object v10, p0

    move/from16 v1, p10

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Z)V

    move-object v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v2, p3, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v7, p7

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->selectBest(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public findPolymorphicSignatureInstance(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    move-object v1, p2

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-virtual {v0, p1, v1, v2, p3}, Lorg/openjdk/tools/javac/comp/Infer;->instantiatePolymorphicSignatureInstance(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve;->polymorphicSignatureScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide v2, 0x2000000400L

    or-long v5, v0, v2

    new-instance p3, Lorg/openjdk/tools/javac/comp/Resolve$11;

    iget-object v7, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v3, p3

    move-object v4, p0

    move-object v8, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lorg/openjdk/tools/javac/comp/Resolve$11;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->polymorphicSignatureScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_2
    return-object p3
.end method

.method public findType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    const/4 v1, 0x0

    move-object v2, p1

    :goto_0
    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v3, :cond_9

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {p0, v2, p2, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->findTypeVar(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v5, v2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v6, p2, v5}, Lorg/openjdk/tools/javac/comp/Resolve;->findImmediateMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    if-eq v3, v6, :cond_3

    iget-boolean v7, p1, Lorg/openjdk/tools/javac/comp/Env;->baseClause:Z

    if-nez v7, :cond_2

    if-eq v5, v6, :cond_2

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v7, :cond_3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v7, :cond_3

    :cond_2
    return-object v3

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    if-ne v5, v3, :cond_4

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v5, p2, v3}, Lorg/openjdk/tools/javac/comp/Resolve;->findInheritedMemberType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v6, :cond_5

    iget-object v3, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v6, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;

    invoke-direct {p1, p0, v5}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object p1

    :cond_5
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v5

    :cond_6
    invoke-static {v0, v5}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-boolean v3, v2, Lorg/openjdk/tools/javac/comp/Env;->baseClause:Z

    if-eqz v3, :cond_7

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    goto :goto_1

    :cond_7
    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    :goto_1
    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_8

    move v1, v4

    :cond_8
    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IMPORT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->namedImportScopeRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    invoke-virtual {p0, p1, v1, p2, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->findGlobalType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_a
    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->noRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    invoke-virtual {p0, p1, v1, p2, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->findGlobalType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v1

    :cond_b
    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->starImportScopeRecovery:Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;

    invoke-virtual {p0, p1, v1, p2, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->findGlobalType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result p2

    if-eqz p2, :cond_c

    return-object p1

    :cond_c
    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public findTypeVar(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Z)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_1

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object p3, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v1, :cond_1

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;

    invoke-direct {p1, p0, p2}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object p1

    :cond_1
    return-object p2

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    return-object p1
.end method

.method public findVar(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve;->varNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    const/4 v6, 0x0

    move-object v7, v1

    move v8, v6

    :goto_0
    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v8, v4

    :cond_0
    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v9, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v14, v11, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v15, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v14, v15, :cond_1

    iget-wide v14, v11, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v16, 0x1000

    and-long v14, v14, v16

    cmp-long v14, v14, v12

    if-nez v14, :cond_1

    move-object v10, v11

    :cond_2
    if-nez v10, :cond_3

    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v9, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v10, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v7, v10, v2, v9}, Lorg/openjdk/tools/javac/comp/Resolve;->findField(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v10

    :cond_3
    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v9

    const-wide/16 v14, 0x8

    if-eqz v9, :cond_5

    if-eqz v8, :cond_4

    iget-object v1, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_4

    iget-object v1, v10, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_4

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    and-long/2addr v1, v14

    cmp-long v1, v1, v12

    if-nez v1, :cond_4

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;

    invoke-direct {v1, v0, v10}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v1

    :cond_4
    return-object v10

    :cond_5
    invoke-static {v5, v10}, Lorg/openjdk/tools/javac/comp/Resolve;->bestOf(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    iget-object v9, v7, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v9, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v9

    and-long/2addr v9, v14

    cmp-long v9, v9, v12

    if-eqz v9, :cond_6

    move v8, v4

    :cond_6
    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    goto/16 :goto_0

    :cond_7
    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v8, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, v8, v2, v7}, Lorg/openjdk/tools/javac/comp/Resolve;->findField(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    return-object v7

    :cond_8
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    return-object v5

    :cond_9
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v8, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    new-array v9, v3, [Lorg/openjdk/tools/javac/code/Scope;

    aput-object v8, v9, v6

    aput-object v7, v9, v4

    :goto_1
    if-ge v6, v3, :cond_10

    aget-object v7, v9, v6

    invoke-virtual {v7, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v12, v11, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v13, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v12, v13, :cond_b

    goto :goto_2

    :cond_b
    iget-object v12, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, v11, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v14, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v12, v14, :cond_c

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    invoke-direct {v1, v0, v5, v11}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v1

    :cond_c
    iget-object v12, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->betterThan(Lorg/openjdk/tools/javac/code/Kinds$Kind;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v7, v11}, Lorg/openjdk/tools/javac/code/Scope;->getOrigin(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object v5

    iget-object v10, v5, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v10, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, v5, v11}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object v5, v11

    goto :goto_2

    :cond_d
    new-instance v5, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    iget-object v12, v10, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v5, v0, v1, v12, v11}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_2

    :cond_e
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_3

    :cond_f
    add-int/2addr v6, v4

    goto :goto_1

    :cond_10
    :goto_3
    iget-object v1, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_11

    iget-object v1, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v10, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v1, v2, :cond_11

    invoke-virtual {v5, v10}, Lorg/openjdk/tools/javac/code/Symbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    return-object v1

    :cond_11
    return-object v5
.end method

.method public getMemberReference(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-object v0, p0

    move-object v1, p3

    move-object v2, v7

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->makeReferenceLookupHelper(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;

    move-result-object v5

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v6

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v7, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->nilMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-object v0
.end method

.method public getVerboseApplicableCandidateDiag(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "partial.inst.sig"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    const-string v0, "applicable.method.found"

    goto :goto_1

    :cond_1
    const-string v0, "applicable.method.found.1"

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public getVerboseInapplicableCandidateDiag(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "not.applicable.method.found"

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public inaccessiblePackageReason(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->readModules:Ljava/util/Set;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v0, v1, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1, p2, v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NotDefAccessDoesNotRead(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NotDefAccessDoesNotReadFromUnnamed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NotDefAccessDoesNotReadUnnamed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/d2;

    invoke-direct {v1, p2}, Lorg/openjdk/tools/javac/comp/d2;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {p2, v1, p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NotDefAccessNotExportedToModule(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NotDefAccessNotExportedToModuleFromUnnamed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NotDefAccessNotExported(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->NotDefAccessNotExportedFromUnnamed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public instantiate(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;ZZ",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p0 .. p9}, Lorg/openjdk/tools/javac/comp/Resolve;->rawInstantiate(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Z)Z

    move-result p1

    return p1
.end method

.method public isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Z)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/32 v4, 0x20000000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    .line 4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v0, v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-short v0, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    :cond_2
    :goto_0
    move v0, v1

    goto/16 :goto_1

    .line 6
    :cond_3
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_2

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-eq v0, v3, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    .line 8
    invoke-direct {p0, v0, v3}, Lorg/openjdk/tools/javac/comp/Resolve;->isInnerSubClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 9
    :cond_5
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 10
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    .line 11
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 12
    :cond_6
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->allowModules:Z

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    .line 14
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    .line 15
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    .line 16
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v0, v4, :cond_2

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    .line 17
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eq v3, v5, :cond_2

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v3, v4, :cond_4

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->readModules:Ljava/util/Set;

    .line 18
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 19
    :cond_7
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_2

    .line 20
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_a

    .line 21
    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v3, v4, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 22
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    :goto_2
    move v1, v0

    :goto_3
    return v1
.end method

.method public isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    return p1
.end method

.method public isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Z)Z

    move-result p1

    return p1
.end method

.method public isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Z)Z"
        }
    .end annotation

    .line 28
    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_0

    return v2

    .line 29
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/32 v7, 0x20000000

    and-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    return v1

    .line 30
    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    .line 31
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v0, v5, :cond_2

    return v1

    .line 32
    :cond_2
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x7

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-short v0, v0

    if-eqz v0, :cond_a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    .line 33
    invoke-virtual {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->notOverriddenIn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v1

    :cond_3
    return v2

    .line 34
    :cond_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v5, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, v5, :cond_5

    .line 35
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    if-eq v0, v5, :cond_5

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 36
    invoke-direct {p0, p3, v0, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->isProtectedAccessible(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    if-eqz v0, :cond_6

    .line 37
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-nez v0, :cond_6

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v3, :cond_6

    .line 38
    :cond_5
    invoke-virtual {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 39
    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->notOverriddenIn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v2, v1

    :cond_6
    return v2

    .line 40
    :cond_7
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq p1, p4, :cond_8

    .line 41
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    .line 42
    invoke-virtual {p4}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p4

    if-ne p1, p4, :cond_9

    :cond_8
    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 43
    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v2, v1

    :cond_9
    return v2

    .line 44
    :cond_a
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, v3, :cond_b

    .line 45
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    if-ne v0, v3, :cond_c

    .line 46
    :cond_b
    invoke-virtual {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 47
    invoke-virtual {p3, p1, p4}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 48
    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->notOverriddenIn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_c

    move v2, v1

    :cond_c
    return v2
.end method

.method public isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Z)Z"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 25
    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/Types;->cvarUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Z)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public loadClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/code/ClassFinder;->loadClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    invoke-interface {p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;->loadClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->typeNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    return-object p1

    :goto_1
    throw p1
.end method

.method public logAccessErrorInternal(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v1, p0, p1, v0, p3}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->logResolveError(Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;",
            "Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1
    new-instance v4, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v4, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    .line 2
    iput-object p4, v4, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;",
            "Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    .line 6
    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    .line 7
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->methodResolutionSteps:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 8
    invoke-virtual {p5, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->shouldStop(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 10
    iput-object v2, v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 11
    invoke-virtual {p5, p1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->lookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    .line 12
    invoke-virtual {p5, p2, v3}, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->debug(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 13
    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->mergeResults(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    .line 14
    iget-object v5, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/comp/AttrContext;

    if-ne v1, v3, :cond_1

    move-object v2, v4

    :cond_1
    iput-object v2, v5, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 15
    :cond_2
    :goto_1
    invoke-virtual {p5, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->access(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    return-object p1

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    .line 17
    throw p1
.end method

.method public lookupPackage(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->lookupPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v9

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->allowModules:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->isImportOnDemand(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/16 v1, 0x2e

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/Name;->append(CLorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/comp/W1;

    invoke-direct {v2, v0}, Lorg/openjdk/tools/javac/comp/W1;-><init>(Lorg/openjdk/tools/javac/util/Name;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Y1;

    invoke-direct {v5, v0}, Lorg/openjdk/tools/javac/comp/Y1;-><init>(Lorg/openjdk/tools/javac/code/Symtab;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/openjdk/tools/javac/comp/Z1;

    invoke-direct {v6, v0}, Lorg/openjdk/tools/javac/comp/Z1;-><init>(Lorg/openjdk/tools/javac/code/Symtab;)V

    new-instance v7, Lorg/openjdk/tools/javac/comp/a2;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/comp/a2;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupInvisibleSymbol(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/util/function/Predicate;ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v9
.end method

.method public makeReferenceLookupHelper(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve$MethodReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-object v0

    :cond_0
    sget-object p3, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-object p3

    :cond_1
    new-instance p3, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$ConstructorReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-object p3
.end method

.method public methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->noArgs:Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;

    return-object p1
.end method

.method public mostSpecific(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Z)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v11, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->ambiguousSyms:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v12, v6

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->mostSpecific(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-ne v0, v8, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v11

    :goto_1
    and-int/2addr v14, v1

    if-ne v0, v12, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v11

    :goto_2
    and-int/2addr v15, v0

    goto :goto_0

    :cond_2
    if-eqz v14, :cond_3

    return-object v8

    :cond_3
    if-nez v15, :cond_4

    invoke-virtual {v9, v8}, Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;->addAmbiguousSymbol(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/comp/Resolve$AmbiguityError;

    :cond_4
    return-object v9

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    if-ne v8, v9, :cond_7

    return-object v8

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->signatureMoreSpecific(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Z)Z

    move-result v12

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->signatureMoreSpecific(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Z)Z

    move-result v0

    if-eqz v12, :cond_13

    if-eqz v0, :cond_13

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v10, v8}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v10, v9}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0, v1}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v8, v9}, Lorg/openjdk/tools/javac/comp/Resolve;->ambiguityError(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    and-long/2addr v4, v2

    cmp-long v0, v0, v4

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v9, v8

    :goto_3
    return-object v9

    :cond_a
    iget-object v0, v8, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v9, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    const-wide/16 v12, 0x200

    if-eqz v2, :cond_c

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v12

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    iget-object v2, v9, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v12

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v8, v9, v0, v2, v11}, Lorg/openjdk/tools/javac/code/Symbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v8

    :cond_c
    iget-object v2, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3, v0}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v9, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v12

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    iget-object v0, v8, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-wide v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v12

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v9, v8, v1, v0, v11}, Lorg/openjdk/tools/javac/code/Symbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v9

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    move v0, v11

    :goto_4
    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v12

    and-long v1, v12, v2

    cmp-long v1, v1, v4

    if-eqz v1, :cond_10

    const/4 v11, 0x1

    :cond_10
    if-eqz v0, :cond_11

    if-nez v11, :cond_11

    return-object v9

    :cond_11
    if-eqz v11, :cond_12

    if-nez v0, :cond_12

    return-object v8

    :cond_12
    invoke-virtual {v7, v8, v9}, Lorg/openjdk/tools/javac/comp/Resolve;->ambiguityError(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    :cond_13
    if-eqz v12, :cond_14

    return-object v8

    :cond_14
    if-eqz v0, :cond_15

    return-object v9

    :cond_15
    invoke-virtual {v7, v8, v9}, Lorg/openjdk/tools/javac/comp/Resolve;->ambiguityError(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public rawInstantiate(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;ZZ",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/comp/Infer$InferenceException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v11, p9

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    move-object v3, p2

    invoke-virtual {v2, p2, p3}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    if-nez p6, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v4, p6

    :goto_0
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v6

    if-ne v5, v6, :cond_6

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    move-object v6, v4

    :goto_1
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v8, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/code/Types;->getBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-object v9, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v7, v8, v9, v4}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    :goto_2
    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v9, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/code/Type;

    iget-object v10, v7, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v10, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v8, v9, v10, v11}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->inapplicableMethodException:Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    iget-object v2, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "explicit.param.do.not.conform.to.bounds"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v1

    throw v1

    :cond_3
    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_4
    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5, v6, v2, v4}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :cond_5
    :goto_3
    move-object v7, v2

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->inapplicableMethodException:Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "wrong.number.type.args"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v1

    throw v1

    :cond_7
    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ForAll;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Types;->newInstances(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5, v6, v2, v4}, Lorg/openjdk/tools/javac/code/Types;->subst(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    goto :goto_3

    :goto_4
    iget-object v2, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    move-object/from16 v5, p5

    :goto_6
    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz v6, :cond_a

    if-nez v2, :cond_a

    iget-object v6, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    sget-object v8, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v6, v8}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v4

    :cond_9
    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    move-object v4, v7

    check-cast v4, Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-object v6, v1

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    move-object v1, v2

    move-object v2, p1

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lorg/openjdk/tools/javac/comp/Infer;->instantiateMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    return-object v1

    :cond_b
    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-object/from16 v4, p4

    invoke-virtual {v2, p3, v3, v4, v11}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->deferredAttrContext(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v8

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    move-object v2, p1

    move-object v3, v8

    move-object/from16 v4, p5

    move-object/from16 v6, p9

    invoke-interface/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;->argumentsAcceptable(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->complete()V

    return-object v7
.end method

.method public reportVerboseResolutionDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->SUCCESS:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->FAILURE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->OBJECT_INIT:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v1, v4, :cond_3

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->PREDEF:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$000(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v5, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->INTERNAL:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$100(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v10, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    if-ne v9, v10, :cond_5

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->isApplicable()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v10, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->APPLICABLE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v9, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_6
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->isApplicable()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v10, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->INAPPLICABLE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v9, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->isApplicable()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v10, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->mtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v6, v9, v10}, Lorg/openjdk/tools/javac/comp/Resolve;->getVerboseApplicableCandidateDiag(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v9

    goto :goto_1

    :cond_8
    iget-object v9, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v10, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->details:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, v6, v9, v10}, Lorg/openjdk/tools/javac/comp/Resolve;->getVerboseInapplicableCandidateDiag(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v9

    :goto_1
    invoke-virtual {v4, v9}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v8, v8, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v8, v2, :cond_9

    move v7, v6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    if-nez v3, :cond_b

    const-string v3, "verbose.resolve.multi"

    goto :goto_2

    :cond_b
    const-string v3, "verbose.resolve.multi.1"

    :goto_2
    new-instance v5, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Resolve;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-direct {v5, v6, v8, v2, v9}, Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    move-object/from16 v2, p4

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v6

    iget-object v9, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v1, p5

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v8, p2

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v1

    move-object v2, p1

    invoke-virtual {v5, v6, p1, v3, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->note(Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Log;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-void
.end method

.method public resolveConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1
    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveConstructor(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public resolveDiamond(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v6, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    new-instance v8, Lorg/openjdk/tools/javac/comp/Resolve$13;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve$13;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public resolveIdent(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->findIdent(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public resolveImplicitThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveImplicitThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public resolveImplicitThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Z)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveSelf(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveSelfContaining(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p3

    :goto_0
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    iget-object p4, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p4, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean p4, p4, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    if-eqz p4, :cond_1

    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne p4, p2, :cond_1

    .line 6
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "this"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "cant.ref.before.ctor.called"

    invoke-virtual {p2, p1, v0, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object p3
.end method

.method public resolveInternalConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$002(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Z)Z

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveConstructor(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, p4, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p1

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/util/FatalError;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string p4, "fatal.err.cant.locate.ctor"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/util/FatalError;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    throw p1
.end method

.method public resolveInternalField(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;"
        }
    .end annotation

    iget-object p1, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, p2, p3, p4, p1}, Lorg/openjdk/tools/javac/comp/Resolve;->findField(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, p3, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-object p1

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/util/FatalError;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string p3, "fatal.err.cant.locate.field"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/util/FatalError;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    throw p1
.end method

.method public resolveInternalMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$002(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Z)Z

    iget-object v4, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, p3, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p1

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/util/FatalError;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string p3, "fatal.err.cant.locate.meth"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/util/FatalError;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    throw p1
.end method

.method public resolveMemberReference(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            "Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;",
            ")",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    sget-object v6, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->makeReferenceLookupHelper(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;

    move-result-object v6

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v11

    new-instance v12, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v12, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v10, v12, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v9, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, v11

    move-object v4, v12

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

    invoke-direct {v1, v0, v12}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Resolve;->methodNotFound:Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup()Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v2

    move-object/from16 v3, p8

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;->unboundLookup(Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;

    move-result-object v3

    iget-object v4, v7, Lorg/openjdk/tools/javac/comp/Resolve;->referenceNotFound:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

    if-eqz v3, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    iput-object v10, v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    iget-object v4, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, v9, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object p2, p0

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    move-object/from16 p7, v3

    invoke-virtual/range {p2 .. p7}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    new-instance v5, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;

    invoke-direct {v5, v4, v0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    move-object v0, v4

    move-object v4, v5

    :cond_0
    move-object/from16 v5, p9

    invoke-virtual {v5, v1, v4}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;->result(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    new-instance v4, Lorg/openjdk/tools/javac/util/Pair;

    if-ne v1, v0, :cond_1

    move-object v6, v3

    :cond_1
    invoke-direct {v4, v1, v6}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    if-ne v1, v0, :cond_2

    iget-object v0, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    :goto_0
    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    goto :goto_1

    :cond_2
    iget-object v0, v11, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iput-object v0, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->pendingResolutionPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-object v4
.end method

.method public resolveMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object v1, p2

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-object v10, p0

    iget-object v11, v10, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    new-instance v12, Lorg/openjdk/tools/javac/comp/Resolve$9;

    iget-object v7, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v4, v12

    move-object v5, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve$9;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    move-object v0, p0

    move-object v2, p1

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->lookupMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 2
    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    move-object v9, p0

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    .line 1
    iget-object v3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public resolveSelf(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p2

    :goto_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    if-eqz v2, :cond_4

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v0, v3

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v2, p3, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2, p4}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    new-instance p3, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;

    invoke-direct {p3, p0, v2}, Lorg/openjdk/tools/javac/comp/Resolve$StaticError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v8, 0x1

    move-object v3, p0

    move-object v5, p1

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    move v0, v3

    :cond_3
    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne p4, v0, :cond_9

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Resolve;->isStatic(Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result p4

    if-nez p4, :cond_9

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p4, p3, v0}, Lorg/openjdk/tools/javac/code/Types;->isDirectSuperInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p4, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p4, p4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->pruneInterfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, p3, :cond_5

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->defaultSuperCallSite:Lorg/openjdk/tools/javac/code/Type;

    new-instance p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, p4, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p4, v0, p3}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v6, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v2, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object p1

    :cond_6
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p4, p2}, Lorg/openjdk/tools/javac/code/Types;->directSupertypes(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p3, v1}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, p3, :cond_7

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "redundant.supertype"

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "illegal.default.super.call"

    invoke-virtual {p2, p1, p4, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1

    :cond_8
    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    :cond_9
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "not.encl.class"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p4, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1
.end method

.method public resolveSelfContaining(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Z)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveSelfContainingInternal(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p4, "encl.class.required"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p4, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public selectBest(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;ZZ)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "ZZ)",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-object v1, v13, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_8

    iget-object v1, v12, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v11, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v13, v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p8, :cond_2

    invoke-virtual/range {p5 .. p5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v3, 0x400000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v0, v14, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;

    invoke-virtual/range {p6 .. p6}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    invoke-direct {v0, v11, v1}, Lorg/openjdk/tools/javac/comp/Resolve$BadVarargsMethod;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;)V

    move-object v14, v0

    :cond_1
    return-object v14

    :cond_2
    iget-object v1, v13, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v1

    const/4 v15, 0x1

    xor-int/2addr v1, v15

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :try_start_0
    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Warner;->clear()V

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Lorg/openjdk/tools/javac/comp/Resolve;->rawInstantiate(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-virtual {v2, v13, v1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->addApplicableCandidate(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v11, v0, v12, v13}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v14, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;

    invoke-direct {v1, v11, v0, v12, v13}, Lorg/openjdk/tools/javac/comp/Resolve$AccessError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v14, v1

    :cond_3
    return-object v14

    :cond_4
    iget-object v1, v14, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v14, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->mostSpecific(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    move-object v13, v0

    :goto_0
    return-object v13

    :catch_0
    move-exception v0

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->addInapplicableCandidate(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v1, v14, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v15, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v0, v11, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    move-object v14, v0

    :goto_1
    return-object v14

    :cond_7
    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v0, v11, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    return-object v0

    :cond_8
    :goto_2
    return-object v14
.end method

.method public superclasses(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/c2;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/c2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0
.end method
