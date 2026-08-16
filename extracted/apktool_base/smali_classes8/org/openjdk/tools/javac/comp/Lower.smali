.class public Lorg/openjdk/tools/javac/comp/Lower;
.super Lorg/openjdk/tools/javac/tree/TreeTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;,
        Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;,
        Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;,
        Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;,
        Lorg/openjdk/tools/javac/comp/Lower$BasicFreeVarCollector;,
        Lorg/openjdk/tools/javac/comp/Lower$ClassMap;
    }
.end annotation


# static fields
.field public static final USE_CLOSE_RESOURCE_METHOD_THRESHOLD:I = 0x4

.field protected static final lowerKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Lower;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessConstrTags:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private accessConstrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private accessNums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private accessSyms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "[",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private accessed:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field actualSymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private assertionsDisabledClassCache:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field private final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field attrEnv:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final classDollar:Lorg/openjdk/tools/javac/util/Name;

.field classMap:Lorg/openjdk/tools/javac/comp/Lower$ClassMap;

.field classdefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;"
        }
    .end annotation
.end field

.field conflictsChecker:Lorg/openjdk/tools/javac/tree/JCTree$Visitor;

.field currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

.field currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

.field currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field private final debugLower:Z

.field private final dollarAssertionsDisabled:Lorg/openjdk/tools/javac/util/Name;

.field private final dollarCloseResource:Lorg/openjdk/tools/javac/util/Name;

.field private enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

.field enumSwitchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;",
            ">;"
        }
    .end annotation
.end field

.field freevarCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field lambdaTranslationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private make_pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final operators:Lorg/openjdk/tools/javac/comp/Operators;

.field outerThisStack:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation
.end field

.field outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

.field private final pkginfoOpt:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

.field proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field public prunedTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field private final source:Lorg/openjdk/tools/javac/code/Source;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private systemArraycopyMethod:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field private final target:Lorg/openjdk/tools/javac/jvm/Target;

.field translated:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

.field private final typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

.field private final types:Lorg/openjdk/tools/javac/code/Types;

