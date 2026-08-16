.class public Lorg/openjdk/tools/javac/jvm/Gen;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/Gen$GenContext;,
        Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;,
        Lorg/openjdk/tools/javac/jvm/Gen$CodeSizeOverflow;,
        Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;
    }
.end annotation


# static fields
.field protected static final genKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/jvm/Gen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessDollar:Lorg/openjdk/tools/javac/util/Name;

.field private final allowBetterNullChecks:Z

.field private final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field private attrEnv:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private classReferenceVisitor:Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;

.field private code:Lorg/openjdk/tools/javac/jvm/Code;

.field private final concat:Lorg/openjdk/tools/javac/jvm/StringConcat;

.field private final debugCode:Z

.field endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

.field env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;"
        }
    .end annotation
.end field

.field private final genCrt:Z

.field private items:Lorg/openjdk/tools/javac/jvm/Items;

.field private letExprDepth:I

.field private final lineDebugInfo:Z

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final lower:Lorg/openjdk/tools/javac/comp/Lower;

.field private final make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private final methodType:Lorg/openjdk/tools/javac/code/Type;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private nerrs:I

.field private final pool:Lorg/openjdk/tools/javac/jvm/Pool;

.field pt:Lorg/openjdk/tools/javac/code/Type;

.field result:Lorg/openjdk/tools/javac/jvm/Items$Item;

.field private final rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field private final stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final target:Lorg/openjdk/tools/javac/jvm/Target;

.field private toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

.field private final types:Lorg/openjdk/tools/javac/code/Types;

.field private final varDebugInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Gen;->genKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 7

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    new-instance v1, Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;-><init>(Lorg/openjdk/tools/javac/jvm/Gen;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->classReferenceVisitor:Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;

    sget-object v1, Lorg/openjdk/tools/javac/jvm/Gen;->genKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v1, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->target:Lorg/openjdk/tools/javac/jvm/Target;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v4

    iput-object v4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/StringConcat;

    move-result-object v5

    iput-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->concat:Lorg/openjdk/tools/javac/jvm/StringConcat;

    new-instance v5, Lorg/openjdk/tools/javac/code/Type$MethodType;

    const/4 v6, 0x0

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v6, v6, v6, v2}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->methodType:Lorg/openjdk/tools/javac/code/Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "access"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->accessDollar:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Lower;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->G_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "lines"

    invoke-virtual {v1, v2, v5}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->lineDebugInfo:Z

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->G:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "vars"

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->varDebugInfo:Z

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->XJCOV:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    const-string v0, "debug.code"

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->debugCode:Z

    const-string v0, "allowBetterNullChecks"

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Target;->hasObjects()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/util/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->allowBetterNullChecks:Z

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-direct {v0, v4}, Lorg/openjdk/tools/javac/jvm/Pool;-><init>(Lorg/openjdk/tools/javac/code/Types;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/jvm/Gen;)Lorg/openjdk/tools/javac/jvm/Pool;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/jvm/Gen;)Lorg/openjdk/tools/javac/jvm/Code;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    return-object p0
.end method

