.class public final synthetic Lcom/android/tools/r8/internal/ez0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Aj;

.field public final synthetic c:Lcom/android/tools/r8/graph/F5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Aj;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ez0;->b:Lcom/android/tools/r8/internal/Aj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ez0;->c:Lcom/android/tools/r8/graph/F5;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ez0;->b:Lcom/android/tools/r8/internal/Aj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ez0;->c:Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Aj;->c(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v0

    return-object v0
.end method
