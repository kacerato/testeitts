.class public Lorg/openjdk/tools/javac/comp/TypeEnter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;,
        Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;,
        Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;,
        Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;,
        Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;,
        Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;
    }
.end annotation


# static fields
.field static final checkClash:Z = true

.field protected static final typeEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/TypeEnter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowDeprecationOnImport:Z

.field allowTypeAnnos:Z

.field private final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field private final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final completeClass:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

.field completionEnabled:Z

.field private final deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

.field private final dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

.field private final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private final lint:Lorg/openjdk/tools/javac/code/Lint;

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private final memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final todo:Lorg/openjdk/tools/javac/comp/Todo;

.field private topLevelPhase:Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

.field private final typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

.field private final typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

.field private final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    new-instance v0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->completeClass:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    sget-object v0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/MemberEnter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/MemberEnter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Todo;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Todo;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotations;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/TypeAnnotations;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Dependencies;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Dependencies;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowTypeAnnotations()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->allowTypeAnnos:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowDeprecationOnImport()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->allowDeprecationOnImport:Z

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->lambda$handleDeprecatedAnnotations$4(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->topLevelPhase:Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->topLevelPhase:Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    return-object p1
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Attr;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$1400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/TypeEnvs;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/TypeAnnotations;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeAnnotations:Lorg/openjdk/tools/javac/code/TypeAnnotations;

    return-object p0
.end method

.method public static synthetic access$1600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/MemberEnter;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->memberEnter:Lorg/openjdk/tools/javac/comp/MemberEnter;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Dependencies;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Todo;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/comp/TypeEnter;->lambda$complete$1()V

    return-void
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->lambda$handleDeprecatedAnnotations$2(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result p0

    return p0
.end method

.method private createDefaultConstructorParams(Lorg/openjdk/tools/javac/tree/TreeMaker;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p5

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->paramName(I)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object p1, p4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    const-wide v1, 0x200000000L

    move-object v0, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p5, v6}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    iget-object p5, p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p5

    if-eqz p5, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :cond_1
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p5

    if-eqz p5, :cond_2

    new-instance p5, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x200000000L

    or-long v1, v0, v2

    iget-object v0, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    move-object v0, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p1, p5}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->lambda$handleDeprecatedAnnotations$3(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->lambda$handleDeprecatedAnnotations$5(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V

    return-void
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->lambda$ensureImportsChecked$0(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method private handleDeprecatedAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 5
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

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->deprecatedType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v1, v2, :cond_0

    iget-wide v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v3, 0x40000000020000L

    or-long/2addr v1, v3

    iput-wide v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/t2;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/t2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/u2;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/u2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/v2;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/v2;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/w2;

    invoke-direct {v1, p2}, Lorg/openjdk/tools/javac/comp/w2;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnter;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeEnterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/TypeEnter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/TypeEnter;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$complete$1()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$ensureImportsChecked$0(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->completeClass:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    invoke-static {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->access$1700(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method private static synthetic lambda$handleDeprecatedAnnotations$2(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handleDeprecatedAnnotations$3(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;
    .locals 0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    return-object p0
.end method

.method private synthetic lambda$handleDeprecatedAnnotations$4(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)Z
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->forRemoval:Lorg/openjdk/tools/javac/util/Name;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$handleDeprecatedAnnotations$5(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 4

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LITERAL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v2, 0x80000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_0
    return-void
.end method


# virtual methods
.method public DefaultConstructor(Lorg/openjdk/tools/javac/tree/TreeMaker;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;JZ)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;JZ)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-eqz v0, :cond_0

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/TypeEnter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v8, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v6, Lorg/openjdk/tools/javac/comp/TypeEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->enumSym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x8

    and-long v0, p7, v0

    const-wide v2, 0x1000000002L

    or-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    const-wide v2, 0x1000000000L

    or-long/2addr v0, v2

    or-long v0, p7, v0

    :goto_0
    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    :cond_1
    move-wide v1, v0

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    const/4 v3, 0x0

    move-object/from16 v4, p6

    invoke-direct {v0, v10, v3, v4, v8}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual/range {p4 .. p4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/openjdk/tools/javac/code/Type$ForAll;

    invoke-direct {v3, v9, v0}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    move-object v4, v3

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    new-instance v13, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v6, Lorg/openjdk/tools/javac/comp/TypeEnter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    move-object v0, v13

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object v3, v13

    move-object/from16 v4, p5

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/TypeEnter;->createDefaultConstructorParams(Lorg/openjdk/tools/javac/tree/TreeMaker;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v13, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v10, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Params(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v6, Lorg/openjdk/tools/javac/comp/TypeEnter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    if-eq v2, v3, :cond_3

    move/from16 v2, p9

    invoke-virtual {p0, p1, v9, v0, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->SuperCall(Lorg/openjdk/tools/javac/tree/TreeMaker;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v11, v12, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    invoke-virtual {p1, v13, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    return-object v0
.end method

.method public SuperCall(Lorg/openjdk/tools/javac/tree/TreeMaker;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;Z)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;"
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-object p4, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p1, p4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, p4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p4

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p4, p4, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, p4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p4

    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Idents(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    return-object p1
.end method

.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iput-object p0, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->blockAnnotations()V

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    sget-object v2, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->MEMBER_ENTER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Dependencies;->push(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->completeClass:Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->completeEnvs(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Dependencies;->pop()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    new-instance v2, Lorg/openjdk/tools/javac/comp/s2;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/comp/s2;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->finishImports(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Dependencies;->pop()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    throw p1
.end method

.method public ensureImportsChecked(Lorg/openjdk/tools/javac/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;->isFilled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Enter;->topLevelEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/comp/x2;

    invoke-direct {v2, p0, v0, v1}, Lorg/openjdk/tools/javac/comp/x2;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->finishImports(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishImports(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkImportsUnique(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkImportsResolvable(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/Check;->checkImportedPackagesObservable(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Scope$ImportScope;->finalizeScope()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$ImportScope;->finalizeScope()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method public markDeprecated(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Attr;->attribAnnotationTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-direct {p0, p2, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->handleDeprecatedAnnotations(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
