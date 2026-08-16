.class public final synthetic Lcom/android/tools/r8/tracereferences/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

.field public final synthetic b:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/H;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/tracereferences/H;->b:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/H;->a:Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/H;->b:Lcom/android/tools/r8/internal/C7;

    invoke-static {v0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;Lcom/android/tools/r8/internal/C7;)V

    return-void
.end method
