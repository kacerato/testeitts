.class public Lorg/openjdk/tools/javac/comp/LambdaToMethod;
.super Lorg/openjdk/tools/javac/tree/TreeTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$MemberReferenceToLambda;,
        Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;
    }
.end annotation


# static fields
.field public static final FLAG_BRIDGES:I = 0x4

.field public static final FLAG_MARKERS:I = 0x2

.field public static final FLAG_SERIALIZABLE:I = 0x1

.field protected static final unlambdaKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private analyzer:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

.field private attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private attrEnv:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
            "*>;"
        }
    .end annotation
.end field

.field private contextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
            "*>;>;"
        }
    .end annotation
.end field

.field private diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final dumpLambdaToMethodStats:Z

.field private final forceSerializable:Z

.field private kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

.field private log:Lorg/openjdk/tools/javac/util/Log;

.field private lower:Lorg/openjdk/tools/javac/comp/Lower;

.field private make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private names:Lorg/openjdk/tools/javac/util/Names;

.field private operators:Lorg/openjdk/tools/javac/comp/Operators;

.field private rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field private syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

.field private types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->unlambdaKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->unlambdaKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Lower;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Operators;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Operators;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TransTypes;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TransTypes;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

    new-instance v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->analyzer:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    const-string v1, "debug.dumpLambdaToMethodStats"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->dumpLambdaToMethodStats:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    const-string p1, "forceSerializable"

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->forceSerializable:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeSyntheticVar(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/TransTypes;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

    return-object p0
.end method

.method public static synthetic access$1600(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$1700(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Attr;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    return-object p0
.end method

.method public static synthetic access$1800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->convertArgs(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->setVarargsIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makePrivateSyntheticMethod(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic access$2300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->contextMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2400(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->dumpLambdaToMethodStats:Z

    return p0
.end method

.method public static synthetic access$2500(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/Lower;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    return-object p0
.end method

.method public static synthetic access$2800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    return-object p0
.end method

.method public static synthetic access$3100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->forceSerializable:Z

    return p0
.end method

.method public static synthetic access$3300(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3800(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/code/Symbol;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)I

    move-result p0

    return p0
.end method

.method private addDeserializationCase(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type$MethodType;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v8, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->classSig(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v6, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-direct {v8, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->classSig(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->typeSig(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    const-string v7, "getImplMethodKind"

    invoke-direct {v8, v7, v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserGetter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    iget-object v10, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v10

    invoke-direct {v8, v6, v7, v10}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->eqTest(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    new-instance v7, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual/range {p7 .. p7}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/openjdk/tools/javac/code/Type;

    new-instance v13, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v14, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v13

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v13

    new-instance v14, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v14}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v15, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v15, v15, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v14, v15}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v14

    invoke-virtual {v14}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v14

    iget-object v15, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-object/from16 p1, v10

    iget-object v10, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v10, v12}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v10

    iget-object v12, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v12, v12, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 p3, v9

    const-string v9, "getCapturedArg"

    invoke-direct {v8, v9, v12, v14, v13}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserGetter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v9

    invoke-virtual {v15, v10, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, p1

    move-object/from16 v9, p3

    goto :goto_0

    :cond_0
    move-object/from16 p3, v9

    iget-object v9, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-string v10, "getFunctionalInterfaceClass"

    invoke-direct {v8, v6, v10, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    const-string v6, "getFunctionalInterfaceMethodName"

    invoke-direct {v8, v2, v6, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    const-string v3, "getFunctionalInterfaceMethodSignature"

    invoke-direct {v8, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    const-string v3, "getImplClass"

    invoke-direct {v8, v2, v3, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    const-string v3, "getImplMethodSignature"

    invoke-direct {v8, v2, v3, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v10

    iget-object v11, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symtab;->lambdaMetafactory:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->altMetafactory:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeIndyCall(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object v0

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    if-nez v1, :cond_1

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v3, v8, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method private apportionTypeAnnotations(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Ljava/util/function/Supplier<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->onLambda:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private bsmStaticArgToType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_5
    instance-of v0, p1, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->methodHandleType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->methodTypeType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad static arg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private bsmStaticArgToTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->bsmStaticArgToType(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private classSig(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleClassSig(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertArgs(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
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

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x400000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p1, p2, v0, p3, v1}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private deserGetter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserGetter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private deserGetter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p3, p2, v1, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    .line 3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symtab;->serializedLambdaType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v7

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    const/4 v4, 0x0

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    .line 4
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 5
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    .line 6
    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$1500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->serializedLambdaType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    .line 7
    invoke-virtual {p3, v1, p1, p4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method private deserTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 12

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v9, v1, Lorg/openjdk/tools/javac/util/Names;->equals:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v8}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v11

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p2, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserGetter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {v4, p2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p3

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-virtual {v2, v3, p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p2

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->AND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p3, v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p2, p1, v0, p3, p3}, Lorg/openjdk/tools/javac/comp/Operators;->resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method private eqTest(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EQ:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1, p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object p2

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->operators:Lorg/openjdk/tools/javac/comp/Operators;

    invoke-virtual {p3, p2, v1, p1, p1}, Lorg/openjdk/tools/javac/comp/Operators;->resolveBinary(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p2
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/LambdaToMethod;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->unlambdaKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private makeDeserializeMethod(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;
    .locals 13

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Break(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    const-string v4, "getImplMethodName"

    invoke-direct {p0, v4, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->deserGetter(Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    move-result-object p1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    iput-object p1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->illegalArgumentExceptionType:Lorg/openjdk/tools/javac/code/Type;

    const-string v2, "Invalid lambda deserialization"

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeNewClass(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v11

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$1400(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p1, Lorg/openjdk/tools/javac/util/Names;->deserializeLambda:Lorg/openjdk/tools/javac/util/Name;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$1400(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$1500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$1400(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$1400(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method private makeIndyCall(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    move-object/from16 v4, p1

    :try_start_0
    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symtab;->methodHandleLookupType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v0, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->methodTypeType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v3, v5, v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    move-object/from16 v10, p4

    invoke-direct {v1, v10}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->bsmStaticArgToTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v9}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v14

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v12, v3, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v14}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    :goto_0
    move v13, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v16

    move-object v10, v0

    move-object/from16 v11, p7

    move-object/from16 v15, p5

    invoke-direct/range {v10 .. v16}, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;[Ljava/lang/Object;)V

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-object/from16 v4, p2

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v3

    iput-object v0, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual/range {p5 .. p5}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    move-object/from16 v5, p6

    invoke-virtual {v0, v4, v3, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw v0
.end method

.method private makeLambdaBody(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeLambdaExpressionBody(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->canCompleteNormally:Z

    invoke-direct {p0, v0, p2, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeLambdaStatementBody(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private makeLambdaExpressionBody(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 7

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, p2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v4, v3, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2, v5, v6, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :try_start_1
    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, v5, v6, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/comp/TransTypes;->coerce(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2, v5, v6, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw p1
.end method

.method private makeLambdaStatementBody(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 4

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->boxedClass(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v0, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v2

    new-instance v3, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;

    invoke-direct {v3, p0, v1, p2, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1LambdaBodyTranslator;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;ZLorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz p3, :cond_0

    if-eqz v2, :cond_0

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    return-object p1
.end method

.method private makeMetafactoryIndyCall(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
            "*>;I",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;

    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v10, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v11, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v9, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->typeToMethodType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    iget-object v3, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct {v2, v4, v5, v3}, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;-><init>(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)V

    iget-object v3, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v10, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->getDescriptorType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->typeToMethodType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type$MethodType;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    new-instance v12, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, v10, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v12, v2, v3, v6, v7}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->needsAltMetafactory()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->altMetafactory:Lorg/openjdk/tools/javac/util/Name;

    :goto_1
    move-object v13, v2

    goto :goto_2

    :cond_1
    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->metafactory:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->needsAltMetafactory()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v3, v10, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->targets:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v7, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->serializableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v6, v7, :cond_2

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->isSerializable()Z

    move-result v3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->bridges:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v6, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    if-eqz v7, :cond_5

    or-int/lit8 v3, v3, 0x4

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_6
    if-eqz v7, :cond_8

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->bridges:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->bridges:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v7, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v11, v7}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v14, v1

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->isSerializable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v15, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    :try_start_0
    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$2000(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, v10, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v0

    move-object v5, v11

    move-object v6, v10

    move-object v7, v14

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->addDeserializationCase(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type$MethodType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v15}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    goto :goto_5

    :catchall_0
    move-exception v0

    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v15}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw v0

    :cond_9
    :goto_5
    move-object v5, v14

    goto :goto_6

    :cond_a
    move-object v5, v1

    :goto_6
    iget-object v0, v9, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symtab;->lambdaMetafactory:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v11, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeIndyCall(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method private makePrivateSyntheticMethod(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v0, 0x1002

    or-long v1, p1, v0

    move-object v0, v6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v6
.end method

.method private makeSyntheticVar(JLjava/lang/String;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeSyntheticVar(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object p1

    return-object p1
.end method

.method private makeSyntheticVar(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 7

    .line 2
    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v0, 0x1000

    or-long v1, p1, v0

    move-object v0, v6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v6
.end method

.method private makeThis(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    const-wide v1, 0x200001010L

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    return-object p1
.end method

.method private referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)I
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x6

    return p1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 p1, 0x7

    return p1

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x9

    return p1

    :cond_3
    const/4 p1, 0x5

    return p1
.end method

.method private setVarargsIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    if-eqz p2, :cond_3

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->setVarargsIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    :cond_3
    :goto_0
    return-void
.end method

.method private typeSig(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$L2MSignatureGenerator;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private typeToMethodType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type$MethodType;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object v0
.end method


# virtual methods
.method public makeNewClass(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;
    .locals 6
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

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    .line 7
    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    const/4 v1, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveConstructor(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeNewClass(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p1

    return-object p1
.end method

.method public makeNewClass(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    .line 2
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p2

    .line 4
    iput-object p3, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    .line 5
    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p2
.end method

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->contextMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
            "*>;)TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    .line 4
    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    .line 5
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    .line 7
    throw p1
.end method

.method public translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext<",
            "*>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 10
    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public translateTopLevelClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->contextMap:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->analyzer:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$300(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v1, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeDeserializeMethod(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$600(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$700(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    return-void

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    throw p1
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->analyzer:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$800(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    goto :goto_3

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw p1

    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V

    :goto_3
    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    check-cast v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translatedSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v4, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v5, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/openjdk/tools/javac/comp/x0;

    invoke-direct {v6, v5}, Lorg/openjdk/tools/javac/comp/x0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v7, Lorg/openjdk/tools/javac/comp/z0;

    invoke-direct {v7, v5}, Lorg/openjdk/tools/javac/comp/z0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v8, Lorg/openjdk/tools/javac/comp/A0;

    invoke-direct {v8, v3}, Lorg/openjdk/tools/javac/comp/A0;-><init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->apportionTypeAnnotations(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v8, v7, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v6, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_1

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Names;->clinit:Lorg/openjdk/tools/javac/util/Name;

    if-ne v6, v7, :cond_4

    :cond_1
    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_2

    new-instance v6, Lorg/openjdk/tools/javac/comp/B0;

    invoke-direct {v6, v5}, Lorg/openjdk/tools/javac/comp/B0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_2
    new-instance v6, Lorg/openjdk/tools/javac/comp/C0;

    invoke-direct {v6, v5}, Lorg/openjdk/tools/javac/comp/C0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_3

    new-instance v7, Lorg/openjdk/tools/javac/comp/D0;

    invoke-direct {v7, v5}, Lorg/openjdk/tools/javac/comp/D0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_2

    :cond_3
    new-instance v7, Lorg/openjdk/tools/javac/comp/E0;

    invoke-direct {v7, v5}, Lorg/openjdk/tools/javac/comp/E0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    :goto_2
    new-instance v5, Lorg/openjdk/tools/javac/comp/y0;

    invoke-direct {v5, v3}, Lorg/openjdk/tools/javac/comp/y0;-><init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    invoke-direct {v0, v1, v6, v7, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->apportionTypeAnnotations(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_4
    iget-object v5, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->self:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v5

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v5, v6, :cond_5

    iget-object v5, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->self:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/openjdk/tools/javac/comp/x0;

    invoke-direct {v6, v5}, Lorg/openjdk/tools/javac/comp/x0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v7, Lorg/openjdk/tools/javac/comp/z0;

    invoke-direct {v7, v5}, Lorg/openjdk/tools/javac/comp/z0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v5, Lorg/openjdk/tools/javac/comp/y0;

    invoke-direct {v5, v3}, Lorg/openjdk/tools/javac/comp/y0;-><init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    invoke-direct {v0, v1, v6, v7, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->apportionTypeAnnotations(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_5
    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-wide v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-virtual {v8, v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v9

    iget-object v10, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v11

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v12

    iget-object v13, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->syntheticParams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    :goto_3
    move-object v14, v5

    goto :goto_4

    :cond_6
    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    goto :goto_3

    :goto_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v5

    iput-object v3, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iput-object v4, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, v1, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeLambdaBody(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iput-object v1, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->kInfo:Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;

    invoke-static {v1, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->access$600(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v4, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->methodReferenceReceiver:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v4, :cond_7

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeThis(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_8
    :goto_5
    sget-object v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->self:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v5, v6, :cond_9

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v6

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_6

    :cond_a
    sget-object v4, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->CAPTURED_OUTER_THIS:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualThis(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->prev:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, v3}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)I

    move-result v2

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeMetafactoryIndyCall(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->isSignaturePolymorphic()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->sigPolySym:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    sget-object v2, Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$JCMemberReference$ReferenceKind:[I

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->kind:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "Should not have an invalid kind"

    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/comp/Attr;->makeNullCheck(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeThis(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;->prev:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$ReferenceTranslationContext;->referenceKind()I

    move-result v2

    invoke-direct {p0, v0, v2, v1, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->makeMetafactoryIndyCall(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->analyzer:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;->access$900(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor;Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, v0, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    check-cast v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translate(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    goto :goto_3

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw p1

    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    :goto_3
    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->LOCAL_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->context:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$TranslationContext;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;->TYPE_VAR:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->getSymbolMap(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v3, v1, Lorg/openjdk/tools/javac/tree/TreeMaker;->pos:I

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->remove(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    :cond_2
    :goto_0
    return-void
.end method
