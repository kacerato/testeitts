.class public Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;
.super Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;
    }
.end annotation


# instance fields
.field private final c:Lcom/android/tools/r8/internal/Hs0;

.field private final d:Lcom/android/tools/r8/StringConsumer;

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/internal/Hs0;Lcom/android/tools/r8/StringConsumer;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->c:Lcom/android/tools/r8/internal/Hs0;

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->d:Lcom/android/tools/r8/StringConsumer;

    .line 5
    iput-boolean p3, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hs0;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/tracereferences/J;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;-><init>(Lcom/android/tools/r8/internal/Hs0;Lcom/android/tools/r8/StringConsumer;Z)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;

    invoke-direct {v0}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public allowObfuscation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->e:Z

    return v0
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    new-instance v0, Lcom/android/tools/r8/tracereferences/b;

    iget-boolean v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->e:Z

    invoke-direct {v0, v1}, Lcom/android/tools/r8/tracereferences/b;-><init>(Z)V

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->c:Lcom/android/tools/r8/internal/Hs0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/Hs0;->a:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/android/tools/r8/internal/Hs0;->b:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/tools/r8/internal/Hs0;->c:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Hs0;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/tools/r8/tracereferences/a;->a(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->d:Lcom/android/tools/r8/StringConsumer;

    iget-object v0, v0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->d:Lcom/android/tools/r8/StringConsumer;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
