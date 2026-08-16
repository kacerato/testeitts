.class public final Lcom/android/tools/r8/internal/nb;
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

.method public constructor <init>(Lcom/android/tools/r8/internal/sb;Lcom/android/tools/r8/internal/rb;)V
    .locals 2

    iget v0, p1, Lcom/android/tools/r8/internal/sb;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/sb;-><init>(ILcom/android/tools/r8/internal/sb;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sb;->d()I

    move-result p1

    new-instance v0, Lcom/android/tools/r8/internal/ob;

    const v1, 0x186a0

    add-int/2addr p1, v1

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/ob;-><init>(ILcom/android/tools/r8/internal/rb;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    sget-boolean p2, Lcom/android/tools/r8/internal/nb;->d:Z

    if-nez p2, :cond_1

    if-gt v1, p1, :cond_0

    const p2, 0x30d40

    if-ge p1, p2, :cond_0

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
.method public final a(Lcom/android/tools/r8/internal/lb;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->a(Lcom/android/tools/r8/internal/lb;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/ob;->a(I)I

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/ob;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ob;->d:Lcom/android/tools/r8/internal/rb;

    aput-object v1, p1, v0

    :cond_0
    return-void
.end method

.method public final b(I)Lcom/android/tools/r8/internal/ob;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/ob;->a(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->b(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/ob;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/ob;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/nb;->c:Lcom/android/tools/r8/internal/ob;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ob;->d:Lcom/android/tools/r8/internal/rb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; push("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
