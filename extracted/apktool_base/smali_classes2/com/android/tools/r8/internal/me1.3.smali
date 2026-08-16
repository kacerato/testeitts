.class public final synthetic Lcom/android/tools/r8/internal/me1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/iZ;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/hZ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/hZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/me1;->b:Lcom/android/tools/r8/internal/iZ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/me1;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/me1;->d:Lcom/android/tools/r8/internal/hZ;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/me1;->b:Lcom/android/tools/r8/internal/iZ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/me1;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/me1;->d:Lcom/android/tools/r8/internal/hZ;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/hZ;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    return-object v0
.end method
