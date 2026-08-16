.class public final synthetic Lcom/android/tools/r8/tracereferences/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/Q;->b:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/Q;->b:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    check-cast p1, Lcom/android/tools/r8/Diagnostic;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
