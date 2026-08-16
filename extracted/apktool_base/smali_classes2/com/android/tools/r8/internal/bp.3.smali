.class public abstract Lcom/android/tools/r8/internal/bp;
.super Lcom/android/tools/r8/internal/un;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final f:B

.field public final g:B

.field public final h:Lcom/android/tools/r8/graph/J2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/android/tools/r8/graph/J2;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/un;-><init>()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/bp;->i:Z

    const/16 v1, 0xf

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p2, :cond_2

    if-gt p2, v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/android/tools/r8/internal/bp;->f:B

    int-to-byte p1, p2

    .line 9
    iput-byte p1, p0, Lcom/android/tools/r8/internal/bp;->g:B

    .line 10
    iput-object p3, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/J2;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/un;-><init>(Lcom/android/tools/r8/internal/w8;)V

    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    .line 2
    iput-byte v0, p0, Lcom/android/tools/r8/internal/bp;->f:B

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    .line 3
    iput-byte p1, p0, Lcom/android/tools/r8/internal/bp;->g:B

    .line 4
    invoke-static {p2}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/w8;)C

    move-result p1

    aget-object p1, p3, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/bp;)I
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/tools/r8/internal/bp;->f:B

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/bp;->b(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/bp;)I
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/android/tools/r8/internal/bp;->g:B

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/a61;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/a61;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/b61;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/b61;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/c61;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/c61;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->c(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/bp;)Lcom/android/tools/r8/graph/J2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/bp;

    new-instance v0, Lcom/android/tools/r8/internal/Z51;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Z51;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 4

    .line 4
    iget-byte p1, p0, Lcom/android/tools/r8/internal/bp;->f:B

    iget-byte v0, p0, Lcom/android/tools/r8/internal/bp;->g:B

    iget-object v1, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->i0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", v"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 4

    .line 5
    iget-byte v0, p0, Lcom/android/tools/r8/internal/bp;->f:B

    iget-byte v1, p0, Lcom/android/tools/r8/internal/bp;->g:B

    iget-object v2, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", v"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Y51;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Y51;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget-byte v1, p0, Lcom/android/tools/r8/internal/bp;->f:B

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/android/tools/r8/internal/bp;->g:B

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
