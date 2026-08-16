.class public Lcom/android/tools/r8/graph/t0;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/t0;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:[Lcom/android/tools/r8/graph/t0;

.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/L2;

.field public final c:Lcom/android/tools/r8/graph/R2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/t0;

    sput-object v0, Lcom/android/tools/r8/graph/t0;->d:[Lcom/android/tools/r8/graph/t0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/t0;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Uf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Vf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Vf;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/t0;)Lcom/android/tools/r8/graph/R2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/graph/t0;->e:Z

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/t0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/t0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/R2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/R2;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    return v1
.end method

.method public k0()Lcom/android/tools/r8/graph/L2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public l0()Lcom/android/tools/r8/graph/R2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Tf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Tf;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
