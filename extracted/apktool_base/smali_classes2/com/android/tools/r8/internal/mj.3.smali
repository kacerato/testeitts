.class public final Lcom/android/tools/r8/internal/mj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/mj;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/mj;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/tools/r8/internal/mj;-><init>(IZII)V

    sput-object v0, Lcom/android/tools/r8/internal/mj;->e:Lcom/android/tools/r8/internal/mj;

    return-void
.end method

.method public constructor <init>(IZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/mj;->a:I

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/mj;->b:Z

    iput p3, p0, Lcom/android/tools/r8/internal/mj;->c:I

    iput p4, p0, Lcom/android/tools/r8/internal/mj;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/android/tools/r8/internal/mj;->a:I

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/mj;->b:Z

    iget v2, p0, Lcom/android/tools/r8/internal/mj;->d:I

    iget v3, p0, Lcom/android/tools/r8/internal/mj;->c:I

    sub-int v4, v2, v0

    add-int/lit8 v5, v0, 0x1

    int-to-long v5, v5

    int-to-long v7, v3

    mul-long/2addr v5, v7

    int-to-long v7, v2

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const v5, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v5, v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", converted="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cost="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", methods="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", saved="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", overhead="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