.field private final writer:Lorg/openjdk/tools/javac/jvm/ClassWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Lower;->lowerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 4

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->prunedTree:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->lambdaTranslationMap:Ljava/util/Map;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Lower$ClassMap;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Lower$ClassMap;-><init>(Lorg/openjdk/tools/javac/comp/Lower;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classMap:Lorg/openjdk/tools/javac/comp/Lower$ClassMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Lower$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Lower$1;-><init>(Lorg/openjdk/tools/javac/comp/Lower;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->conflictsChecker:Lorg/openjdk/tools/javac/tree/JCTree$Visitor;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower;->lowerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Operators;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Operators;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/ClassWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->writer:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ConstFold;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "assertionsDisabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->dollarAssertionsDisabled:Lorg/openjdk/tools/javac/util/Name;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->classDollar:Lorg/openjdk/tools/javac/util/Name;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "closeResource"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->dollarCloseResource:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object p1

    const-string v0, "debuglower"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->debugLower:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->get(Lorg/openjdk/tools/javac/util/Options;)Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->pkginfoOpt:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$null$6(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/jvm/Target;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/jvm/ClassWriter;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Lower;->writer:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Lower;->outerCacheClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    return-void
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/comp/Check;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Lower;->chk:Lorg/openjdk/tools/javac/comp/Check;

    return-object p0
.end method

.method private static accessCode(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->DEREF:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    return p0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->ASSIGN:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    return p0

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isIncOrDecUnaryOp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isAssignop()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;->LEFT:Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getOperand(Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    if-ne p0, v1, :cond_3

    iget-object p0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->getAccessCode(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->DEREF:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    return p0
.end method

.method private addPrunedInfo(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->prunedTree:Ljava/util/Map;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->prunedTree:Ljava/util/Map;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private assertFlagTest(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Lower;->assertionsDisabledClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->dollarAssertionsDisabled:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/comp/Lower;->lookupSynthetic(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-nez v2, :cond_2

    new-instance v8, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->dollarAssertionsDisabled:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    const-wide/16 v3, 0x1018

    move-object v2, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-direct {p0, p1, v8, v2}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->desiredAssertionStatus:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lorg/openjdk/tools/javac/comp/Lower;->classOfType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeUnary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v8, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v3, 0x8

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :cond_1
    move-object v2, v8

    :cond_2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeUnary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object p1

    return-object p1
.end method

.method private assertionsDisabledClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->assertionsDisabledClassCache:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v1, 0x1008

    invoke-virtual {p0, v1, v2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeEmptyClass(JLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->assertionsDisabledClassCache:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$null$2(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method private binaryAccessOperator(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    new-instance v1, Lorg/openjdk/tools/javac/comp/F0;

    invoke-direct {v1, p2, p1}, Lorg/openjdk/tools/javac/comp/F0;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;I)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Operators;->lookupBinaryOp(Ljava/util/function/Predicate;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$visitAssignop$5(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method private cacheName(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "array"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, "L"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method private cacheSym(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 7

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Lower;->outerCacheClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->cacheName(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p2

    invoke-direct {p0, v3, p2}, Lorg/openjdk/tools/javac/comp/Lower;->lookupSynthetic(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-nez p2, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    const-wide/16 v1, 0x1008

    move-object v0, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    return-object p2
.end method

.method private checkAccessConstructorTags()V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrTags:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->isTranslatedClassAvailable(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    iget-object v7, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    const/4 v8, 0x0

    const-wide/16 v4, 0x1008

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/openjdk/tools/javac/comp/Lower;->makeEmptyClass(JLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/comp/Lower;->swapAccessConstructorTag(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private classDollarSym(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 8

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Lower;->outerCacheClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classDollar:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->lookupSynthetic(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v0, :cond_0

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->classDollar:Lorg/openjdk/tools/javac/util/Name;

    new-instance v4, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v4, v0, v1, v2, v5}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const-wide/16 v1, 0x1008

    move-object v0, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-direct {p0, p1, v7, v0}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->classDollarSymBody(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v3, 0x0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    iput-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, p1, v1}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    move-object v0, v7

    :cond_0
    return-object v0
.end method

.method private classOf(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->classOfType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private classOfType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v1, 0x19

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p2, p1, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->TYPE:Lorg/openjdk/tools/javac/util/Name;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Resolve;->findIdentInType(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, p1, Lorg/openjdk/tools/javac/util/Names;->TYPE:Lorg/openjdk/tools/javac/util/Name;

    const/4 v5, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->accessBase(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, v0, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private convert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v0, p2, :cond_2

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/ConstFold;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :cond_1
    iput-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private createInfoClass(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v1, 0x600

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$makeComma$4(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$abstractLval$3(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method private enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V
    .locals 0

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private expValue(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/Boolean;
    .locals 4

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->expValueIsNull(ZLorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->expValueIsNull(ZLorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v2
.end method

.method private expValueIsNull(ZLorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LITERAL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-eqz p2, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$abstractLval$1(Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$lowerBoxedPostop$7(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/openjdk/tools/javac/tree/JCTree$Tag;ILorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->lambda$binaryAccessOperator$0(Lorg/openjdk/tools/javac/tree/JCTree$Tag;ILorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z

    move-result p0

    return p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Lower;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower;->lowerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Lower;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Lower;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Lower;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isFalse(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isFalse()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->expValue(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return v1
.end method

.method private isTranslatedClassAvailable(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isTrue(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->expValue(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    return p1
.end method

.method private synthetic lambda$abstractLval$1(Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p3, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$abstractLval$3(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-instance v2, Lorg/openjdk/tools/javac/comp/H0;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/openjdk/tools/javac/comp/H0;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$binaryAccessOperator$0(Lorg/openjdk/tools/javac/tree/JCTree$Tag;ILorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z
    .locals 0

    invoke-virtual {p2, p0}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->getAccessCode(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$lowerBoxedPostop$7(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    new-instance v1, Lorg/openjdk/tools/javac/comp/G0;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/openjdk/tools/javac/comp/G0;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)V

    invoke-virtual {p0, p3, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$makeComma$4(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$null$2(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Indexed(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object p1

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-interface {p3, p1}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$null$6(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object p2

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lorg/openjdk/tools/javac/comp/Lower;->makeAssignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lorg/openjdk/tools/javac/comp/Lower;->makeComma(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$visitAssignop$5(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;ZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->noAssignOp()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Operators;->resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3, v0, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private lookupConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    return-object p1
.end method

.method private lookupField(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalField(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object p1

    return-object p1
.end method

.method private lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    return-object p1
.end method

.method private lookupSynthetic(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 4

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make_pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method private makeNonNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Lower;->makeBinary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object p1

    return-object p1
.end method

.method private makeOuterThisVarDecl(ILorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method private makeOuterThisVarSymbol(Lorg/openjdk/tools/javac/code/Symbol;J)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v6, p1}, Lorg/openjdk/tools/javac/comp/Lower;->outerThisName(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    move-object v2, v0

    move-wide v3, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method private makeResourceCloseInvocation(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->convert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->close:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    return-object p1
.end method

.method private makeSyntheticName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/util/Name;->append(CLorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->lookupSynthetic(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1
.end method

.method private makeTranslationMap(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            ")",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private makeTwrBlock(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;ZI)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;",
            "ZI)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v2

    :cond_0
    new-instance v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v6, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    instance-of v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v10, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v9

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v9, v6}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    iget-object v9, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v9, :cond_1

    invoke-static {v9}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v9

    sget-object v10, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    instance-of v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v7}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "twrVar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-direct {v0, v9, v10}, Lorg/openjdk/tools/javac/comp/Lower;->makeSyntheticName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v12

    iget-object v9, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v10, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    :goto_1
    move-object v13, v9

    goto :goto_2

    :cond_3
    iget-object v9, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :goto_2
    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v10, 0x1010

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v9, v7}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-object v10, v6

    check-cast v10, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v9, v7, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v9

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v10, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v7

    invoke-static {v6}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v6

    sget-object v10, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v6, v10}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v6

    invoke-virtual {v5, v9}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    move v9, v6

    move-object v6, v7

    :goto_3
    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "primaryException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v10

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-direct {v0, v10, v11}, Lorg/openjdk/tools/javac/comp/Lower;->makeSyntheticName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v13

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v14, v10, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v11, 0x1000

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v10, v7}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    new-instance v10, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v14

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v15, v11, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v16, 0x1010

    move-object v11, v10

    move-object/from16 v18, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v18

    invoke-direct/range {v11 .. v16}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v12, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assignment(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v12

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v13, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    move-result-object v10

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v12, v10}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v10

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v12, v11, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object v10

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v12, v11, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    invoke-static/range {p2 .. p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v13

    invoke-virtual {v11, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {v0, v7, v6, v9}, Lorg/openjdk/tools/javac/comp/Lower;->makeTwrFinallyClause(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    add-int/2addr v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->makeTwrBlock(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;ZI)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    invoke-static {v10}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object v1

    iput-boolean v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finallyCanCompleteNormally:Z

    invoke-virtual {v5, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    return-object v1
.end method

.method private makeTwrCloseStatement(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->paramName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v1, 0x1000

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->addSuppressed:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeResourceCloseInvocation(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v6, v3, v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1, v0, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finallyCanCompleteNormally:Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->makeNonNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeResourceCloseInvocation(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p2

    invoke-virtual {v1, p1, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object p1

    return-object p1
.end method

.method private makeTwrFinallyClause(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->dollarCloseResource:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->lookupSynthetic(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Lower;->shouldUseCloseResourceMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Lower;->dollarCloseResource:Lorg/openjdk/tools/javac/util/Name;

    new-instance v9, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v5, v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v6, 0x100a

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->getParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/openjdk/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v8, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-direct {p0, v7, v5}, Lorg/openjdk/tools/javac/comp/Lower;->makeTwrCloseStatement(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v6, v1, v2, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v5

    iput-object v5, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v5

    iget-object v6, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v4, v5, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeTwrCloseStatement(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeNonNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p3, p2, p1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2, v1, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    return-object p1
.end method

.method private needPackageInfoClass(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)Z
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$main$Option$PkgInfo:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->pkginfoOpt:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getDeclarationAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->getRetention(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;->SOURCE:Lorg/openjdk/tools/javac/code/Attribute$RetentionPolicy;

    if-eq v0, v2, :cond_0

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->getAnnotations()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method private outerCacheClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x200

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v2

    :cond_1
    const-wide/16 v1, 0x1008

    invoke-virtual {p0, v1, v2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeEmptyClass(JLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0
.end method

.method private patchTargets(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;

    invoke-direct {v0, p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower$1Patcher;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method private shouldUseCloseResourceMethod()Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;-><init>(Lorg/openjdk/tools/javac/comp/Lower;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Lower$1TryFinder;->useCloseResourceMethod()Z

    move-result v0

    return v0
.end method

.method private static treeTag(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    iget p0, p0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITXOR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITOR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITAND_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->USR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SL_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MOD_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DIV_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MUL_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :cond_0
    :pswitch_a
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10e
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private useClone()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->clone:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private visitArrayForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v7, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v4, 0x1000

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v3

    new-instance v10, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "len"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v7

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v4, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v5, 0x1000

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v4, v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v4

    new-instance v5, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v14

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v15, v6, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v12, 0x1000

    move-object v11, v5

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v7, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v6

    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v9, v8}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    iput-object v8, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v8, v7, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v3, v4, v6}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v7

    invoke-virtual {v0, v4, v6, v7}, Lorg/openjdk/tools/javac/comp/Lower;->makeBinary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object v4

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v7, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/openjdk/tools/javac/comp/Lower;->makeUnary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v8, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v8, v8, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v8, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v9, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Indexed(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v7, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v8, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v9, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5, v8, v9, v7, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    iget-object v5, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v7, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v2, v7}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v6}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ForLoop(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    iput-object v3, v0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {v0, v2, v1, v3}, Lorg/openjdk/tools/javac/comp/Lower;->patchTargets(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method private visitEnumConstantDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;I)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeLit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Lower;->makeLit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private visitEnumDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v5, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v5, :cond_0

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    iput-object v5, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    iget-object v5, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/openjdk/tools/javac/comp/Lower;->classOfType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    new-instance v6, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v7, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v8, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v8}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v9, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    move v10, v3

    :goto_0
    invoke-virtual {v9}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_2

    iget-object v11, v9, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v11, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v14, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v11, v14}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v9, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v14, v11

    check-cast v14, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v14, v14, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v14, v14, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v16, 0x4000

    and-long v14, v14, v16

    cmp-long v12, v14, v12

    if-eqz v12, :cond_1

    check-cast v11, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    add-int/lit8 v12, v10, 0x1

    invoke-direct {v0, v11, v10}, Lorg/openjdk/tools/javac/comp/Lower;->visitEnumConstantDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;I)V

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v13, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v10, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v7, v11}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move v10, v12

    goto :goto_1

    :cond_1
    iget-object v11, v9, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v8, v11}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_1
    iget-object v9, v9, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v11, "VALUES"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    :goto_2
    iget-object v10, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v10

    const-string v11, ""

    if-eqz v10, :cond_3

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    goto :goto_2

    :cond_3
    new-instance v10, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v15, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v14, v15}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v14

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v15, v15, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v10, v14, v15}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    new-instance v15, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v14, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v14, v14, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v16, 0x101a

    move-object/from16 v19, v14

    move-object v14, v15

    move-object v12, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v14 .. v19}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v14, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v13, v14}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v13

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v14

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v9, v13, v14, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v6

    iput-object v10, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v9, v12, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v6, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->values:Lorg/openjdk/tools/javac/util/Name;

    iget-object v13, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v14

    invoke-direct {v0, v6, v9, v13, v14}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Lower;->useClone()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v9, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v10, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v12, v12, Lorg/openjdk/tools/javac/code/Symtab;->arrayCloneMethod:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v10, v11, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v2

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v9, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    move v15, v3

    move-object/from16 v18, v8

    move v8, v4

    goto/16 :goto_4

    :cond_4
    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v14}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v14, "result"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    :goto_3
    iget-object v13, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    goto :goto_3

    :cond_5
    new-instance v11, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v15, 0x1010

    move-object v14, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v14, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v13, v14}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v13

    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v14, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v15

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v14, v15, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v4, v14}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v4

    iput-object v10, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v9, v11, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v4

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->systemArraycopyMethod:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v9, :cond_6

    new-instance v9, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    const-string v13, "arraycopy"

    invoke-virtual {v10, v13}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v23

    new-instance v10, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v14, v13, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v13, v13, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    new-array v15, v2, [Lorg/openjdk/tools/javac/code/Type;

    aput-object v13, v15, v3

    const/16 v16, 0x1

    aput-object v13, v15, v16

    invoke-static {v14, v13, v14, v15}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v13

    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v14, v14, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v15

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v10, v13, v14, v15, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->systemType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v21, 0x9

    move-object/from16 v20, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v2

    invoke-direct/range {v20 .. v25}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->systemArraycopyMethod:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    :cond_6
    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symtab;->systemType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v9

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->systemArraycopyMethod:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2, v9, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v9

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v10, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v10

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v13

    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v14, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v14

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-object/from16 v18, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v8

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v15, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v12

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v15, v12, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    const/4 v12, 0x2

    new-array v12, v12, [Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v15, 0x0

    aput-object v8, v12, v15

    const/4 v8, 0x1

    aput-object v3, v12, v8

    invoke-static {v10, v13, v14, v12}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :goto_4
    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-boolean v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->debugLower:Z

    if-eqz v3, :cond_7

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ".valuesDef = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->valueOf:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v6}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-direct {v0, v2, v3, v4, v6}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v9, 0x8

    and-long/2addr v3, v9

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_5

    :cond_8
    move v3, v15

    :goto_5
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v6, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v8

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->valueOf:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v5, v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-direct {v0, v8, v9, v5}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v4

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    iget-object v4, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-boolean v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->debugLower:Z

    if-eqz v3, :cond_9

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".valueOf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v7, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual/range {v18 .. v18}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private visitIterableForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->cvarUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->iterableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3, v1, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->iterator:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v3, v2, v4}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    new-instance v8, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->iteratorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v3, 0x1000

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->hasNext:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v8, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->next:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v8, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v0}, Lorg/openjdk/tools/javac/code/Types;->cvarUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v4, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v6, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3, v5, v6, v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v0, v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v3

    iput v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->endpos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ForLoop(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Lower;->patchTargets(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method private visitMethodDefInternal(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 10

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInner()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->freevars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->outerThisDef(ILorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    :cond_1
    iget v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    const-wide v7, 0x200000000L

    move-object v3, p0

    move-object v5, v9

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lorg/openjdk/tools/javac/comp/Lower;->freevarDefs(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;J)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translateVarDefs(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-nez v4, :cond_2

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_2
    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    :cond_3
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    :goto_0
    invoke-virtual {v9}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v9, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Lower;->proxyName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v6, v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->capturedLocals:Lorg/openjdk/tools/javac/util/List;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v7, v5}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iput-object v6, v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->capturedLocals:Lorg/openjdk/tools/javac/util/List;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isInitialConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget v6, v6, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v6, v5}, Lorg/openjdk/tools/javac/comp/Lower;->initField(ILorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :cond_4
    iget-object v5, v9, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    new-instance v6, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v6, v4, v7, v5, v8}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v6, v0, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isInitialConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->initOuterThis(I)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :cond_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->lambdaTranslationMap:Ljava/util/Map;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->lambda:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/Name;->startsWith(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->makeTranslationMap(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_9
    :goto_1
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->lambdaTranslationMap:Ljava/util/Map;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->lambdaTranslationMap:Ljava/util/Map;

    :goto_2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :goto_3
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->lambdaTranslationMap:Ljava/util/Map;

    throw p1
.end method


# virtual methods
.method public abstractLval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->abstractLval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v1, Lorg/openjdk/tools/javac/comp/J0;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/J0;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)V

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_3

    invoke-interface {p2, p1}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v1, Lorg/openjdk/tools/javac/comp/I0;

    invoke-direct {v1, p0, p2, v0}, Lorg/openjdk/tools/javac/comp/I0;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Lower;->abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p2, p1}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 9

    .line 1
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    .line 4
    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-interface {p3, p1}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v2, :cond_3

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    .line 9
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v4, 0x1010

    move-object v3, v0

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->convert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    .line 15
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->LetExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;

    move-result-object p1

    .line 16
    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    .line 17
    :cond_3
    :goto_1
    invoke-interface {p3, p1}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    invoke-interface {p3, p1}, Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;->build(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 19
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public access(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 15

    move-object v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :goto_0
    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v9, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v9, v10, :cond_2

    .line 2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v9, v6, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eq v0, v9, :cond_2

    .line 3
    move-object v0, v1

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v3, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 5
    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeLit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->proxyName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-wide v9, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v11, 0x10

    and-long/2addr v9, v11

    cmp-long v0, v9, v4

    if-eqz v0, :cond_1

    move v7, v8

    :cond_1
    invoke-static {v7}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 8
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    move-object v0, v2

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_3
    move-object v0, v9

    .line 10
    :goto_1
    sget-object v10, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v11, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v8, :cond_9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_9

    const/4 v3, 0x3

    if-eq v10, v3, :cond_4

    goto/16 :goto_9

    .line 11
    :cond_4
    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v3, v4, :cond_17

    .line 12
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    :goto_2
    if-eqz v0, :cond_6

    .line 13
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 14
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v4, v5, :cond_6

    .line 15
    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_2

    :cond_5
    move-object v0, v9

    goto :goto_2

    .line 16
    :cond_6
    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 17
    move-object v0, v2

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iput-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    goto/16 :goto_9

    :cond_7
    if-nez v0, :cond_8

    .line 18
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    .line 19
    iput-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    goto/16 :goto_9

    .line 20
    :cond_8
    move-object v1, v2

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iput-object v0, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 21
    iput-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    goto/16 :goto_9

    .line 22
    :cond_9
    iget-object v10, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v10, v10, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v11, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v10, v11, :cond_16

    if-eqz p4, :cond_a

    .line 23
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->needsPrivateAccess(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 24
    :cond_a
    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->needsProtectedAccess(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    move v10, v8

    goto :goto_3

    :cond_c
    move v10, v7

    :goto_3
    if-nez v10, :cond_e

    .line 25
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->needsPrivateAccess(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_4

    :cond_d
    move v11, v7

    goto :goto_5

    :cond_e
    :goto_4
    move v11, v8

    :goto_5
    if-nez v0, :cond_f

    .line 26
    iget-object v12, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v13, v6, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v13, v13, Lorg/openjdk/tools/javac/code/Symtab;->predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eq v12, v13, :cond_f

    iget-object v12, v6, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v13, v6, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 27
    invoke-virtual {v1, v12, v13}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v12

    if-nez v12, :cond_f

    move v7, v8

    :cond_f
    if-nez v11, :cond_10

    if-eqz v7, :cond_17

    .line 28
    :cond_10
    iget-object v12, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v13, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 29
    iget-object v12, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v12, v3, :cond_11

    .line 30
    move-object v3, v1

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 31
    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/comp/Lower;->addPrunedInfo(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 32
    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->makeLit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_11
    if-eqz v11, :cond_15

    .line 33
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    .line 34
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v11

    const-wide/16 v13, 0x8

    and-long/2addr v11, v13

    cmp-long v4, v11, v4

    if-nez v4, :cond_13

    if-nez v0, :cond_12

    .line 35
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v8}, Lorg/openjdk/tools/javac/comp/Lower;->makeOwnerThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 36
    :cond_12
    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :goto_6
    move-object v7, v3

    goto :goto_7

    :cond_13
    move-object v9, v0

    goto :goto_6

    :goto_7
    move-object v0, p0

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v5, p4

    .line 37
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Lower;->accessSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;ZZ)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    .line 38
    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    if-eqz v9, :cond_14

    goto :goto_8

    :cond_14
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    .line 39
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v9

    .line 40
    :goto_8
    invoke-virtual {v1, v9, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 41
    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0

    :cond_15
    if-eqz v7, :cond_17

    .line 42
    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    .line 43
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/javac/comp/Lower;->accessBase(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 45
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    .line 46
    :cond_16
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v10, v0, :cond_17

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/Lower;->lambdaTranslationMap:Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_17

    .line 48
    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    :cond_17
    :goto_9
    return-object v2
.end method

.method public access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    .line 49
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public accessBase(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeOwnerThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public accessClass(Lorg/openjdk/tools/javac/code/Symbol;ZLorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 4

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p1, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_1
    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p3, v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    goto :goto_1

    :cond_2
    return-object p2

    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public accessConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 8

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->needsPrivateAccess(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v1, :cond_1

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-wide v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_0
    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v2, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    new-instance v5, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->accessConstructorTag()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v1, v2, v3, v6}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const-wide/16 v2, 0x1000

    move-object v1, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-direct {p0, p1, v7, v0}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessed:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_1
    return-object v1

    :cond_2
    return-object p2
.end method

.method public accessConstructorDef(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p3

    iput-object p2, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Idents(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Call(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p3

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    return-object p1
.end method

.method public accessConstructorTag()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v3, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->getCompiled(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x1008

    invoke-virtual {p0, v1, v2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeEmptyClass(JLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrTags:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrTags:Lorg/openjdk/tools/javac/util/List;

    return-object v1
.end method

.method public accessDef(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;I)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 6

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Symbol;

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Idents(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    rem-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, v0, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Idents(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v4, :cond_3

    and-int/lit8 v1, p4, 0x1

    sub-int/2addr p4, v1

    invoke-static {p4}, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->getFromCode(I)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    move-result-object v1

    sget-object v4, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$code$Symbol$OperatorSymbol$AccessCode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NO_TAG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-direct {p0, p4, v4}, Lorg/openjdk/tools/javac/comp/Lower;->binaryAccessOperator(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Lower;->treeTag(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v5

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, v5, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object p2

    invoke-direct {p0, p4, v4}, Lorg/openjdk/tools/javac/comp/Lower;->binaryAccessOperator(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p4

    iput-object p4, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    goto :goto_1

    :pswitch_0
    iget-object p4, v1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->tag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, p4, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeUnary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object p2

    goto :goto_1

    :pswitch_1
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p4, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object p2

    :goto_1
    :pswitch_2
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p3, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Call(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p2

    :goto_2
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p3, v2, v3, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_3
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    iput-object p3, p4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_4
    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    :goto_4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    iput-object p3, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_4

    :cond_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public accessName(II)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 p1, p2, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 p2, p2, 0xa

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public accessSymbol(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;ZZ)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 9

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p4, p2}, Lorg/openjdk/tools/javac/comp/Lower;->accessClass(Lorg/openjdk/tools/javac/code/Symbol;ZLorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v1, v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessed:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    sget v3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->numberOfAccessCodes:I

    new-array v3, v3, [Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessed:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_2
    sget-object v2, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 p3, 0x2

    if-ne v2, p3, :cond_3

    sget-object p3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->DEREF:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p3, p3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->accessCode(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    sget-object v3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->FIRSTASGOP:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget v3, v3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p3

    invoke-direct {p0, v2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->binaryAccessOperator(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p3

    iget v3, p3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v4, 0x100

    if-ne v3, v4, :cond_5

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    goto :goto_1

    :cond_5
    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_6
    sget-object p3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->ASSIGN:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;

    iget p3, p3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->code:I

    if-ne v2, p3, :cond_7

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    goto :goto_1

    :cond_7
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    :goto_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    move v8, v2

    move-object v2, p3

    move p3, v8

    :goto_2
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    add-int/lit8 p3, p3, 0x1

    :cond_8
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide p4

    const-wide/16 v5, 0x8

    and-long/2addr p4, v5

    const-wide/16 v5, 0x0

    cmp-long p4, p4, v5

    if-nez p4, :cond_9

    iget-object p4, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p4, p5}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p4

    invoke-virtual {v2, p4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :cond_9
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    aget-object p4, p1, p3

    if-nez p4, :cond_a

    new-instance p4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result p5

    or-int/lit16 p5, p5, 0x1008

    int-to-long v5, p5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p0, p5, p3}, Lorg/openjdk/tools/javac/comp/Lower;->accessName(II)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p5

    new-instance v7, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v7, v2, v3, v4, v1}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v1, p4

    move-wide v2, v5

    move-object v4, p5

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p5

    invoke-direct {p0, p2, p4, p5}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    aput-object p4, p1, p3

    :cond_a
    return-object p4
.end method

.method public boxArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, p2

    move v3, v1

    :goto_0
    iget-object v4, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v4, v6}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    iget-object v6, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    or-int/2addr v3, v5

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    if-eqz p3, :cond_4

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2, v1, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p2, p3, v1}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result p3

    if-ne p3, v5, :cond_7

    iget-object p3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p3, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object p3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eq p1, p3, :cond_5

    move v1, v5

    :cond_5
    or-int p3, v3, v1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    if-nez p3, :cond_6

    return-object p2

    :cond_6
    :goto_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public boxIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">(TT;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->boxPrimitive(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->boxPrimitive(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->unbox(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public boxPrimitive(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->boxPrimitive(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public boxPrimitive(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->valueOf:Lorg/openjdk/tools/javac/util/Name;

    .line 4
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    .line 6
    invoke-direct {p0, v0, v1, p2, v2}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method public checkConflicts(Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
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

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->conflictsChecker:Lorg/openjdk/tools/javac/tree/JCTree$Visitor;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classMap:Lorg/openjdk/tools/javac/comp/Lower$ClassMap;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classMap:Lorg/openjdk/tools/javac/comp/Lower$ClassMap;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    :cond_1
    return-object v0
.end method

.method public classDollarSymBody(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 12

    iget-object v5, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v10, v2, Lorg/openjdk/tools/javac/code/Symtab;->classLoaderType:Lorg/openjdk/tools/javac/code/Type;

    const-wide/16 v7, 0x1008

    move-object v6, v1

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object p1

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v0, v3}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make_pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->forName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v4, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v9, v4, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->classLoaderType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v8, v9, v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EQ:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    invoke-virtual {p0, v3, v4, v8}, Lorg/openjdk/tools/javac/comp/Lower;->makeBinary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v8

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->getClass:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-direct {p0, p1, v9, v10}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->getComponentType:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-direct {p0, p1, v9, v10}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v9, Lorg/openjdk/tools/javac/util/Names;->getClassLoader:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-direct {p0, p1, v9, v10}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    invoke-virtual {v4, v8, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object p1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->classLoaderType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {v2, v3, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Conditional(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->classLoaderType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v1, v7}, Lorg/openjdk/tools/javac/comp/Lower;->makeLit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Call(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    const-wide/16 v7, 0x0

    invoke-virtual {p2, v7, v8, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->paramName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symtab;->classNotFoundExceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-wide/16 v1, 0x1000

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->noClassDefFoundErrorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->makeNewClass(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->initCause:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v7, v8, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2, v7, v8, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    return-object p1
.end method

.method public freevarDefs(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Lower;->freevarDefs(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;J)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public freevarDefs(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;J)Lorg/openjdk/tools/javac/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "J)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1010

    or-long/2addr p4, v0

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    .line 5
    new-instance v8, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    .line 6
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Lower;->proxyName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    move-object v2, v8

    move-wide v3, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    .line 8
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    .line 9
    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 10
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 11
    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public freevars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Lower$FreeVarCollector;->fvs:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->ownerToCopyFreeVarsFrom(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public initField(ILorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v1, v2, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->This(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    return-object p1
.end method

.method public initOuterThis(I)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v2, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->This(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    return-object p1
.end method

.method public loadFreevar(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public loadFreevars(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Lower;->loadFreevar(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public lowerBoxedPostop(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPECAST:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v2, Lorg/openjdk/tools/javac/comp/L0;

    invoke-direct {v2, p0, p1, v0}, Lorg/openjdk/tools/javac/comp/L0;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;Z)V

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->abstractLval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public makeAccessible(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class def not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget v2, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Lower;->accessConstructorDef(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const/4 v2, 0x0

    :goto_0
    sget v3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol$AccessCode;->numberOfAccessCodes:I

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget v5, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v5, p1, v3, v2}, Lorg/openjdk/tools/javac/comp/Lower;->accessDef(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;I)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public makeAssignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->noAssignOp()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    iget-object v2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v1, v2, p3}, Lorg/openjdk/tools/javac/comp/Operators;->resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p3

    iput-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public makeBinary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Operators;->resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public makeComma(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/K0;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/comp/K0;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->abstractRval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public makeEmptyClass(JLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Lower;->makeEmptyClass(JLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    return-object p1
.end method

.method public makeEmptyClass(JLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1, p3}, Lorg/openjdk/tools/javac/code/Symtab;->defineClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 3
    iput-object p4, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Lower;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p4, v0}, Lorg/openjdk/tools/javac/comp/Check;->localClassName(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p4

    iput-object p4, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    .line 5
    :goto_0
    iget-object p4, p3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object p4, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 6
    sget-object p4, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object p4, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    .line 7
    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p4

    iput-object p4, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 8
    iput-wide p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    .line 9
    iget-object p4, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p4, Lorg/openjdk/tools/javac/code/Type$ClassType;

    .line 10
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, p4, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    .line 11
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p4, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    .line 12
    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p4

    .line 13
    invoke-virtual {p4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p3

    invoke-direct {p0, v1, v0, p3}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    .line 14
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/comp/Check;->putCompiled(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 15
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 16
    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, p1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    .line 17
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    .line 18
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    const/4 v5, 0x0

    .line 19
    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    .line 20
    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 21
    iget-object p2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz p5, :cond_1

    .line 22
    iget-object p2, p4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :cond_1
    return-object p1
.end method

.method public makeLit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->constType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    return-object p1
.end method

.method public makeNewClass(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make_pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p2

    iput-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->makeLit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public makeOuterThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "no.encl.instance.of.type.in.scope"

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_0
    if-eq v1, p2, :cond_4

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-object v3

    :cond_2
    iget-object v4, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v5, v1, :cond_1

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v5, v6, :cond_3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->earlyRefError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v1, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public makeOwnerThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    if-eqz p3, :cond_0

    invoke-virtual {p2, v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->This(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Lower;->makeOwnerThisN(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public makeOwnerThisN(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "no.encl.instance.of.type.in.scope"

    if-eqz v2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, v3, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_0
    if-eqz p3, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v2, v5}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_1
    iget-object v5, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v5, v6}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, v3, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-object v4

    :cond_3
    iget-object v5, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v6, v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    iget-object v2, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_0

    :cond_4
    :goto_1
    return-object v4
.end method

.method public makeString(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitiveOrVoid()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->valueOf:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method public makeThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->This(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeOuterThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public makeTwrTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-boolean v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finallyCanCompleteNormally:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Lower;->makeTwrBlock(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;ZI)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1, v0, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p1
.end method

.method public makeUnary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Unary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Operators;->resolveUnary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make_pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    return-object p1
.end method

.method public mapForEnum(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public needsPrivateAccess(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, -0x3

    and-long/2addr v2, v4

    iput-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public needsProtectedAccess(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 9

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, v4, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v4, v5}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    cmp-long p1, v5, v2

    if-nez p1, :cond_3

    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public outerThisDef(ILorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 2

    const-wide/16 v0, 0x1010

    .line 8
    invoke-direct {p0, p2, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->makeOuterThisVarSymbol(Lorg/openjdk/tools/javac/code/Symbol;J)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object p2

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeOuterThisVarDecl(ILorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method

.method public outerThisDef(ILorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isAnonymous()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const v0, 0x8000

    goto :goto_1

    :cond_3
    const/16 v0, 0x1000

    :goto_1
    or-int/lit8 v0, v0, 0x10

    int-to-long v0, v0

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    .line 5
    invoke-direct {p0, p2, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->makeOuterThisVarSymbol(Lorg/openjdk/tools/javac/code/Symbol;J)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    .line 6
    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->extraParams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->extraParams:Lorg/openjdk/tools/javac/util/List;

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeOuterThisVarDecl(ILorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method

.method public outerThisName(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    :goto_1
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public ownerToCopyFreeVarsFrom(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v0, v2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public proxyName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "val"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public swapAccessConstructorTag(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->METHOD:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v5}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithParameters(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">(TT;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->boxIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 4
    invoke-interface {v1, p1, v0}, Lorg/openjdk/tools/javac/tree/EndPosTable;->replaceTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)I

    :cond_1
    return-object v0
.end method

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")TT;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 7
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 8
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    .line 9
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v0, p1

    .line 14
    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 16
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 11
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 12
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 13
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public translateTopLevelClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->twrVars:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrTags:Lorg/openjdk/tools/javac/util/List;

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessed:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0, p2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessed:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Lower;->makeAccessible(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->translate()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->checkConflicts(Lorg/openjdk/tools/javac/util/List;)V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Lower;->checkAccessConstructorTags()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrTags:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessed:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->assertionsDisabledClassCache:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :goto_3
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->actualSymbols:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->freevarCache:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessNums:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessSyms:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrs:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessConstrTags:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->accessed:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower;->enumSwitchMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->assertionsDisabledClassCache:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    throw p1
.end method

.method public unbox(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->Value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/Name;->append(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Lower;->boxArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x0

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v3, :cond_9

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->accessConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    if-eq v2, v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->setSymbol(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_1
    iget-object v0, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->freevars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/openjdk/tools/javac/comp/Lower;->loadFreevars(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    :cond_2
    iget-wide v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v5, 0x4000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->java_lang_Enum:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_5

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :cond_4
    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    iget-object v6, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    :cond_5
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/comp/Attr;->makeNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v1, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_7

    goto :goto_0

    :cond_7
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/openjdk/tools/javac/comp/Lower;->makeOwnerThisN(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_1

    :cond_8
    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->makeThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_9
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_a
    :goto_2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isTrue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->assertFlagTest(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :goto_1
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isFalse()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->AND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->makeUnary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->makeBinary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->assertionErrorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v3, v1}, Lorg/openjdk/tools/javac/comp/Lower;->makeNewClass(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_2
    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_0
    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;

    invoke-direct {v1, p0, p1}, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    if-nez v0, :cond_4

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/Lower$AssignopDependencyScanner;->dependencyFound:Z

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->makeString(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_1
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_2
    return-void

    :cond_4
    :goto_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v2, Lorg/openjdk/tools/javac/comp/M0;

    invoke-direct {v2, p0, p1, v0}, Lorg/openjdk/tools/javac/comp/M0;-><init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;Z)V

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->abstractLval(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Lower$TreeBuilder;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->isFalse(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->isTrue(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->isTrue(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->isFalse(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_4
    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v0, :cond_0

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    const-wide/32 v3, 0x100000

    or-long v2, v1, v3

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v7, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 13

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->remove(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    if-nez v3, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->classdefs:Ljava/util/Map;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v3, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dup(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v7, 0x4000

    and-long/2addr v5, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v5

    and-long/2addr v5, v7

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->visitEnumDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    :cond_1
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v4, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v4, v5}, Lorg/openjdk/tools/javac/comp/Lower;->outerThisDef(ILorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v4

    :cond_2
    iget v5, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Lower;->freevars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v5, v6, v7}, Lorg/openjdk/tools/javac/comp/Lower;->freevarDefs(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iput-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v6

    iget-object v7, v6, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lorg/openjdk/tools/javac/util/List;

    if-nez v7, :cond_3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    iput-object v7, v6, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lorg/openjdk/tools/javac/util/List;

    :cond_3
    iget-object v7, v6, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lorg/openjdk/tools/javac/util/List;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    iput-object v7, v6, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lorg/openjdk/tools/javac/util/List;

    :cond_4
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    :goto_0
    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    if-eq v7, v6, :cond_7

    move-object v8, v7

    :goto_1
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eq v8, v6, :cond_6

    iget-object v11, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

    if-nez v11, :cond_5

    iget-object v12, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v12, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_5
    iget-object v12, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v12}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v12

    iput-object v12, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    iput-object v11, p0, Lorg/openjdk/tools/javac/comp/Lower;->outermostMemberDef:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_6
    move-object v6, v7

    goto :goto_0

    :cond_7
    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v11, 0x4

    and-long/2addr v11, v7

    cmp-long v9, v11, v9

    if-eqz v9, :cond_8

    const-wide/16 v9, 0x1

    or-long/2addr v7, v9

    iput-wide v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    :cond_8
    iget-wide v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v9, 0x7e11

    and-long/2addr v7, v9

    iput-wide v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-static {v6}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    iput-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    :goto_2
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v7, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iput-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v7, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iput-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v6

    invoke-direct {p0, v5, v4, v6}, Lorg/openjdk/tools/javac/comp/Lower;->enterSynthetic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    :cond_a
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v4

    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->proxies:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->outerThisStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->translated:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    const-wide/16 v0, 0x1000

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->isTrue(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Lower;->convert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->addPrunedInfo(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->isFalse(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Lower;->convert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->addPrunedInfo(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_0
    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitEnumSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->mapForEnum(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->ordinal:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->lookupMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->mapVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v4, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Indexed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v5, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->forConstant(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v6, v5, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v0

    invoke-direct {p0, v0, p1, v0}, Lorg/openjdk/tools/javac/comp/Lower;->patchTargets(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-object v0
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->visitIterableForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->visitArrayForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V

    :goto_0
    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->isTrue(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->addPrunedInfo(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->isFalse(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->addPrunedInfo(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_1
    return-void
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitLetExpr(Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translateVarDefs(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 8

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "enum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Param(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v6, 0x1000

    or-long/2addr v4, v6

    iput-wide v4, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-wide v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v4, v6

    iput-wide v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ordinal"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Param(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    or-long/2addr v3, v6

    iput-wide v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v3, v6

    iput-wide v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->extraParams:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->extraParams:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->extraParams:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v3, v4, v0, v5}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol;->erasure_field:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->visitMethodDefInternal(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    throw p1
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->setAttributes(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v4, 0x8000000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->createInfoClass(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v3, v0, v4}, Lorg/openjdk/tools/javac/comp/Lower;->boxArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->freevars(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/openjdk/tools/javac/comp/Lower;->loadFreevars(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->accessConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v3, v4, :cond_3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Lower;->makeNull()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    :cond_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Lower;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/Attr;->makeNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->makeThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->makeOwnerThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    :goto_1
    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    :cond_6
    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->make_at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->needPackageInfoClass(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->setAttributes(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x1600

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v0, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Lower;->createInfoClass(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodDef:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->isDirectSuperInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v4, :cond_1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->classOf(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_1
    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types;->isDirectSuperInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_2
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v3, :cond_4

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->enclOp:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->access(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->makeThis(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_2
    return-void
.end method

.method public visitStringSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->getCases()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/comp/Attr;->makeNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v7}, Ljava/util/LinkedHashMap;-><init>(IF)V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v3, v7}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-static {v12}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    if-nez v13, :cond_1

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13, v6, v7}, Ljava/util/LinkedHashSet;-><init>(IF)V

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v14

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v15, v7, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v12, 0x1010

    move-object v11, v3

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v7

    iget-object v10, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v10}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tmp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v13

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v14, v10, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v11, 0x1000

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v11, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v10

    iget-object v11, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v10

    check-cast v10, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v11, v10, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v12, v12, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iput-object v12, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v12, v11, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v10, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v10}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v11, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v12, v12, Lorg/openjdk/tools/javac/util/Names;->hashCode:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v13

    invoke-direct {v0, v11, v12, v13}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v12, v12, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v15

    if-lt v15, v6, :cond_4

    move v15, v6

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    invoke-static {v15}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v9, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v9

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v13, v13, Lorg/openjdk/tools/javac/util/Names;->equals:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v17, v3

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-direct {v0, v9, v13, v3}, Lorg/openjdk/tools/javac/comp/Lower;->makeCall(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v3

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v9, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v13

    move-object/from16 v18, v8

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v6

    invoke-virtual {v9, v13, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v6

    iget-object v8, v7, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v8}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    invoke-virtual {v9, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v6

    invoke-virtual {v9, v3, v6, v15}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object v15

    move-object/from16 v3, v17

    move-object/from16 v8, v18

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v8

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Break(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    move-result-object v6

    iput-object v11, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3, v15}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v14}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v8

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-object/from16 v3, v17

    move-object/from16 v8, v18

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v11, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v11}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v7

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v6

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    invoke-direct {v0, v7, v1, v6}, Lorg/openjdk/tools/javac/comp/Lower;->patchTargets(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v9

    if-nez v9, :cond_7

    move-object v9, v8

    goto :goto_6

    :cond_7
    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v10

    invoke-static {v10}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v10

    iget-object v10, v10, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v9

    :goto_6
    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->getStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v10, v9, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v2, 0x0

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    return-object v1
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x4000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v4, v5}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    :goto_1
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translateCases(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->visitEnumSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->visitStringSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_2

    :cond_5
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_2
    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->makeTwrTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->getStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->getStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_1
    return-void

    :cond_4
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isIncOrDecUnaryOp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Lower$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->lowerBoxedPostop(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :pswitch_1
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->makeAssignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_1
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->boxIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/16 v3, 0x101

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/comp/ConstFold;->fold1(ILorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-nez v1, :cond_0

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    or-long v3, v2, v4

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Lower;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v2, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_1
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower;->currentMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Lower;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Lower;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method
