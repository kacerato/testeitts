.class public Lcom/android/tools/r8/graph/O0$b;
.super Lcom/android/tools/r8/graph/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/O0$b;->e:Z

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    .line 2
    iget p2, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->b(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/V0;)V
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lcom/android/tools/r8/graph/V0;->a(Lcom/android/tools/r8/graph/O0$b;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    check-cast p1, Lcom/android/tools/r8/graph/O0$b;

    iget p1, p1, Lcom/android/tools/r8/graph/O0$b;->d:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/O0$b;
    .locals 0

    return-object p0
.end method

.method public final n0()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    add-int/lit8 v0, v0, -0xa

    rem-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public q0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    add-int/lit8 v0, v0, -0xa

    div-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/O0$b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O0$b;->q0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O0$b;->p0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DEFAULT %d (dpc %d, dline %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
