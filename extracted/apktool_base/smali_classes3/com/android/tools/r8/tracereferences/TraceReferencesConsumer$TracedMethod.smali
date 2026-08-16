.class public interface abstract Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TracedMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference<",
        "Lcom/android/tools/r8/references/MethodReference;",
        "Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract synthetic getAccessFlags()Ljava/lang/Object;
.end method
