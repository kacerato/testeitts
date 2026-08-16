.class public abstract Lcom/android/tools/r8/internal/Zo;
.super Lcom/android/tools/r8/internal/un;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:S

.field public g:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/un;-><init>()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/Zo;->h:Z

    if-nez v0, :cond_1

    const/16 v1, -0x8000

    if-gt v1, p2, :cond_0

    const/16 v1, 0x7fff

    if-gt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    int-to-short p1, p1

    .line 8
    iput-short p1, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    int-to-short p1, p2

    .line 9
    iput-short p1, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/un;-><init>(Lcom/android/tools/r8/internal/w8;)V

    int-to-short p1, p1

    .line 2
    iput-short p1, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    int-to-short p1, p1

    .line 4
    iput-short p1, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Zo;)I
    .locals 0

    .line 2
    iget-short p0, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/v41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v41;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/w41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/w41;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Zo;)I
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    return p0
.end method


# virtual methods
.method public A()[I
    .locals 2

    iget-short v0, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public abstract O()Lcom/android/tools/r8/internal/Mw0;
.end method

.method public abstract P()Lcom/android/tools/r8/internal/NB;
.end method

.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Zo;

    new-instance v0, Lcom/android/tools/r8/internal/x41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/x41;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 25
    iget-short p1, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    iget-short v1, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", :label_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 4
    iget-short p1, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result p2

    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 6
    iget-short p1, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    int-to-short p1, p1

    .line 7
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 6

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zo;->P()Lcom/android/tools/r8/internal/NB;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zo;->O()Lcom/android/tools/r8/internal/Mw0;

    move-result-object v2

    iget-short v3, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    iget-short v4, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    add-int/2addr v4, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v4, v0, :cond_2

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/internal/aB;->D:Z

    if-nez v1, :cond_1

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/VA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->d()V

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v1, v4}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void

    .line 17
    :cond_2
    new-instance v5, Lcom/android/tools/r8/internal/EB;

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lcom/android/tools/r8/internal/EB;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/xw0;)V

    .line 18
    iget-object v1, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/VA;

    iget-object v1, v1, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 19
    iget-object v2, p1, Lcom/android/tools/r8/internal/aB;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VA;

    iget-object v2, v2, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    .line 20
    iget-object v3, p1, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 21
    iget-object v3, p1, Lcom/android/tools/r8/internal/aB;->j:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 22
    iget-object v3, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/internal/aB;->u:Lcom/android/tools/r8/internal/on0;

    invoke-interface {v0, v4}, Lcom/android/tools/r8/internal/on0;->c(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/W5;I)V

    .line 24
    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/sL;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 4
    iget-short p1, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    iget-short v0, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Np;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/x41;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/x41;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-short v0, p0, Lcom/android/tools/r8/internal/Zo;->g:S

    shl-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lcom/android/tools/r8/internal/Zo;->f:S

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
