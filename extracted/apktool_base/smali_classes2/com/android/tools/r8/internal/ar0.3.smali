.class public abstract Lcom/android/tools/r8/internal/ar0;
.super Lcom/android/tools/r8/internal/sL;
.source "SourceFile"


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final l:[I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;[II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/sL;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ar0;->l:[I

    iput p3, p0, Lcom/android/tools/r8/internal/ar0;->m:I

    return-void
.end method


# virtual methods
.method public final Q0()Lcom/android/tools/r8/internal/ar0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/ar0;->m:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(I)Lcom/android/tools/r8/internal/W5;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/ar0;->l:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    return-object p1
.end method

.method public final l2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final u2()Lcom/android/tools/r8/internal/W5;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/ar0;->m:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public v2()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ar0;->l:[I

    array-length v0, v0

    return v0
.end method
