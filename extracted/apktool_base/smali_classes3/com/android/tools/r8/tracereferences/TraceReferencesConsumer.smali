.class public interface abstract Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$FieldAccessFlags;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ClassAccessFlags;,
        Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$AccessFlags;
    }
.end annotation


# direct methods
.method public static emptyConsumer()Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->b()Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V
.end method

.method public abstract acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V
.end method

.method public acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method

.method public abstract acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method
