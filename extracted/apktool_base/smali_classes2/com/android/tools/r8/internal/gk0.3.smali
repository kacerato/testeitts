.class public final Lcom/android/tools/r8/internal/gk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceTypeElement;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hk0;

.field public final b:Lcom/android/tools/r8/retrace/RetracedTypeReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hk0;Lcom/android/tools/r8/retrace/RetracedTypeReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gk0;->a:Lcom/android/tools/r8/internal/hk0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gk0;->b:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    return-void
.end method


# virtual methods
.method public final getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gk0;->a:Lcom/android/tools/r8/internal/hk0;

    return-object v0
.end method

.method public final getType()Lcom/android/tools/r8/retrace/RetracedTypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gk0;->b:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    return-object v0
.end method

.method public final isCompilerSynthesized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
