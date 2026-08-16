.class public final synthetic Lcom/android/tools/r8/tracereferences/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;

.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/r;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;

    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/r;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/r;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/r;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferences;->d(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method
