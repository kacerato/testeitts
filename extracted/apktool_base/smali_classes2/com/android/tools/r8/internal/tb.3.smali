.class public final Lcom/android/tools/r8/internal/tb;
.super Lcom/android/tools/r8/internal/sb;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/ob;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/sb;ILcom/android/tools/r8/internal/rb;)V
    .locals 1

    iget v0, p1, Lcom/android/tools/r8/internal/sb;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/sb;-><init>(ILcom/android/tools/r8/internal/sb;)V

    new-instance p1, Lcom/android/tools/r8/internal/ob;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/ob;-><init>(ILcom/android/tools/r8/internal/rb;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tb;->c:Lcom/android/tools/r8/internal/ob;

    sget-boolean p1, Lcom/android/tools/r8/internal/tb;->d:Z

    if-nez p1, :cond_1

    if-ltz p2, :cond_0

    const p1, 0x186a0

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/internal/ob;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tb;->c:Lcom/android/tools/r8/internal/ob;

    iget v1, v0, Lcom/android/tools/r8/internal/ob;->a:I

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->a(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/lb;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->a(Lcom/android/tools/r8/internal/lb;)V

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    iget-object v0, p0, Lcom/android/tools/r8/internal/tb;->c:Lcom/android/tools/r8/internal/ob;

    iget v1, v0, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object v0, v0, Lcom/android/tools/r8/internal/ob;->d:Lcom/android/tools/r8/internal/rb;

    aput-object v0, p1, v1

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/tb;->c:Lcom/android/tools/r8/internal/ob;

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sb;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/tb;->c:Lcom/android/tools/r8/internal/ob;

    iget v2, v1, Lcom/android/tools/r8/internal/ob;->a:I

    iget-object v1, v1, Lcom/android/tools/r8/internal/ob;->d:Lcom/android/tools/r8/internal/rb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; write "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " := "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
