.class public final Lcom/android/tools/r8/internal/Hs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hs0;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hs0;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hs0;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hs0;->d:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/references/ClassReference;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/references/ClassReference;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/references/FieldReference;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hs0;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/qH0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/qH0;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/references/MethodReference;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hs0;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/rH0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/rH0;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Hs0;->d:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Hs0;->a:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method
