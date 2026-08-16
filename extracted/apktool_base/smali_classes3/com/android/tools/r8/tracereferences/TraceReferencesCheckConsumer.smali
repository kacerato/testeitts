.class public Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;
.super Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a()Lcom/android/tools/r8/diagnostic/internal/m;
    .locals 3

    .line 29
    sget-boolean v0, Lcom/android/tools/r8/diagnostic/internal/m;->c:Z

    .line 30
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/l;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/l;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/tracereferences/F;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/tracereferences/F;-><init>(Lcom/android/tools/r8/diagnostic/internal/l;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/tracereferences/G;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/tracereferences/G;-><init>(Lcom/android/tools/r8/diagnostic/internal/l;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/tracereferences/t;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/tracereferences/t;-><init>(Lcom/android/tools/r8/diagnostic/internal/l;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 34
    new-instance v1, Lcom/android/tools/r8/diagnostic/internal/m;

    iget-object v0, v0, Lcom/android/tools/r8/diagnostic/internal/l;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/diagnostic/internal/m;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object v1
.end method

.method private static synthetic a(Lcom/android/tools/r8/references/ClassReference;)Ljava/util/Map;
    .locals 0

    .line 23
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method private static synthetic a(Lcom/android/tools/r8/references/FieldReference;)Ljava/util/Map;
    .locals 0

    .line 24
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method private static synthetic a(Lcom/android/tools/r8/references/MethodReference;)Ljava/util/Map;
    .locals 0

    .line 28
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method private static a(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/ClassReference;Ljava/util/Map;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/g;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/g;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/android/tools/r8/diagnostic/internal/g;->b:Lcom/android/tools/r8/references/ClassReference;

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/diagnostic/internal/i;->a(Ljava/util/Collection;)Lcom/android/tools/r8/diagnostic/internal/i;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/diagnostic/internal/g;

    .line 4
    new-instance p2, Lcom/android/tools/r8/diagnostic/internal/h;

    iget-object v0, p1, Lcom/android/tools/r8/diagnostic/internal/g;->b:Lcom/android/tools/r8/references/ClassReference;

    iget-object p1, p1, Lcom/android/tools/r8/diagnostic/internal/i;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/diagnostic/internal/h;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/internal/hC;)V

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/diagnostic/internal/l;->a:Lcom/android/tools/r8/internal/eC;

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method private static a(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/FieldReference;Ljava/util/Map;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/n;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/n;-><init>()V

    .line 8
    iput-object p1, v0, Lcom/android/tools/r8/diagnostic/internal/n;->b:Lcom/android/tools/r8/references/FieldReference;

    .line 9
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/diagnostic/internal/i;->a(Ljava/util/Collection;)Lcom/android/tools/r8/diagnostic/internal/i;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/diagnostic/internal/n;

    .line 10
    new-instance p2, Lcom/android/tools/r8/diagnostic/internal/o;

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/diagnostic/internal/n;->b:Lcom/android/tools/r8/references/FieldReference;

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/diagnostic/internal/i;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/diagnostic/internal/o;-><init>(Lcom/android/tools/r8/references/FieldReference;Lcom/android/tools/r8/internal/hC;)V

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/diagnostic/internal/l;->a:Lcom/android/tools/r8/internal/eC;

    .line 14
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method private static a(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/MethodReference;Ljava/util/Map;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/p;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/p;-><init>()V

    .line 16
    iput-object p1, v0, Lcom/android/tools/r8/diagnostic/internal/p;->b:Lcom/android/tools/r8/references/MethodReference;

    .line 17
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/diagnostic/internal/i;->a(Ljava/util/Collection;)Lcom/android/tools/r8/diagnostic/internal/i;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/diagnostic/internal/p;

    .line 18
    new-instance p2, Lcom/android/tools/r8/diagnostic/internal/q;

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/diagnostic/internal/p;->b:Lcom/android/tools/r8/references/MethodReference;

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/diagnostic/internal/i;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/diagnostic/internal/q;-><init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/hC;)V

    .line 21
    iget-object p0, p0, Lcom/android/tools/r8/diagnostic/internal/l;->a:Lcom/android/tools/r8/internal/eC;

    .line 22
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method private static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V
    .locals 1

    .line 25
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionClassContext;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V
    .locals 1

    .line 26
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V
    .locals 1

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic b(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionClassContext;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic b(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic b(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V
    .locals 1

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic c(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionClassContext;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic c(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic c(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V
    .locals 1

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic d(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->b(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/references/MethodReference;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Lcom/android/tools/r8/references/MethodReference;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/references/FieldReference;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Lcom/android/tools/r8/references/FieldReference;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/ClassReference;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/ClassReference;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/FieldReference;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/FieldReference;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/MethodReference;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/MethodReference;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->c(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/tools/r8/references/ClassReference;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Lcom/android/tools/r8/references/ClassReference;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->c(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->b(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->c(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->b(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V

    return-void
.end method

.method public static synthetic r(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a(Ljava/util/Map;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V

    return-void
.end method


# virtual methods
.method public acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/FieldReference;

    new-instance v1, Lcom/android/tools/r8/tracereferences/u;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/u;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReferencedFromContext()Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/tracereferences/v;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/tracereferences/v;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/android/tools/r8/tracereferences/w;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/tracereferences/w;-><init>(Ljava/util/Map;)V

    new-instance v2, Lcom/android/tools/r8/tracereferences/x;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/tracereferences/x;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/MethodReference;

    new-instance v1, Lcom/android/tools/r8/tracereferences/s;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/s;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReferencedFromContext()Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/tracereferences/y;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/tracereferences/y;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/android/tools/r8/tracereferences/z;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/tracereferences/z;-><init>(Ljava/util/Map;)V

    new-instance v2, Lcom/android/tools/r8/tracereferences/A;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/tracereferences/A;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/ClassReference;

    new-instance v1, Lcom/android/tools/r8/tracereferences/B;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/B;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReferencedFromContext()Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/tracereferences/C;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/tracereferences/C;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/android/tools/r8/tracereferences/D;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/tracereferences/D;-><init>(Ljava/util/Map;)V

    new-instance v2, Lcom/android/tools/r8/tracereferences/E;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/tracereferences/E;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->a()Lcom/android/tools/r8/diagnostic/internal/m;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
