.class public final synthetic Lcom/android/tools/r8/internal/ue1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hZ;

.field public final synthetic c:Lcom/android/tools/r8/graph/F5;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hZ;Lcom/android/tools/r8/graph/F5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ue1;->b:Lcom/android/tools/r8/internal/hZ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ue1;->c:Lcom/android/tools/r8/graph/F5;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/ue1;->d:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ue1;->b:Lcom/android/tools/r8/internal/hZ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ue1;->c:Lcom/android/tools/r8/graph/F5;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/ue1;->d:Z

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/internal/hZ;Lcom/android/tools/r8/graph/F5;Z)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    return-object v0
.end method
