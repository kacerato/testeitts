.class public Lorg/openjdk/tools/javac/model/JavacElements;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/util/Elements;


# instance fields
.field private final allowModules:Z

.field private final alreadyWarnedDuplicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private final javaCompiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

.field private final javacTaskImpl:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final modules:Lorg/openjdk/tools/javac/comp/Modules;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final resolve:Lorg/openjdk/tools/javac/comp/Resolve;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->alreadyWarnedDuplicates:Ljava/util/Set;

    const-class v0, Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->javaCompiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->resolve:Lorg/openjdk/tools/javac/comp/Resolve;

    const-class v0, Lorg/openjdk/source/util/JavacTask;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/util/JavacTask;

    instance-of v1, v0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->javacTaskImpl:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->allowModules:Z

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/model/JavacElements;->lambda$unboundNameToSymbol$1(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->scanForAssign(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->matchAttributeToTree(Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    return-object p0
.end method

.method private addMembers(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 8

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Scope$LookupKind;->NON_RECURSIVE:Lorg/openjdk/tools/javac/code/Scope$LookupKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/code/Scope$LookupKind;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x1000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v4

    sget-object v5, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v4, v5, :cond_1

    check-cast v3, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    move-object v4, v1

    check-cast v4, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v5

    check-cast v5, Lorg/openjdk/javax/lang/model/element/TypeElement;

    invoke-virtual {p0, v3, v4, v5}, Lorg/openjdk/tools/javac/model/JavacElements;->overrides(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v3, v6, :cond_4

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->INSTANCE_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v3, v6, :cond_4

    sget-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->STATIC_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v3, v6, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    if-eqz v2, :cond_6

    if-nez v4, :cond_0

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/model/JavacElements;->lambda$unboundNameToSymbol$0(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p0

    return-object p0
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static containsAnnoOfType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private doGetElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne p4, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, p2, p3, p4}, Lorg/openjdk/tools/javac/model/JavacElements;->unboundNameToSymbol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0, p1, p3, p4}, Lorg/openjdk/tools/javac/model/JavacElements;->nameToSymbol(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method private doGetPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 2

    const-string v0, "getPackageElement"

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/model/JavacElements;->ensureEntered(Ljava/lang/String;)V

    const-class v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/openjdk/tools/javac/model/JavacElements;->doGetElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-object p1
.end method

.method private doGetTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 2

    const-string v0, "getTypeElement"

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/model/JavacElements;->ensureEntered(Ljava/lang/String;)V

    const-class v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/openjdk/tools/javac/model/JavacElements;->doGetElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1
.end method

.method private ensureEntered(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->javacTaskImpl:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->ensureEntered()V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->javaCompiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->isEnterDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot use Elements."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before the TaskEvent.Kind.ENTER finished event."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEnterEnv(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/model/JavacElements$1;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ")",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getEnterEnv(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p1, v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->declarationFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v1, p1, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacElements;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/model/JavacElements;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/model/JavacElements;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isInherited(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->inheritedType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$unboundNameToSymbol$0(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object p0
.end method

.method private static synthetic lambda$unboundNameToSymbol$1(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private matchAnnoToTree(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 1
    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/model/JavacElements$1Vis;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/model/JavacElements$1Vis;-><init>(Lorg/openjdk/tools/javac/model/JavacElements;)V

    .line 3
    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    .line 4
    iget-object p3, v0, Lorg/openjdk/tools/javac/model/JavacElements$1Vis;->result:Lorg/openjdk/tools/javac/util/List;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 6
    const-class p3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {p3, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object p3, v0, Lorg/openjdk/tools/javac/model/JavacElements$1Vis;->result:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->matchAnnoToTree(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method private matchAnnoToTree(Lorg/openjdk/tools/javac/code/Attribute$Compound;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    .line 8
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    .line 9
    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, p1, v0, v2}, Lorg/openjdk/tools/javac/model/JavacElements;->matchAttributeToTree(Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private matchAttributeToTree(Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    if-ne p2, p1, :cond_0

    return-object p3

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;

    invoke-direct {v0, p0, p3, p1}, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;-><init>(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Attribute;)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Attribute;->accept(Lorg/openjdk/tools/javac/code/Attribute$Visitor;)V

    iget-object p1, v0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p1
.end method

.method private nameToSymbol(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    const-class v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->getClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->lookupPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->javaCompiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->resolveIdent(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p1, p2, :cond_2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    :catch_0
    :cond_2
    return-object v2
.end method

.method private scanForAssign(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;

    invoke-direct {v0, p0, p2, p1}, Lorg/openjdk/tools/javac/model/JavacElements$1TS;-><init>(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object p1, v0, Lorg/openjdk/tools/javac/model/JavacElements$1TS;->result:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method private unboundNameToSymbol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1, p2, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->nameToSymbol(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0, v2, p2, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->nameToSymbol(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Ljava/lang/Class;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/model/JavacElements;->allowModules:Z

    if-eqz v3, :cond_2

    const-class v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eq p3, v3, :cond_2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Scope;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p3

    const/4 v2, 0x0

    if-le p3, v1, :cond_5

    iget-object p3, p0, Lorg/openjdk/tools/javac/model/JavacElements;->alreadyWarnedDuplicates:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lorg/openjdk/tools/javac/model/b;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/model/b;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lorg/openjdk/tools/javac/model/c;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/model/c;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string v0, ", "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1, p2, p3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->MultipleElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;)V

    :cond_5
    return-object v2
.end method


# virtual methods
.method public bridge synthetic getAllAnnotationMirrors(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getAllAnnotationMirrors(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllAnnotationMirrors(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$Compound;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_3

    .line 5
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    .line 6
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    .line 9
    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v4}, Lorg/openjdk/tools/javac/model/JavacElements;->isInherited(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 10
    invoke-static {v0, v4}, Lorg/openjdk/tools/javac/model/JavacElements;->containsAnnoOfType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public bridge synthetic getAllMembers(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getAllMembers(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/tools/javac/model/FilteredMemberList;

    move-result-object p1

    return-object p1
.end method

.method public getAllMembers(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/tools/javac/model/FilteredMemberList;
    .locals 2

    .line 2
    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->closure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    .line 6
    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/model/JavacElements;->addMembers(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/model/FilteredMemberList;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/model/FilteredMemberList;-><init>(Lorg/openjdk/tools/javac/code/Scope;)V

    return-object p1
.end method

.method public getAllModuleElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->allowModules:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBinaryName(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getBinaryName(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryName(Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public getConstantExpression(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Constants;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDocComment(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1, v1}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->getCommentText(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getElementValuesWithDefaults(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/AnnotationMirror;->getAnnotationType()Lorg/openjdk/javax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->getElementValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/DeclaredType;->asElement()Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getDefaultValue()Lorg/openjdk/tools/javac/code/Attribute;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getModuleElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/ModuleElement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getModuleElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getModuleElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 2

    .line 2
    const-string v0, "getModuleElement"

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/model/JavacElements;->ensureEntered(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->getObservableModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getModuleOf(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/ModuleElement;
    .locals 3

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/JavacElements;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_1

    check-cast p1, Lorg/openjdk/javax/lang/model/element/ModuleElement;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getName(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/Name;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getName(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public getOrigin(Lorg/openjdk/javax/lang/model/AnnotatedConstruct;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;)Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 0

    .line 5
    const-class p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;

    .line 6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Attribute$Compound;->isSynthesized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->MANDATED:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1
.end method

.method public getOrigin(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 4

    .line 1
    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x1000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->MANDATED:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1
.end method

.method public getOrigin(Lorg/openjdk/javax/lang/model/element/ModuleElement;Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;)Lorg/openjdk/javax/lang/model/util/Elements$Origin;
    .locals 1

    .line 9
    sget-object p1, Lorg/openjdk/tools/javac/model/JavacElements$1;->$SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind:[I

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;->getKind()Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 10
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 11
    :cond_0
    const-class p1, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    .line 12
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->flags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;->MANDATED:Lorg/openjdk/tools/javac/code/Directive$OpensFlag;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->MANDATED:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 14
    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->flags:Ljava/util/Set;

    sget-object p2, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;->SYNTHETIC:Lorg/openjdk/tools/javac/code/Directive$OpensFlag;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->SYNTHETIC:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 16
    :cond_2
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 17
    :cond_3
    const-class p1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    .line 18
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->flags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->MANDATED:Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->MANDATED:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 20
    :cond_4
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->flags:Ljava/util/Set;

    sget-object p2, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->SYNTHETIC:Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->SYNTHETIC:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 22
    :cond_5
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 23
    :cond_6
    const-class p1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    .line 24
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->MANDATED:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 25
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->MANDATED:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 26
    :cond_7
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object p2, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->SYNTHETIC:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 27
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->SYNTHETIC:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1

    .line 28
    :cond_8
    sget-object p1, Lorg/openjdk/javax/lang/model/util/Elements$Origin;->EXPLICIT:Lorg/openjdk/javax/lang/model/util/Elements$Origin;

    return-object p1
.end method

.method public bridge synthetic getPackageElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/PackageElement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getPackageElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/PackageElement;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->getPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getPackageElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->doGetPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->doGetPackageElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getPackageOf(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/PackageElement;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getTree(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/AnnotationValue;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            "Lorg/openjdk/javax/lang/model/element/AnnotationMirror;",
            "Lorg/openjdk/javax/lang/model/element/AnnotationValue;",
            ")",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getTreeAndTopLevel(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v0, v1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, p2, p1, v0}, Lorg/openjdk/tools/javac/model/JavacElements;->matchAnnoToTree(Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    if-nez p3, :cond_4

    .line 8
    new-instance p2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object p3, v1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-direct {p2, p1, p3}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 9
    :cond_4
    const-class v0, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-static {v0, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-static {v0, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Attribute;

    .line 10
    invoke-direct {p0, p3, p2, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->matchAttributeToTree(Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    if-nez p2, :cond_5

    .line 11
    new-instance p2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object p3, v1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-direct {p2, p1, p3}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 12
    :cond_5
    new-instance p1, Lorg/openjdk/tools/javac/util/Pair;

    iget-object p3, v1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->getTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->doGetTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public getTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->doGetTypeElement(Lorg/openjdk/javax/lang/model/element/ModuleElement;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    return-object p1
.end method

.method public hides(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/Element;)Z
    .locals 4

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v0, 0x0

    if-eq p1, p2, :cond_4

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_4

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->isSubSignature(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v1, v2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public isDeprecated(Lorg/openjdk/javax/lang/model/element/Element;)Z
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecated()Z

    move-result p1

    return p1
.end method

.method public isFunctionalInterface(Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
    .locals 2

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/Element;->getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->INTERFACE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->isFunctionalInterface(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result p1

    return p1
.end method

.method public overrides(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;)Z
    .locals 3

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v0, p3}, Lorg/openjdk/tools/javac/model/JavacElements;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-eq p1, p2, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p3, v0}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2, p3, v0, v2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public varargs printElements(Ljava/io/Writer;[Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    new-instance v3, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-direct {v3, p1, p0}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;-><init>(Ljava/io/Writer;Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-virtual {v3, v2}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/processing/PrintingProcessor$PrintingElementVisitor;->flush()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