.method private checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Gen$3;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->dimensions(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p2

    const/16 v0, 0xff

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "limit.dimensions"

    invoke-virtual {p2, p1, v2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private checkStringConstant(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const v0, 0xffff

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "limit.string"

    invoke-virtual {p2, p1, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    :cond_1
    :goto_0
    return-void
.end method

.method private genLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->entryPoint()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0x8

    const/16 v3, 0xa7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p5, :cond_3

    if-eqz p3, :cond_1

    iget-object p5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v6, p3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p5, v6}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object p5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p5, p5, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p5, p5, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez p5, :cond_0

    move p5, v5

    goto :goto_0

    :cond_0
    move p5, v4

    :goto_0
    invoke-static {p5}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    invoke-virtual {p0, p3, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p3, v3}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p3

    :goto_1
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p5

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p3, p3, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, p3}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p3, p3, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p3, p3, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez p3, :cond_2

    move v4, v5

    :cond_2
    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-virtual {p0, p2, p1, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p3, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object p3, p3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    invoke-virtual {p0, p4, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;I)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p2, p5}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p2, p1, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p5, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p5, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object p5, p5, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {p2, p5}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    invoke-virtual {p0, p4, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/Code;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p3, :cond_5

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget p4, p3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p2, p4}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p2, p2, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p2, p2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez p2, :cond_4

    move p2, v5

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p2

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p2

    :goto_3
    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpTrue()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p4

    invoke-virtual {p3, p4, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;I)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p3, p3, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p3, p3, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez p3, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p2, p2, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    :cond_7
    :goto_4
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->exit:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget p2, p2, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Bits;->excludeFrom(I)V

    :cond_8
    return-void
.end method

.method private genNullCheck(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 7

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->allowBetterNullChecks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectsType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/Names;->requireNonNull:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/jvm/Gen;->callMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Names;->getClass:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/jvm/Gen;->callMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Z)V

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    return-void
.end method

.method private generateReferencesToPrunedTree(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/jvm/Pool;)V
    .locals 1

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Lower;->prunedTree:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->classReferenceVisitor:Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAndRemoveNonFieldTAs(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getPosition()Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    sget-object v5, Lorg/openjdk/tools/javac/code/TargetType;->UNKNOWN:Lorg/openjdk/tools/javac/code/TargetType;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getPosition()Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->type:Lorg/openjdk/tools/javac/code/TargetType;

    sget-object v5, Lorg/openjdk/tools/javac/code/TargetType;->FIELD:Lorg/openjdk/tools/javac/code/TargetType;

    if-ne v4, v5, :cond_1

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->setTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private initCode(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;Z)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;Z)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v13, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    new-instance v14, Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->lineDebugInfo:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    iget-boolean v6, v0, Lorg/openjdk/tools/javac/jvm/Gen;->varDebugInfo:Z

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/Gen;->stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    iget-boolean v8, v0, Lorg/openjdk/tools/javac/jvm/Gen;->debugCode:Z

    iget-boolean v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v2, :cond_1

    new-instance v2, Lorg/openjdk/tools/javac/jvm/CRTable;

    move-object/from16 v3, p2

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    invoke-direct {v2, v1, v3}, Lorg/openjdk/tools/javac/jvm/CRTable;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/tree/EndPosTable;)V

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, v3

    :goto_1
    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v12, v0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    move-object v2, v14

    move-object v3, v13

    move/from16 v4, p3

    invoke-direct/range {v2 .. v12}, Lorg/openjdk/tools/javac/jvm/Code;-><init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;ZLorg/openjdk/tools/javac/util/Position$LineMap;ZLorg/openjdk/tools/javac/jvm/Code$StackMapFormat;ZLorg/openjdk/tools/javac/jvm/CRTable;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/jvm/Pool;)V

    iput-object v14, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iput-object v14, v13, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->code:Lorg/openjdk/tools/javac/jvm/Code;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v2, v3, v14, v4, v5}, Lorg/openjdk/tools/javac/jvm/Items;-><init>(Lorg/openjdk/tools/javac/jvm/Pool;Lorg/openjdk/tools/javac/jvm/Code;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Types;)V

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for body "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, v13, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/UninitializedType;->uninitializedThis(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/UninitializedType;

    move-result-object v2

    :cond_3
    move-object v7, v2

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    new-instance v9, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v3, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    iget-object v8, v13, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const-wide/16 v4, 0x10

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v2, v9}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->setDefined(I)V

    :cond_4
    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->setDefined(I)V

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_5
    iget-boolean v1, v0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Code;->entryPoint()I

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iput-boolean v2, v3, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    return v1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Gen;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Gen;->genKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/Gen;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isAccessSuper(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Z
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->isOddAccessName(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOddAccessName(Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->accessDollar:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Name;->startsWith(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Name;->getByteAt(I)B

    move-result p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static one(I)I
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/Gen;->zero(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static qsort2([I[III)V
    .locals 5

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    move v1, p2

    move v2, p3

    :cond_0
    :goto_0
    aget v3, p0, v1

    if-ge v3, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget v3, p0, v2

    if-ge v0, v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-gt v1, v2, :cond_3

    aget v4, p0, v1

    aput v3, p0, v1

    aput v4, p0, v2

    aget v3, p1, v1

    aget v4, p1, v2

    aput v4, p1, v1

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-le v1, v2, :cond_0

    if-ge p2, v2, :cond_4

    invoke-static {p0, p1, p2, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->qsort2([I[III)V

    :cond_4
    if-ge v1, p3, :cond_5

    invoke-static {p0, p1, v1, p3}, Lorg/openjdk/tools/javac/jvm/Gen;->qsort2([I[III)V

    :cond_5
    return-void
.end method

.method private setTypeAnnotationPositions(I)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->STATIC_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->hasUnknownPosition()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->tryFixPosition()Z

    :cond_3
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v4, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->matchesPos(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v4, v4, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->updatePosOffset(I)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->hasUnknownPosition()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->tryFixPosition()Z

    :cond_7
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->matchesPos(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v3, v3, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->updatePosOffset(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/model/FilteredMemberList;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/model/FilteredMemberList;-><init>(Lorg/openjdk/tools/javac/code/Scope;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/model/FilteredMemberList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/javax/lang/model/element/ElementKind;->isField()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->hasUnknownPosition()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->tryFixPosition()Z

    :cond_c
    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->matchesPos(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v3, v3, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->updatePosOffset(I)V

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static zero(I)I
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_4

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "zero"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const/16 p0, 0xe

    return p0

    :cond_2
    const/16 p0, 0xb

    return p0

    :cond_3
    const/16 p0, 0x9

    return p0

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public binaryQualifier(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 9

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symtab;->lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eq p1, v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v8, v0, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v4, 0x1

    move-object v3, v1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Symbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1008

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_4

    return-object p1

    :cond_4
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    :cond_5
    :goto_1
    return-object p1
.end method

.method public callMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveInternalMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    if-eqz p5, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeStaticItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object p4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne p3, p4, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/jvm/Items;->makeMemberItem(Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_1
    return-void
.end method

.method public catchTypesWithAnnotations(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isMultiCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->catchTypesWithAnnotationsFromMulticatch(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public catchTypesWithAnnotationsFromMulticatch(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-direct {v0, p2, v1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    new-instance v2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/comp/Annotate;->fromAnnotations(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :goto_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public completeBinop(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 3

    iget-object p1, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget v0, p3, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v1, 0x9f

    const/16 v2, 0xa6

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa4

    if-gt v0, v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x6

    goto :goto_0

    :cond_0
    const/16 v1, 0xa5

    if-lt v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isNull(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x21

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p3, Lorg/openjdk/tools/javac/code/Type;

    const/16 v1, 0x10e

    if-lt v0, v1, :cond_2

    const/16 v1, 0x113

    if-gt v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x96

    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    const/16 p2, 0x200

    if-lt v0, p2, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    shr-int/lit8 p3, v0, 0x9

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    and-int/lit16 v0, v0, 0xff

    :cond_3
    :goto_0
    const/16 p2, 0x99

    if-lt v0, p2, :cond_4

    if-le v0, v2, :cond_6

    :cond_4
    const/16 p2, 0xc6

    if-eq v0, p2, :cond_6

    const/16 p2, 0xc7

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    return-object p1
.end method

.method public emitMinusOne(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/jvm/Items;->makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :goto_0
    return-void
.end method

.method public endFinalizerGap(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_0
    return-void
.end method

.method public endFinalizerGaps(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->endFinalizerGap(Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public genArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void
.end method

.method public genCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;Lorg/openjdk/tools/javac/comp/Env;IILorg/openjdk/tools/javac/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;II",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move/from16 v0, p3

    if-eq v0, v8, :cond_5

    invoke-virtual/range {p0 .. p1}, Lorg/openjdk/tools/javac/jvm/Gen;->catchTypesWithAnnotations(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    move-object/from16 v11, p5

    move v10, v0

    :goto_0
    invoke-virtual {v11}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, v13, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result v14

    iget-object v0, v11, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v4

    move-object v0, p0

    move v2, v10

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->registerCatch(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    iget-object v0, v13, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v1, v14, v10}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->setCatchInfo(II)V

    goto :goto_1

    :cond_1
    iget-object v0, v11, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    if-ge v10, v8, :cond_4

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, v11, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v4

    move-object v0, p0

    move v2, v10

    move/from16 v3, p4

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->registerCatch(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    iget-object v0, v11, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v1, v12, v10}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->setCatchInfo(II)V

    goto :goto_2

    :cond_4
    iget-object v0, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v2, v7, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v1, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->markStatBegin()V

    iget-object v1, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v2, v1, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)I

    iget-object v1, v6, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeLocalItem(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->store()V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->firstStatPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v0, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    const/4 v1, 0x2

    move-object/from16 v3, p2

    invoke-virtual {p0, v0, v3, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    :cond_5
    return-void
.end method

.method public genClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Pool;->reset()V

    iget-object v3, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->normalizeDefs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->generateReferencesToPrunedTree(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/jvm/Pool;)V

    new-instance v2, Lorg/openjdk/tools/javac/comp/Env;

    new-instance v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-direct {v2, p2, v3}, Lorg/openjdk/tools/javac/comp/Env;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object p1, v2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object p2, v2, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genDef(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Pool;->numEntries()I

    move-result p1

    const v2, 0xffff

    const/4 v3, 0x1

    if-le p1, v2, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    const-string v4, "limit.pool"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    :cond_1
    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    if-eqz p1, :cond_3

    iget-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iput-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->code:Lorg/openjdk/tools/javac/jvm/Code;

    :cond_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    return v3

    :goto_3
    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    throw p1
.end method

.method public genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v2

    invoke-virtual {v3, p1, p2, v0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public genCond(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 6

    .line 5
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    .line 6
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CONDEXPR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    .line 8
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->isTrue()Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    .line 11
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 12
    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_0
    return-object p1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    .line 15
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 16
    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_2
    return-object p1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    .line 18
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    .line 19
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 20
    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v3, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v3

    .line 22
    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v4, p1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    .line 23
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v4, 0xa7

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p1

    .line 24
    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    .line 25
    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget v4, v1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    iget-object v5, v1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    .line 27
    invoke-static {p1, v5}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p1

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    .line 28
    invoke-static {v3, v1}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    .line 29
    invoke-virtual {v2, v4, p1, v1}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    if-eqz p2, :cond_5

    .line 30
    iget-object p2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_5
    return-object p1

    .line 31
    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->mkCond()Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    if-eqz p2, :cond_7

    .line 32
    iput-object p1, v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_7
    return-object v0
.end method

.method public genDef(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    throw p1
.end method

.method public genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->classReferenceVisitor:Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->checkStringConstant(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/jvm/Items;->makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->coerce(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 v1, 0x1

    iput v1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    throw p1
.end method

.method public genFinalizer(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;->gen()V

    :cond_0
    return-void
.end method

.method public genMethod(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInner()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v5, 0x8

    and-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, p2, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0xff

    if-le v1, v0, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string p3, "limit.parameters"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    goto/16 :goto_5

    :cond_3
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/jvm/Gen;->initCode(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;Z)I

    move-result v0

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/jvm/Gen$CodeSizeOverflow; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/jvm/Gen;->initCode(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;Z)I

    move-result v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v5, v1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v5, v5, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v5, :cond_b

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v5}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->entryPoint()I

    move-result v1

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    const/16 v6, 0xa7

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpTrue()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;I)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v5, 0xb1

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :cond_6
    :goto_4
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v5, v1, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v1

    invoke-virtual {v5, v6, v2, v0, v1}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    :cond_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->checkLimits(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Log;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    return-void

    :cond_8
    if-nez p3, :cond_9

    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean p3, p3, Lorg/openjdk/tools/javac/jvm/Code;->fatcode:Z

    if-eqz p3, :cond_9

    invoke-virtual {p0, p1, p2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genMethod(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;Z)V

    :cond_9
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    sget-object p2, Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;->JSR202:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object p2, p1, Lorg/openjdk/tools/javac/jvm/Code;->frameBeforeLast:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    :cond_a
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code;->compressCatchTable()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code;->fillExceptionParameterPositions()V

    goto :goto_5

    :cond_b
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p3

    const-string v0, "stack.sim.error"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    :goto_5
    return-void
.end method

.method public genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genDef(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-boolean p2, p2, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->isSwitch:Z

    if-eqz p2, :cond_1

    sget-object p2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)V

    .line 5
    sget-object p2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-eqz p2, :cond_1

    or-int/lit8 p3, p3, 0x2

    .line 6
    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, p2, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result p2

    invoke-virtual {v1, p1, p3, v0, p2}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    return-void
.end method

.method public genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    .line 10
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    or-int/2addr p3, v1

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    .line 7
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, p2, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result p2

    invoke-virtual {v1, p1, p3, v0, p2}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method public genTry(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v8, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v9

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->dup()Lorg/openjdk/tools/javac/jvm/Code$State;

    move-result-object v10

    const/4 v0, 0x2

    move-object/from16 v11, p1

    invoke-virtual {v6, v11, v7, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v12

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;->hasFinalizer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v14

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->genFinalizer(Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v15, 0xa7

    invoke-virtual {v0, v15}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->endFinalizerGap(Lorg/openjdk/tools/javac/comp/Env;)V

    if-eq v9, v12, :cond_4

    move-object/from16 v5, p2

    move-object v4, v0

    :goto_2
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v10, v1}, Lorg/openjdk/tools/javac/jvm/Code;->entryPoint(Lorg/openjdk/tools/javac/jvm/Code$State;Lorg/openjdk/tools/javac/code/Type;)I

    iget-object v0, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move v3, v9

    move-object/from16 v16, v4

    move v4, v12

    move-object v15, v5

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->genCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;Lorg/openjdk/tools/javac/comp/Env;IILorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->genFinalizer(Lorg/openjdk/tools/javac/comp/Env;)V

    if-nez v13, :cond_2

    iget-object v0, v15, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    move-object/from16 v4, v16

    const/16 v1, 0xa7

    goto :goto_4

    :cond_2
    :goto_3
    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    move-object v4, v0

    :goto_4
    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->endFinalizerGap(Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v5, v15, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move v15, v1

    goto :goto_2

    :cond_3
    move-object v2, v4

    move-object v12, v2

    goto :goto_5

    :cond_4
    move-object v12, v0

    :goto_5
    if-eqz v13, :cond_6

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->newRegSegment()V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v6, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v10, v1}, Lorg/openjdk/tools/javac/jvm/Code;->entryPoint(Lorg/openjdk/tools/javac/jvm/Code$State;Lorg/openjdk/tools/javac/code/Type;)I

    move-result v10

    move v2, v9

    :goto_6
    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->registerCatch(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    :cond_5
    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->finalizerPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->markStatBegin()V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->makeTemp(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->store()V

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->genFinalizer(Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->registerCatch(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    iget-object v0, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz v1, :cond_6

    iget-object v1, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->finalizerPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->markStatBegin()V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->makeTemp(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->store()V

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;->genLast()V

    iget-object v1, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0xa9

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop1w(II)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    :cond_6
    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0, v12}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v0, v6, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0, v8}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    return-void
.end method

.method public getAttrEnv()Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    return-object v0
.end method

.method public getCode()Lorg/openjdk/tools/javac/jvm/Code;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    return-object v0
.end method

.method public getItems()Lorg/openjdk/tools/javac/jvm/Items;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    return-object v0
.end method

.method public hasFinally(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)Z"
        }
    .end annotation

    :goto_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eq v0, p1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TRY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;->hasFinalizer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isInvokeDynamic(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadIntConst(I)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public makeNewArray(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;I)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->dimensions(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "limit.dimensions"

    invoke-virtual {v1, p1, v4, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    :cond_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->arraycode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_1

    if-ne p3, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    invoke-virtual {v0, p3, p1, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emitMultianewarray(IILorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v1, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emitNewarray(ILorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emitAnewarray(ILorg/openjdk/tools/javac/code/Type;)V

    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    return-object p1
.end method

.method public makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isAnnotated()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :cond_1
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public makeTemp(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v1, 0x1000

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)I

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/jvm/Items;->makeLocalItem(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object p1

    return-object p1
.end method

.method public normalizeDefs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move-object/from16 v6, p1

    :goto_0
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    const-wide/16 v8, 0x8

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_7

    iget-object v7, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v12, Lorg/openjdk/tools/javac/jvm/Gen$3;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    goto/16 :goto_1

    :cond_0
    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v12, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v13

    iget-object v14, v12, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, v13, v14}, Lorg/openjdk/tools/javac/jvm/Gen;->checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v13, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v13

    and-long/2addr v8, v13

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/Gen;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v8

    iget-object v9, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v8, v12, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assignment(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/Gen;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    invoke-interface {v9, v7, v8}, Lorg/openjdk/tools/javac/tree/EndPosTable;->replaceTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)I

    invoke-direct {v0, v12}, Lorg/openjdk/tools/javac/jvm/Gen;->getAndRemoveNonFieldTAs(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/Gen;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v9, v7, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v8

    iget-object v9, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v8, v12, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assignment(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/Gen;->endPosTable:Lorg/openjdk/tools/javac/tree/EndPosTable;

    invoke-interface {v9, v7, v8}, Lorg/openjdk/tools/javac/tree/EndPosTable;->replaceTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)I

    invoke-direct {v0, v12}, Lorg/openjdk/tools/javac/jvm/Gen;->getAndRemoveNonFieldTAs(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v8, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lorg/openjdk/tools/javac/jvm/Gen;->checkStringConstant(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/Gen;->classReferenceVisitor:Lorg/openjdk/tools/javac/jvm/Gen$ClassReferenceVisitor;

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_4
    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-wide v12, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    and-long/2addr v8, v12

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    invoke-virtual {v3, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_5
    const-wide/16 v8, 0x1000

    and-long/2addr v8, v12

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    invoke-virtual {v1, v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_6
    :goto_1
    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->getInitTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v0, v7, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->normalizeMethod(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v6

    const-wide/16 v12, 0x800

    and-long/2addr v6, v12

    or-long v13, v6, v8

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v2, Lorg/openjdk/tools/javac/util/Names;->clinit:Lorg/openjdk/tools/javac/util/Name;

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v6, v7, v8, v9}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    move-object v12, v1

    move-object/from16 v16, v2

    move-object/from16 v17, p2

    invoke-direct/range {v12 .. v17}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v6, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v10, v11, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v2

    iput v2, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->endpos:I

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->getClassInitTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol;->getClassInitTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :cond_a
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    return-object v1
.end method

.method public normalizeMethod(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isInitialConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isSyntheticInit(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isSyntheticInit(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_2
    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->endpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v0

    iput v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->endpos:I

    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Symbol;->appendUniqueTypeAttributes(Lorg/openjdk/tools/javac/util/List;)V

    :cond_4
    return-void
.end method

.method public registerCatch(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;IIII)V
    .locals 3

    int-to-char v0, p2

    int-to-char v1, p3

    int-to-char v2, p4

    if-ne v0, p2, :cond_0

    if-ne v1, p3, :cond_0

    if-ne v2, p4, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    int-to-char p2, p5

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/openjdk/tools/javac/jvm/Code;->addCatch(CCCC)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "limit.code.too.large.for.try.stmt"

    invoke-virtual {p2, p1, p4, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->nerrs:I

    :goto_0
    return-void
.end method

.method public unwind(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/jvm/Gen$GenContext;",
            ">;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genFinalizer(Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-ne v0, p1, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 4

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->setTypeAnnotationPositions(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->methodType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isDynamic()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->forceStackTop(Lorg/openjdk/tools/javac/code/Type;)V

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeAssignItem(Lorg/openjdk/tools/javac/jvm/Items$Item;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget v1, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->concat:Lorg/openjdk/tools/javac/jvm/StringConcat;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;->makeConcat(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    instance-of v2, v1, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/TypeTag;->isSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/TypeTag;->isSubRangeOf(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_2

    neg-int v0, v0

    :cond_2
    move-object p1, v1

    check-cast p1, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->incr(I)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void

    :cond_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->coerce(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v3, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->completeBinop(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->coerce(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeAssignItem(Lorg/openjdk/tools/javac/jvm/Items$Item;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget v1, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->concat:Lorg/openjdk/tools/javac/jvm/StringConcat;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;->makeConcat(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->AND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    iget-object v3, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->OR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->isTrue()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpTrue()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->opcode:I

    iget-object v3, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-static {v1, v3}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->falseJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v0, v2, v1, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->completeBinop(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_0
    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->endpos:I

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 v0, -0x1

    iput v0, p1, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    :cond_0
    return-void
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 3

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->unwind(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->addExit(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->endFinalizerGaps(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v5, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v5}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/jvm/Code$State;->forceStackTop(Lorg/openjdk/tools/javac/code/Type;)V

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v5, v2, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v2

    invoke-virtual {v5, v6, v3, v0, v2}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0xa7

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v4

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->statBegin(I)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code$State;->forceStackTop(Lorg/openjdk/tools/javac/code/Type;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v1

    invoke-virtual {v2, p1, v3, v4, v1}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 3

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;->target:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->unwind(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->addCont(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->endFinalizerGaps(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 6

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->genLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)V

    return-void
.end method

.method public visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/jvm/Gen$3;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->setTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->setTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->drop()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/jvm/Gen;->genLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 8

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    const/4 v3, 0x1

    if-eq p1, v2, :cond_6

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeLocalItem(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->isInvokeDynamic(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeDynamicItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v4, 0x8

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->isAccessSuper(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->binaryQualifier(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeStaticItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeThisItem()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->binaryQualifier(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v6, 0x2

    and-long/2addr v1, v6

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, p1, v3}, Lorg/openjdk/tools/javac/jvm/Items;->makeMemberItem(Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_3

    :cond_6
    :goto_1
    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeThisItem()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeSuperItem()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    :goto_2
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v0, v3}, Lorg/openjdk/tools/javac/jvm/Items;->makeMemberItem(Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    :cond_8
    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_3
    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {p0, v0, v4}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->jumpFalse()Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v5, v5, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v5, v5, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-static {v5}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->isFalse()Z

    move-result v5

    const/16 v6, 0x11

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->trueJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {v5, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v0, v5, v6}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v5, 0xa7

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/jvm/Code;->branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-eqz p1, :cond_3

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v4, v6}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez p1, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeIndexedItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genStat(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;I)V

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->exit:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->excludeFrom(I)V

    :cond_0
    return-void
.end method

.method public visitLetExpr(Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;)V
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->letExprDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->letExprDepth:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->letExprDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->letExprDepth:I

    return-void
.end method

.method public visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_0
    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genMethod(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;Lorg/openjdk/tools/javac/comp/Env;Z)V

    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 5

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->setTypeAnnotationPositions(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->loadIntConst(I)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->makeNewArray(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;I)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->loadIntConst(I)V

    add-int/2addr v2, v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v4, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeIndexedItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Items$Item;->store()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->makeNewArray(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;I)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_2
    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->setTypeAnnotationPositions(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result v2

    const/16 v3, 0xbb

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v2, 0x59

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genArgs(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/jvm/Items;->makeMemberItem(Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->invoke()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iget v2, v0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {p0, v3, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->hasFinally(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->makeTemp(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->store()V

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {p0, v3, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->unwind(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iput v2, v3, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v2

    add-int/lit16 v2, v2, 0xac

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->unwind(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iput v2, p1, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    const/16 v2, 0xb1

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :goto_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->endFinalizerGaps(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 13

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitLdc(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v5, :cond_2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Env;->enclMethod:Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-direct {p0, v5}, Lorg/openjdk/tools/javac/jvm/Gen;->isAccessSuper(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)Z

    move-result v5

    if-eqz v4, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items;->makeSuperItem()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v6, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v6

    :goto_1
    iget-object v7, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-wide/16 v9, 0x8

    const-wide/16 v11, 0x0

    if-ne v7, v8, :cond_7

    move-object v7, v0

    check-cast v7, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    and-long/2addr v2, v9

    cmp-long v2, v2, v11

    if-eqz v2, :cond_6

    if-nez v4, :cond_5

    if-eqz v1, :cond_4

    iget-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p1, v1, :cond_5

    :cond_4
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v6

    :cond_5
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->drop()V

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->genNullCheck(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    :goto_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/jvm/Items;->makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->isInvokeDynamic(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeDynamicItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void

    :cond_8
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->binaryQualifier(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    and-long/2addr v7, v9

    cmp-long v0, v7, v11

    if-eqz v0, :cond_b

    if-nez v4, :cond_a

    if-eqz v1, :cond_9

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_a

    :cond_9
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v6

    :cond_a
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->drop()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Items;->makeStaticItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_3

    :cond_b
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v0, 0xbe

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    cmp-long v1, v6, v11

    if-nez v1, :cond_d

    if-nez v4, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    move v2, v3

    :cond_e
    invoke-virtual {v0, p1, v2}, Lorg/openjdk/tools/javac/jvm/Items;->makeMemberItem(Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_3
    return-void
.end method

.method public visitSkip(Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;)V
    .locals 0

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-boolean v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v6, v6, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v6, v6, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v6, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v0, v6, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v6

    iget-object v7, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Items$Item;->drop()V

    iget-boolean v4, v0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v4, v4, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v5, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v5

    invoke-virtual {v4, v1, v9, v3, v5}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    :cond_2
    move v13, v2

    goto/16 :goto_f

    :cond_3
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-boolean v6, v0, Lorg/openjdk/tools/javac/jvm/Gen;->genCrt:Z

    if-eqz v6, :cond_4

    iget-object v6, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v6, v6, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iget-object v8, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v8}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v10

    invoke-virtual {v6, v8, v9, v3, v10}, Lorg/openjdk/tools/javac/jvm/CRTable;->put(Ljava/lang/Object;III)V

    :cond_4
    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v6, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v6}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v3, v1, v6}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iput-boolean v4, v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->isSwitch:Z

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v3

    new-array v6, v3, [I

    const/4 v8, -0x1

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    move-object v13, v7

    move v14, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v3, :cond_9

    iget-object v15, v13, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v5, v15

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v5, :cond_7

    check-cast v15, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v5, v15, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v6, v11

    if-ge v5, v9, :cond_5

    move v9, v5

    :cond_5
    if-ge v10, v5, :cond_6

    move v10, v5

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    if-ne v14, v8, :cond_8

    move v5, v4

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    move v14, v11

    :goto_4
    iget-object v13, v13, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_9
    int-to-long v4, v10

    move-object/from16 p1, v1

    move v13, v2

    int-to-long v1, v9

    sub-long v17, v4, v1

    move/from16 v19, v9

    int-to-long v8, v12

    const-wide/16 v20, 0x2

    mul-long v20, v20, v8

    const-wide/16 v22, 0x3

    add-long v20, v20, v22

    if-lez v12, :cond_a

    const-wide/16 v24, 0xe

    add-long v17, v17, v24

    mul-long v8, v8, v22

    add-long v20, v20, v8

    cmp-long v8, v17, v20

    if-gtz v8, :cond_a

    const/16 v8, 0xaa

    goto :goto_5

    :cond_a
    const/16 v8, 0xab

    :goto_5
    iget-object v9, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v9

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v15, v8}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 v11, 0x4

    invoke-virtual {v15, v11}, Lorg/openjdk/tools/javac/jvm/Code;->align(I)V

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v15

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    move-object/from16 v21, v7

    const/4 v7, -0x1

    invoke-virtual {v11, v7}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    const-wide/16 v24, 0x1

    const/16 v11, 0xaa

    if-ne v8, v11, :cond_c

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    move/from16 v7, v19

    invoke-virtual {v11, v7}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v11, v10}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    move-wide v10, v1

    :goto_6
    cmp-long v19, v10, v4

    if-gtz v19, :cond_b

    move/from16 v19, v15

    iget-object v15, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    move-wide/from16 v26, v1

    const/4 v1, -0x1

    invoke-virtual {v15, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    add-long v10, v10, v24

    move/from16 v15, v19

    move-wide/from16 v1, v26

    goto :goto_6

    :cond_b
    move-wide/from16 v26, v1

    move/from16 v19, v15

    const/4 v1, -0x1

    const/4 v2, 0x0

    move/from16 v1, v19

    goto :goto_8

    :cond_c
    move-wide/from16 v26, v1

    move v1, v7

    move/from16 v7, v19

    move/from16 v19, v15

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v2, v12}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v12, :cond_d

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v10, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v10, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    move/from16 v1, v19

    add-int/lit8 v2, v2, 0x1

    const/4 v1, -0x1

    goto :goto_7

    :cond_d
    move/from16 v1, v19

    new-array v2, v3, [I

    :goto_8
    iget-object v10, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v10, v10, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v10}, Lorg/openjdk/tools/javac/jvm/Code$State;->dup()Lorg/openjdk/tools/javac/jvm/Code$State;

    move-result-object v10

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    move-object/from16 v11, v21

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v3, :cond_10

    move/from16 v19, v12

    iget-object v12, v11, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v11, v11, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    move-object/from16 v21, v11

    iget-object v11, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v11, v10}, Lorg/openjdk/tools/javac/jvm/Code;->entryPoint(Lorg/openjdk/tools/javac/jvm/Code$State;)I

    move-result v11

    if-eq v15, v14, :cond_f

    move/from16 v28, v3

    const/16 v3, 0xaa

    if-ne v8, v3, :cond_e

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    aget v29, v6, v15

    sub-int v29, v29, v7

    add-int/lit8 v29, v29, 0x3

    const/16 v20, 0x4

    mul-int/lit8 v29, v29, 0x4

    move/from16 v30, v7

    add-int v7, v1, v29

    sub-int/2addr v11, v9

    invoke-virtual {v3, v7, v11}, Lorg/openjdk/tools/javac/jvm/Code;->put4(II)V

    goto :goto_a

    :cond_e
    move/from16 v30, v7

    sub-int/2addr v11, v9

    aput v11, v2, v15

    goto :goto_a

    :cond_f
    move/from16 v28, v3

    move/from16 v30, v7

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    sub-int/2addr v11, v9

    invoke-virtual {v3, v1, v11}, Lorg/openjdk/tools/javac/jvm/Code;->put4(II)V

    :goto_a
    iget-object v3, v12, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    const/16 v7, 0x10

    move-object/from16 v11, p1

    invoke-virtual {v0, v3, v11, v7}, Lorg/openjdk/tools/javac/jvm/Gen;->genStats(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;I)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v19

    move-object/from16 v11, v21

    move/from16 v3, v28

    move/from16 v7, v30

    goto :goto_9

    :cond_10
    move-object/from16 v11, p1

    move/from16 v28, v3

    move/from16 v19, v12

    iget-object v3, v11, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->exit:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz v3, :cond_11

    iget-object v7, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v7, v3}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v3, v13}, Lorg/openjdk/tools/javac/util/Bits;->excludeFrom(I)V

    :cond_11
    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/jvm/Code;->get4(I)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_12

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v3, v10}, Lorg/openjdk/tools/javac/jvm/Code;->entryPoint(Lorg/openjdk/tools/javac/jvm/Code$State;)I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v3, v1, v7}, Lorg/openjdk/tools/javac/jvm/Code;->put4(II)V

    :cond_12
    const/16 v3, 0xaa

    if-ne v8, v3, :cond_14

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/jvm/Code;->get4(I)I

    move-result v2

    move-wide/from16 v6, v26

    :goto_b
    cmp-long v3, v6, v4

    if-gtz v3, :cond_17

    int-to-long v8, v1

    sub-long v10, v6, v26

    add-long v10, v10, v22

    const-wide/16 v16, 0x4

    mul-long v10, v10, v16

    add-long/2addr v8, v10

    long-to-int v3, v8

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v8, v3}, Lorg/openjdk/tools/javac/jvm/Code;->get4(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_13

    iget-object v8, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v8, v3, v2}, Lorg/openjdk/tools/javac/jvm/Code;->put4(II)V

    :cond_13
    add-long v6, v6, v24

    goto :goto_b

    :cond_14
    if-ltz v14, :cond_15

    const/4 v3, 0x1

    :goto_c
    add-int/lit8 v4, v28, -0x1

    if-ge v14, v4, :cond_15

    add-int/lit8 v4, v14, 0x1

    aget v5, v6, v4

    aput v5, v6, v14

    aget v5, v2, v4

    aput v5, v2, v14

    move v14, v4

    goto :goto_c

    :cond_15
    if-lez v19, :cond_16

    add-int/lit8 v12, v19, -0x1

    const/4 v3, 0x0

    invoke-static {v6, v2, v3, v12}, Lorg/openjdk/tools/javac/jvm/Gen;->qsort2([I[III)V

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :goto_d
    move v5, v3

    move/from16 v12, v19

    :goto_e
    if-ge v5, v12, :cond_17

    add-int/lit8 v3, v5, 0x1

    mul-int/lit8 v4, v3, 0x8

    add-int v15, v1, v4

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    aget v7, v6, v5

    invoke-virtual {v4, v15, v7}, Lorg/openjdk/tools/javac/jvm/Code;->put4(II)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/4 v7, 0x4

    add-int/2addr v15, v7

    aget v5, v2, v5

    invoke-virtual {v4, v15, v5}, Lorg/openjdk/tools/javac/jvm/Code;->put4(II)V

    move v5, v3

    goto :goto_e

    :cond_17
    :goto_f
    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v1, v13}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    return-void
.end method

.method public visitSynchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->makeTemp(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v2, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->store()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v3, 0xc2

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v3, v1, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->reg:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->lock(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v2, p1, v3}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    new-instance v4, Lorg/openjdk/tools/javac/jvm/Gen$1;

    invoke-direct {v4, p0, v2, v1}, Lorg/openjdk/tools/javac/jvm/Gen$1;-><init>(Lorg/openjdk/tools/javac/jvm/Gen;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/jvm/Items$LocalItem;)V

    iput-object v4, v3, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    iget-object v1, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genTry(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->endScopes(I)V

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v0, 0xbf

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    new-instance v3, Lorg/openjdk/tools/javac/jvm/Gen$2;

    invoke-direct {v3, p0, v0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Gen$2;-><init>(Lorg/openjdk/tools/javac/jvm/Gen;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCTry;Lorg/openjdk/tools/javac/comp/Env;)V

    iput-object v3, v2, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v2, v1, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genTry(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->setTypeAnnotationPositions(I)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    :cond_0
    return-void
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->setTypeAnnotationPositions(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->makeRef(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    const/16 v1, 0xc1

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->booleanType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->genCond(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;->negate()Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto/16 :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/jvm/Gen$3;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/16 v6, 0x60

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->genNullCheck(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    instance-of v2, v1, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    if-eqz v2, :cond_3

    iget v2, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_3

    :cond_1
    move-object v0, v1

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->incr(I)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v2, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v2}, Lorg/openjdk/tools/javac/jvm/Gen;->one(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget p1, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    add-int/lit16 v0, v0, 0x8c

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Items;->makeAssignItem(Lorg/openjdk/tools/javac/jvm/Items$Item;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget p1, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Gen;->emitMinusOne(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->duplicate()V

    instance-of v2, v1, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    if-eqz v2, :cond_7

    iget v2, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_7

    :cond_5
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v0

    check-cast v1, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->incr(I)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object p1

    iget v2, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/jvm/Items$Item;->stash(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v3, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/Gen;->one(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    iget v0, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    if-eqz v0, :cond_8

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->truncate(I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget v2, v1, Lorg/openjdk/tools/javac/jvm/Items$Item;->typecode:I

    add-int/lit16 v2, v2, 0x8c

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    :cond_8
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->store()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->result:Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)I

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/jvm/Gen;->checkStringConstant(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->varDebugInfo:Z

    if-eqz v1, :cond_5

    :cond_0
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->letExprDepth:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Gen;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/jvm/Gen;->genExpr(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$Item;->load()Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->items:Lorg/openjdk/tools/javac/jvm/Items;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeLocalItem(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;->store()V

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->letExprDepth:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Gen;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :cond_5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Gen;->checkDimension(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 6

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/jvm/Gen;->genLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)V

    return-void
.end method

.method public visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V
    .locals 1

    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
