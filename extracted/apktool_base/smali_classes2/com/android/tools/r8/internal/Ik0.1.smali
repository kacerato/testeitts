.class public final Lcom/android/tools/r8/internal/Ik0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Hk0;

.field public c:Lcom/android/tools/r8/internal/DT;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Jk0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Hk0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Hk0;-><init>(Lcom/android/tools/r8/internal/l8;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ik0;->b:Lcom/android/tools/r8/internal/Hk0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hk0;->a()Lcom/android/tools/r8/internal/ET;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/DT;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/DT;-><init>(Lcom/android/tools/r8/internal/ET;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ik0;->c:Lcom/android/tools/r8/internal/DT;

    iget p1, p1, Lcom/android/tools/r8/internal/Jk0;->d:I

    iput p1, p0, Lcom/android/tools/r8/internal/Ik0;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ik0;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ik0;->c:Lcom/android/tools/r8/internal/DT;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DT;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ik0;->b:Lcom/android/tools/r8/internal/Hk0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hk0;->a()Lcom/android/tools/r8/internal/ET;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/DT;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/DT;-><init>(Lcom/android/tools/r8/internal/ET;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/Ik0;->c:Lcom/android/tools/r8/internal/DT;

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ik0;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Ik0;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ik0;->c:Lcom/android/tools/r8/internal/DT;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DT;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
