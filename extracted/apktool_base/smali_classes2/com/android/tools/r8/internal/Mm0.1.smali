.class public final Lcom/android/tools/r8/internal/Mm0;
.super Lcom/android/tools/r8/internal/Fm0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/Q30;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/Q30;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Fm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/Mm0;->f:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Q30;->e()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/Mm0;->e:Lcom/android/tools/r8/internal/Q30;

    return-void
.end method


# virtual methods
.method public final T()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mm0;->e:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->c()I

    move-result v0

    return v0
.end method

.method public final U()Lcom/android/tools/r8/internal/Q30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mm0;->e:Lcom/android/tools/r8/internal/Q30;

    return-object v0
.end method

.method public final W()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mm0;->e:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q30;->d()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/Mm0;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Mm0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v2, p1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mm0;->e:Lcom/android/tools/r8/internal/Q30;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Mm0;->e:Lcom/android/tools/r8/internal/Q30;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Q30;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mm0;->e:Lcom/android/tools/r8/internal/Q30;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleStatefulFieldValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
