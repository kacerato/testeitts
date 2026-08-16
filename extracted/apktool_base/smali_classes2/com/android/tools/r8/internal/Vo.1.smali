.class public abstract Lcom/android/tools/r8/internal/Vo;
.super Lcom/android/tools/r8/internal/un;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public f:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/un;-><init>()V

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/Vo;->g:Z

    if-nez v0, :cond_1

    const/16 v0, -0x8000

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    int-to-short p1, p1

    .line 6
    iput-short p1, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/un;-><init>(Lcom/android/tools/r8/internal/w8;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    int-to-short p1, p1

    .line 3
    iput-short p1, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 2
    iget-short v0, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    check-cast p1, Lcom/android/tools/r8/internal/Vo;

    iget-short p1, p1, Lcom/android/tools/r8/internal/Vo;->f:S

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    iget-short v0, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    add-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":label_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    const/4 p1, 0x0

    const/16 p2, 0x29

    .line 4
    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 5
    iget-short p1, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    int-to-short p1, p1

    .line 6
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 2

    .line 4
    iget-short p1, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 1
    iget-short v0, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-short v0, p0, Lcom/android/tools/r8/internal/Vo;->f:S

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
