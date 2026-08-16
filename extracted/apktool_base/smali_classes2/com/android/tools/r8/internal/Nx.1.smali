.class public final Lcom/android/tools/r8/internal/Nx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Qx;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nx;->a:Lcom/android/tools/r8/graph/H5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 13
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;
    .locals 2

    .line 1
    iget-object p2, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nx;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Nx;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->j()Lcom/android/tools/r8/internal/F8;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget v0, p1, Lcom/android/tools/r8/internal/aX;->b:I

    .line 8
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/F8;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget v1, p1, Lcom/android/tools/r8/internal/aX;->b:I

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/aX;->c:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 12
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/yg;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method
