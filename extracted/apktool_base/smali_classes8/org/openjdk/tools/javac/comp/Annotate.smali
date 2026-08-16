.class public Lorg/openjdk/tools/javac/comp/Annotate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;,
        Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;,
        Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;,
        Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;,
        Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;
    }
.end annotation


# static fields
.field protected static final annotateKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Annotate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field afterTypesQ:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final allowRepeatedAnnos:Z

.field private final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private blockCount:I

.field private final cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

.field private final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private flushCount:I

.field private final lint:Lorg/openjdk/tools/javac/code/Lint;

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private q:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final resolve:Lorg/openjdk/tools/javac/comp/Resolve;

.field private final sourceName:Ljava/lang/String;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private theSourceCompleter:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

.field private final theUnfinishedDefaultValue:Lorg/openjdk/tools/javac/code/Attribute;

.field private final typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

.field private final types:Lorg/openjdk/tools/javac/code/Types;

.field typesQ:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private validateQ:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Annotate;->annotateKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->q:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->validateQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->flushCount:I

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->typesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->afterTypesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Annotate$2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Annotate$2;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->theSourceCompleter:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Annotate;->annotateKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ConstFold;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    new-instance v1, Lorg/openjdk/tools/javac/code/Attribute$Error;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->theUnfinishedDefaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowRepeatedAnnotations()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->allowRepeatedAnnos:Z

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->sourceName:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Annotate;->lambda$annotateLater$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Annotate;)Lorg/openjdk/tools/javac/comp/TypeEnvs;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationType(Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method private annotateNow(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;ZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;ZZ)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p2

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    if-eqz p4, :cond_0

    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->annotationType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2, v8}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, v6, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->annotationType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2, v8}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v2

    :goto_1
    const-string v3, "Failed to create annotation"

    invoke-static {v2, v3}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v6, Lorg/openjdk/tools/javac/comp/Annotate;->allowRepeatedAnnos:Z

    if-nez v3, :cond_1

    iget-object v3, v6, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v4, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v11, v6, Lorg/openjdk/tools/javac/comp/Annotate;->sourceName:Ljava/lang/String;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "repeatable.annotations.not.supported.in.source"

    invoke-virtual {v3, v4, v5, v12, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v3

    iget-object v4, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v3, :cond_3

    iget-object v1, v7, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v3, :cond_4

    :cond_3
    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v6, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v3, v7, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v11, 0x40000000020000L

    or-long/2addr v3, v11

    iput-wide v3, v7, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/Annotate;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->forRemoval:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->member(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v1

    instance-of v2, v1, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v6, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    if-ne v2, v3, :cond_4

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Attribute$Constant;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, v7, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v3, 0x80000000000000L

    or-long/2addr v1, v3

    iput-wide v1, v7, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_4
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    move-object v12, v0

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    move/from16 v1, p5

    goto :goto_3

    :cond_7
    new-instance v14, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, v9

    move-object v4, v10

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    move/from16 v1, p5

    invoke-direct {p0, v0, v14, v7, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->makeContainerAnnotation(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v12}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/code/Symbol;->resetAnnotations()V

    invoke-virtual {v7, v0}, Lorg/openjdk/tools/javac/code/Symbol;->setDeclarationAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :goto_4
    return-void
.end method

.method private attributeAnnotationNameValuePair(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;ZLorg/openjdk/tools/javac/comp/Env;Z)Lorg/openjdk/tools/javac/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Z",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;Z)",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "annotation.value.must.be.name.value"

    const/4 v11, 0x0

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v2, p1, v10}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    return-object v11

    :cond_0
    move-object v12, v1

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    iget-object v2, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v2, p1, v10}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    return-object v11

    :cond_1
    iget-object v2, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v13, v2

    check-cast v13, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Annotate;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    if-eqz p5, :cond_2

    iget-object v3, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    :goto_0
    iget-object v6, v13, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    iput-object v2, v13, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v3, v13, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v9, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v3, v4, :cond_3

    if-nez p3, :cond_3

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, v13, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {v5, v9}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "no.annotation.member"

    invoke-virtual {v3, v4, v6, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v3, v4, v10}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v4

    iput-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v11, Lorg/openjdk/tools/javac/util/Pair;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-direct {v11, v2, v4}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v11
.end method

.method private attributeAnnotationType(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isAnnotationType()Z

    move-result v0

    const-string v1, "Trying to annotation type complete a non-annotation type"

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    new-instance v7, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Annotate;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/comp/TypeEnvs;)V

    invoke-virtual {v7, p1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->scanAnnotationType(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object v1

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->access$200(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->setRepeatable(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object p1

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;->access$300(Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeVisitor;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->setTarget(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method private attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Attribute;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "cant.resolve"

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->getAnnotationArrayValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const-string v1, "annotation.value.not.allowable.type"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v1, "new.not.allowed.in.annotation"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p2, v0, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Error;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    :cond_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const-string v3, "annotation.value.must.be.annotation"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    :cond_6
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v2, "annotation.not.valid.for.type"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Error;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    :cond_8
    new-instance v0, Lorg/openjdk/tools/javac/comp/Annotate$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Annotate$1;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->result:Z

    if-nez v0, :cond_9

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    sget-object p3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ExpressionNotAllowableAsAnnotationValue:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Error;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    :cond_9
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v3, :cond_b

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->getAnnotationClassValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1

    :cond_b
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/16 v5, 0x4000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->getAnnotationEnumValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Lorg/openjdk/tools/javac/code/Attribute$Error;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1, p2, p3, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0

    :cond_e
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->getAnnotationPrimitiveValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    return-object p1
.end method

.method private attributeAnnotationValues(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1, v0, p3}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p2}, Lorg/openjdk/tools/javac/comp/Check;->checkType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result p2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->isAnnotationType()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "not.annotation.type"

    invoke-virtual {p2, v0, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move p2, v1

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Annotate;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v2

    iput-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    move-object v4, p0

    move v7, p2

    move-object v8, p3

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationNameValuePair(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;ZLorg/openjdk/tools/javac/comp/Env;Z)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_3
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Annotate;->lambda$annotateTypeSecondStage$5(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Annotate;->lambda$queueScanTreeAndTypeAnnotate$4(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-void
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Annotate;->lambda$annotateDefaultValueLater$3(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    return-void
.end method

.method private doneFlushing()V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->flushCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->flushCount:I

    return-void
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->lambda$annotateLater$1(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private enterDefaultValue(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            ")V"
        }
    .end annotation

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object p1

    iput-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    return-void
.end method

.method private extractContainingType(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "invalid.repeatable.annotation"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v3, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Attribute$Class;

    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, v2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Class;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Attribute$Class;->getValue()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->lambda$annotateTypeParameterSecondStage$6(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method private filterSame(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Annotate;->lambda$annotateDefaultValueLater$2(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    return-void
.end method

.method private getAnnotationArrayValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Attribute;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object p2

    :cond_0
    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "new.not.allowed.in.annotation"

    invoke-virtual {v1, v0, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v2, v3, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    new-instance p2, Lorg/openjdk/tools/javac/code/Attribute$Array;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result p3

    new-array p3, p3, [Lorg/openjdk/tools/javac/code/Attribute;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lorg/openjdk/tools/javac/code/Attribute;

    invoke-direct {p2, p1, p3}, Lorg/openjdk/tools/javac/code/Attribute$Array;-><init>(Lorg/openjdk/tools/javac/code/Type;[Lorg/openjdk/tools/javac/code/Attribute;)V

    return-object p2
.end method

.method private getAnnotationClassValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Attribute;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v0, p2, p3, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symtab;->unknownSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p2, v2, v1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    return-object p3

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Error;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Class;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, p3, p2}, Lorg/openjdk/tools/javac/code/Attribute$Class;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1
.end method

.method private getAnnotationEnumValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Attribute;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v0, p2, p3, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->nonstaticSelect(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    new-instance p2, Lorg/openjdk/tools/javac/code/Attribute$Enum;

    invoke-direct {p2, p1, v0}, Lorg/openjdk/tools/javac/code/Attribute$Enum;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    return-object p2

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "enum.annotation.must.be.enum.constant"

    invoke-virtual {p1, p2, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Error;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1
.end method

.method private getAnnotationPrimitiveValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Attribute;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v0, p2, p3, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attribExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/code/Attribute$Error;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object p1

    :cond_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "attribute.value.must.be.constant"

    invoke-virtual {p3, p2, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lorg/openjdk/tools/javac/code/Attribute$Error;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->cfolder:Lorg/openjdk/tools/javac/comp/ConstFold;

    invoke-virtual {p2, p3, p1}, Lorg/openjdk/tools/javac/comp/ConstFold;->coerce(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/javac/code/Attribute$Constant;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/openjdk/tools/javac/code/Attribute$Constant;-><init>(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object p3
.end method

.method private getContainingType(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Z)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->getAnnotationTypeMetadata()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeMetadata;->getRepeatable()Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->repeatableType:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "duplicate.annotation.missing.container"

    invoke-virtual {p3, p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/tools/javac/comp/Annotate;->extractContainingType(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->filterSame(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Annotate;->annotateKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Annotate;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Annotate;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isFlushing()Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->flushCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$annotateDefaultValueLater$2(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    :try_start_0
    invoke-direct {p0, p3, p1, p4}, Lorg/openjdk/tools/javac/comp/Annotate;->enterDefaultValue(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method private synthetic lambda$annotateDefaultValueLater$3(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p2
.end method

.method private synthetic lambda$annotateLater$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->annotationsPendingCompletion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v1, p3}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->immediate()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    :goto_2
    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {p3, v2}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object p3

    :goto_3
    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->hasAnnotations()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, p4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    const-string v4, "already.annotated"

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v5

    filled-new-array {v5, p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_4
    const-string v2, "Symbol argument to actualEnterAnnotations is null"

    invoke-static {p1, v2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateNow(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :goto_5
    if-eqz p3, :cond_6

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :cond_6
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method private synthetic lambda$annotateLater$1(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p2
.end method

.method private synthetic lambda$annotateTypeParameterSecondStage$6(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->fromAnnotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void
.end method

.method private synthetic lambda$annotateTypeSecondStage$5(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->fromAnnotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    sget-object p1, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->ANNOTATIONS:Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->getMetadataOfKind(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    invoke-direct {p2, v0}, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;-><init>(Lorg/openjdk/tools/javac/util/List;)V

    invoke-interface {p1, p2}, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;->combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;

    return-void
.end method

.method private synthetic lambda$queueScanTreeAndTypeAnnotate$4(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;

    invoke-direct {v0, p0, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Annotate$TypeAnnotate;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method private makeContainerAnnotation(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Z)TT;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Annotate;->processRepeatedAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->annotated:Ljava/util/Map;

    iget-object p4, p1, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->pos:Ljava/util/Map;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "invalid.repeatable.annotation.repeated.and.container.present"

    invoke-virtual {p4, p2, v0, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method private processRepeatedAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Z)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v7

    const/4 v9, 0x1

    if-nez v7, :cond_0

    iget-object v7, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v10}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_9

    add-int/2addr v11, v9

    if-gt v11, v9, :cond_2

    iget-object v15, v10, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    move v15, v9

    :goto_3
    invoke-static {v15}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v15, v10, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v15, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v8, v15, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    if-nez v13, :cond_3

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v13, v8}, Lorg/openjdk/tools/javac/code/Types;->makeArrayType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type$ArrayType;

    move-result-object v13

    :cond_3
    if-le v11, v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    iget-object v7, v2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->pos:Ljava/util/Map;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-direct {v0, v15, v7, v9}, Lorg/openjdk/tools/javac/comp/Annotate;->getContainingType(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_8

    :cond_5
    if-eqz v12, :cond_7

    if-ne v7, v12, :cond_6

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v9, 0x1

    :goto_6
    invoke-static {v9}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v9, v2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->pos:Ljava/util/Map;

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-direct {v0, v7, v8, v9}, Lorg/openjdk/tools/javac/comp/Annotate;->validateContainer(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v14

    if-nez v14, :cond_8

    :goto_7
    move-object v12, v7

    goto :goto_8

    :cond_8
    invoke-virtual {v6, v15}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    goto :goto_7

    :goto_8
    iget-object v10, v10, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object v15, v8

    const/4 v9, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v7

    const-string v8, "duplicate.annotation.invalid.repeated"

    if-nez v7, :cond_a

    if-nez v12, :cond_a

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->pos:Ljava/util/Map;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v8, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1

    :cond_a
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, v2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->pos:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Annotate;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v7

    new-instance v9, Lorg/openjdk/tools/javac/util/Pair;

    new-instance v10, Lorg/openjdk/tools/javac/code/Attribute$Array;

    invoke-direct {v10, v13, v6}, Lorg/openjdk/tools/javac/code/Attribute$Array;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V

    invoke-direct {v9, v14, v10}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v6, v2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->isTypeCompound:Z

    if-eqz v6, :cond_e

    new-instance v2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-static {v9}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-direct {v2, v12, v6, v1}, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    invoke-virtual {v7, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeAnnotation(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v1

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v6, v1}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationDeferErrors(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    invoke-static {v15}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->DuplicateAnnotationInvalidRepeated(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_b
    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v6, v1, v4}, Lorg/openjdk/tools/javac/comp/Check;->isTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Z)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    if-eqz v4, :cond_c

    invoke-static {v12, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->InvalidRepeatableAnnotationNotApplicable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    goto :goto_9

    :cond_c
    invoke-static {v12}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->InvalidRepeatableAnnotationNotApplicableInContext(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    :goto_9
    invoke-virtual {v1, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_d
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->setSynthesized(Z)V

    return-object v2

    :cond_e
    new-instance v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {v9}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {v1, v12, v4}, Lorg/openjdk/tools/javac/code/Attribute$Compound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v7, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Annotation(Lorg/openjdk/tools/javac/code/Attribute;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v1

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v4, v1, v3}, Lorg/openjdk/tools/javac/comp/Check;->annotationApplicable(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-static {v12, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->InvalidRepeatableAnnotationNotApplicable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_f
    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Annotate;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationDeferErrors(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v8, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Annotate$AnnotationContext;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v1, v12, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->setSynthesized(Z)V

    return-object v1

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private startFlushing()V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->flushCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->flushCount:I

    return-void
.end method

.method private validateContainer(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 10

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->value:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol;

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_0

    iget-object v8, v6, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v8, v9, :cond_0

    move-object v5, v6

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invalid.repeatable.annotation.multiple.values"

    invoke-virtual {p2, p3, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    if-nez v4, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v0, "invalid.repeatable.annotation.no.value"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_3
    iget-object v0, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "invalid.repeatable.annotation.invalid.value"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p3, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v7

    :cond_4
    iget-object v0, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p2}, Lorg/openjdk/tools/javac/code/Types;->makeArrayType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type$ArrayType;

    move-result-object p2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Types;->isArray(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Annotate;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p2, v0}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v7, v2

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v3, "invalid.repeatable.annotation.value.return"

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p3, v3, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v5

    :goto_3
    return-object v1
.end method


# virtual methods
.method public afterTypes(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->afterTypesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public annotateDefaultValueLater(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            ")V"
        }
    .end annotation

    new-instance v6, Lorg/openjdk/tools/javac/comp/h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/h;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Annotate;->normal(Ljava/lang/Runnable;)V

    new-instance p3, Lorg/openjdk/tools/javac/comp/i;

    invoke-direct {p3, p0, p2, p1}, Lorg/openjdk/tools/javac/comp/i;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)V

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->validate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public annotateLater(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->resetAnnotations()V

    new-instance v0, Lorg/openjdk/tools/javac/comp/l;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/l;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Annotate;->normal(Ljava/lang/Runnable;)V

    new-instance p4, Lorg/openjdk/tools/javac/comp/m;

    invoke-direct {p4, p0, p2, p1, p3}, Lorg/openjdk/tools/javac/comp/m;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p0, p4}, Lorg/openjdk/tools/javac/comp/Annotate;->validate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public annotateTypeParameterSecondStage(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lorg/openjdk/tools/javac/comp/k;

    invoke-direct {p1, p0, p2}, Lorg/openjdk/tools/javac/comp/k;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->typeAnnotation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public annotateTypeSecondStage(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")V"
        }
    .end annotation

    new-instance p1, Lorg/openjdk/tools/javac/comp/n;

    invoke-direct {p1, p0, p2, p3}, Lorg/openjdk/tools/javac/comp/n;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Annotate;->typeAnnotation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public annotationTypeSourceCompleter()Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->theSourceCompleter:Lorg/openjdk/tools/javac/comp/Annotate$AnnotationTypeCompleter;

    return-object v0
.end method

.method public annotationsBlocked()Z
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public attributeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$Compound;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValues(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p3, v0, p2}, Lorg/openjdk/tools/javac/code/Attribute$Compound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)V

    iput-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object p3
.end method

.method public attributeTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValues(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->unknown:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-direct {p3, v0, p2, v1}, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)V

    iput-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    return-object p3
.end method

.method public blockAnnotations()V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    return-void
.end method

.method public enterDone()V
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    return-void
.end method

.method public enterTypeAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Z)V"
        }
    .end annotation

    const-string v0, "Symbol argument to actualEnterTypeAnnotations is nul/"

    invoke-static {p3, v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    if-eqz p4, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v1, p4}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v6, p5

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateNow(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1, p4}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Annotate;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Annotate;->annotationsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate;->isFlushing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate;->startFlushing()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->q:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->q:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->typesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->typesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->afterTypesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->afterTypesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->validateQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->validateQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate;->doneFlushing()V

    return-void

    :goto_4
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Annotate;->doneFlushing()V

    throw v0
.end method

.method public fromAnnotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public newRound()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    return-void
.end method

.method public normal(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->q:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/openjdk/tools/javac/comp/j;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/j;-><init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Annotate;->normal(Ljava/lang/Runnable;)V

    return-void
.end method

.method public typeAnnotation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->typesQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public unblockAnnotations()V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    :cond_0
    return-void
.end method

.method public unblockAnnotationsNoFlush()V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->blockCount:I

    return-void
.end method

.method public unfinishedDefaultValue()Lorg/openjdk/tools/javac/code/Attribute;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->theUnfinishedDefaultValue:Lorg/openjdk/tools/javac/code/Attribute;

    return-object v0
.end method

.method public validate(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Annotate;->validateQ:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method
