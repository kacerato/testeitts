.class public final Lcom/android/tools/r8/internal/rb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    sget-boolean p2, Lcom/android/tools/r8/internal/rb0;->a:Z

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    sget-boolean p2, Lcom/android/tools/r8/internal/rb0;->a:Z

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    sget-boolean p1, Lcom/android/tools/r8/internal/rb0;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    sget-boolean p2, Lcom/android/tools/r8/internal/rb0;->a:Z

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
