.class public Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardingConsumer"
.end annotation


# static fields
.field private static final b:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;


# instance fields
.field private final a:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V

    sput-object v0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->b:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    return-void
.end method

.method public static bridge synthetic b()Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->b:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;

    return-object v0
.end method


# virtual methods
.method public acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptField(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptMethod(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptPackage(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->acceptType(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method
