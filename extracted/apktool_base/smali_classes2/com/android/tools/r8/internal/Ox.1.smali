.class public final Lcom/android/tools/r8/internal/Ox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Qx;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/H5;

.field public final synthetic b:Lcom/android/tools/r8/internal/VJ;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ox;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ox;->b:Lcom/android/tools/r8/internal/VJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ox;->c:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ox;->d:Lcom/android/tools/r8/graph/H5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 14
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;
    .locals 3

    .line 1
    iget-object p2, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ox;->a:Lcom/android/tools/r8/graph/H5;

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
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ox;->b:Lcom/android/tools/r8/internal/VJ;

    .line 6
    iget v0, p1, Lcom/android/tools/r8/internal/aX;->b:I

    .line 7
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ox;->c:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ox;->d:Lcom/android/tools/r8/graph/H5;

    .line 8
    sget-object v2, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 9
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget v1, p1, Lcom/android/tools/r8/internal/aX;->b:I

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/aX;->c:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 13
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/yg;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method
