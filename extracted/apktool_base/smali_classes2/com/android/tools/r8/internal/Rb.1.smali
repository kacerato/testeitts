.class public final Lcom/android/tools/r8/internal/Rb;
.super Lcom/android/tools/r8/internal/Pb;
.source "SourceFile"


# instance fields
.field public final b:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pb;-><init>()V

    iput-char p1, p0, Lcom/android/tools/r8/internal/Rb;->b:C

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/Wb;
    .locals 2

    .line 2
    iget-char v0, p0, Lcom/android/tools/r8/internal/Rb;->b:C

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Qb;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Qb;-><init>(C)V

    return-object v1
.end method

.method public final b(C)Z
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/android/tools/r8/internal/Rb;->b:C

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final negate()Ljava/util/function/Predicate;
    .locals 2

    iget-char v0, p0, Lcom/android/tools/r8/internal/Rb;->b:C

    new-instance v1, Lcom/android/tools/r8/internal/Qb;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Qb;-><init>(C)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.isNot(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/android/tools/r8/internal/Rb;->b:C

    invoke-static {v1}, Lcom/android/tools/r8/internal/Wb;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
