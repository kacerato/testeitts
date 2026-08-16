.class public abstract Lcom/android/tools/r8/graph/E;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/graph/E;->b:I

    return-void
.end method


# virtual methods
.method public abstract c(Ljava/lang/Object;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/E;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/E;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E;->k0()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/android/tools/r8/graph/E;->b:I

    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/graph/E;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E;->j(I)V

    :cond_2
    return v0
.end method

.method public final j(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E;->k0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/graph/E;->c:Z

    if-nez v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/android/tools/r8/graph/E;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hash code for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract k0()I
.end method
