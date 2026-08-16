.class public Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/android/tools/r8/StringConsumer;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;

    new-instance v1, Lcom/android/tools/r8/internal/Hs0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Hs0;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->a:Lcom/android/tools/r8/StringConsumer;

    iget-boolean v3, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->b:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;-><init>(Lcom/android/tools/r8/internal/Hs0;Lcom/android/tools/r8/StringConsumer;ZLcom/android/tools/r8/tracereferences/J;)V

    return-object v0
.end method

.method public setAllowObfuscation(Z)Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->b:Z

    return-object p0
.end method

.method public setOutputConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->a:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules$Builder;->a:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method
