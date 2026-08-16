.class Lorg/openjdk/tools/javac/code/Types$DescriptorCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescriptorCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;,
        Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;
    }
.end annotation


# instance fields
.field private _map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->_map:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->lambda$mergeDescriptors$3(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->_map:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->lambda$findDescriptorInternal$1(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->lambda$findDescriptorInternal$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->lambda$findDescriptorInternal$2(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$findDescriptorInternal$0(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$findDescriptorInternal$1(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$findDescriptorInternal$2(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/code/Types;->isSubSignature(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$mergeDescriptors$3(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$1;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method private mergeDescriptors(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->mergeAbstracts(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Z)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/code/W;

    invoke-direct {p2, p0}, Lorg/openjdk/tools/javac/code/W;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;

    return-object p1
.end method


# virtual methods
.method public varargs failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->failure(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object p1

    return-object p1
.end method

.method public failure(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Types;->access$000(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object p1

    return-object p1
.end method

.method public findDescriptorInternal(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Scope$CompoundScope;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/code/Types$DescriptorFilter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v1, v2, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorFilter;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols(Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "not.a.functional.intf.1"

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v4, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v4, v5, v6}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lorg/openjdk/tools/javac/code/T;

    invoke-direct {v4, p0, v1}, Lorg/openjdk/tools/javac/code/T;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lorg/openjdk/tools/javac/code/U;

    invoke-direct {v4, p0, p1}, Lorg/openjdk/tools/javac/code/U;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lorg/openjdk/tools/javac/code/V;

    invoke-direct {v4, p0, v3}, Lorg/openjdk/tools/javac/code/V;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Types;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "incompatible.abstracts"

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    new-instance p1, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object p1

    :cond_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->mergeDescriptors(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "descriptor.throws"

    goto :goto_2

    :cond_5
    const-string v2, "descriptor"

    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Types;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    filled-new-array {v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "incompatible.descs.in.functional.intf"

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->failure(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object p1

    throw p1

    :cond_7
    return-object p2

    :cond_8
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Types;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "no.abstracts"

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object p1

    throw p1

    :cond_9
    const-string p2, "not.a.functional.intf"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;

    move-result-object p1

    throw p1
.end method

.method public get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->_map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->membersClosure(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getMark()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;->matches(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;->cachedDescRes:Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->findDescriptorInternal(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Scope$CompoundScope;)Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$DescriptorCache;->_map:Ljava/util/WeakHashMap;

    new-instance v3, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getMark()I

    move-result v1

    invoke-direct {v3, p0, v0, v1}, Lorg/openjdk/tools/javac/code/Types$DescriptorCache$Entry;-><init>(Lorg/openjdk/tools/javac/code/Types$DescriptorCache;Lorg/openjdk/tools/javac/code/Types$DescriptorCache$FunctionDescriptor;I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
