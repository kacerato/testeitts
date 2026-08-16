.class public final Lcom/android/tools/r8/internal/lS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/xw0;

.field public final c:Lcom/android/tools/r8/graph/j0;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/lS;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/lS;->b:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    iput p2, p0, Lcom/android/tools/r8/internal/lS;->d:I

    iput p3, p0, Lcom/android/tools/r8/internal/lS;->e:I

    iput p4, p0, Lcom/android/tools/r8/internal/lS;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lS;)I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/lS;->e:I

    iget v1, p1, Lcom/android/tools/r8/internal/lS;->e:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/lS;->f:I

    iget p1, p1, Lcom/android/tools/r8/internal/lS;->f:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/lS;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/lS;->a(Lcom/android/tools/r8/internal/lS;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/lS;->c:Lcom/android/tools/r8/graph/j0;

    iget v1, p0, Lcom/android/tools/r8/internal/lS;->d:I

    new-instance v2, Lcom/android/tools/r8/internal/IT;

    iget v3, p0, Lcom/android/tools/r8/internal/lS;->e:I

    iget v4, p0, Lcom/android/tools/r8/internal/lS;->f:I

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/IT;-><init>(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " @ r"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
