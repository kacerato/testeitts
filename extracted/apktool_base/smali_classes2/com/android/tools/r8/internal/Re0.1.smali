.class public final Lcom/android/tools/r8/internal/Re0;
.super Lcom/android/tools/r8/internal/Pe0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Qe0;

.field public final b:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Qe0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pe0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Re0;->a:Lcom/android/tools/r8/internal/Qe0;

    new-instance v0, Ljava/util/BitSet;

    iget p1, p1, Lcom/android/tools/r8/internal/Qe0;->a:I

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Re0;->b:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/Re0;->c:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->a:Lcom/android/tools/r8/internal/Qe0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Qe0;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(IILcom/android/tools/r8/internal/FT;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->a:Lcom/android/tools/r8/internal/Qe0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Qe0;->a(IILcom/android/tools/r8/internal/FT;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/Oe0;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Re0;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->a:Lcom/android/tools/r8/internal/Qe0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Qe0;->a(ILcom/android/tools/r8/internal/Oe0;)Z

    move-result p1

    return p1
.end method

.method public final b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->a:Lcom/android/tools/r8/internal/Qe0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

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

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Re0;->a:Lcom/android/tools/r8/internal/Qe0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Qe0;->f:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
