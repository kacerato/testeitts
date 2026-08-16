.class public final synthetic Lcom/android/tools/r8/internal/d21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Xc;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/dX;

.field public final synthetic e:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xc;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/d21;->b:Lcom/android/tools/r8/internal/Xc;

    iput-object p2, p0, Lcom/android/tools/r8/internal/d21;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/d21;->d:Lcom/android/tools/r8/internal/dX;

    iput-object p4, p0, Lcom/android/tools/r8/internal/d21;->e:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/d21;->b:Lcom/android/tools/r8/internal/Xc;

    iget-object v1, p0, Lcom/android/tools/r8/internal/d21;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/d21;->d:Lcom/android/tools/r8/internal/dX;

    iget-object v3, p0, Lcom/android/tools/r8/internal/d21;->e:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Xc;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/Y;

    move-result-object v0

    return-object v0
.end method
