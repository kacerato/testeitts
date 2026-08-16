.class public Lcom/android/tools/r8/naming/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/naming/M0;->a:I

    iput p2, p0, Lcom/android/tools/r8/naming/M0;->b:I

    iput-boolean p3, p0, Lcom/android/tools/r8/naming/M0;->c:Z

    sget-boolean p3, Lcom/android/tools/r8/naming/M0;->d:Z

    if-nez p3, :cond_1

    if-gt p1, p2, :cond_0

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
.method public final a()I
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/naming/M0;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/naming/M0;->b:I

    iget v2, p0, Lcom/android/tools/r8/naming/M0;->a:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/naming/M0;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/naming/M0;->b:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/naming/M0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/M0;

    iget v1, p0, Lcom/android/tools/r8/naming/M0;->a:I

    iget v3, p1, Lcom/android/tools/r8/naming/M0;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/tools/r8/naming/M0;->b:I

    iget v3, p1, Lcom/android/tools/r8/naming/M0;->b:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/naming/M0;->c:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/naming/M0;->c:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/naming/M0;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/tools/r8/naming/M0;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/android/tools/r8/naming/M0;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/naming/M0;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/naming/M0;->a:I

    iget v1, p0, Lcom/android/tools/r8/naming/M0;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
