.class public abstract Lcom/android/tools/r8/internal/mp;
.super Lcom/android/tools/r8/internal/vn;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final f:S

.field public final g:C

.field public final h:Lcom/android/tools/r8/graph/d4;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/android/tools/r8/graph/d4;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/vn;-><init>()V

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/mp;->i:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const v1, 0xffff

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

    const/16 v0, 0xff

    if-gt p2, v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    int-to-char p1, p1

    .line 10
    iput-char p1, p0, Lcom/android/tools/r8/internal/mp;->g:C

    int-to-short p1, p2

    .line 11
    iput-short p1, p0, Lcom/android/tools/r8/internal/mp;->f:S

    .line 12
    iput-object p3, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;[Lcom/android/tools/r8/graph/d4;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/vn;-><init>(Lcom/android/tools/r8/internal/Op;)V

    int-to-short p1, p1

    .line 2
    iput-short p1, p0, Lcom/android/tools/r8/internal/mp;->f:S

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    int-to-char p1, p1

    .line 4
    aget-object p1, p3, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    and-int/2addr p1, v0

    int-to-char p1, p1

    .line 6
    iput-char p1, p0, Lcom/android/tools/r8/internal/mp;->g:C

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/mp;)I
    .locals 0

    .line 1
    iget-short p0, p0, Lcom/android/tools/r8/internal/mp;->f:S

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ml1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ml1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Nl1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Nl1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Ol1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ol1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/mp;)I
    .locals 0

    .line 1
    iget-char p0, p0, Lcom/android/tools/r8/internal/mp;->g:C

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/mp;)Lcom/android/tools/r8/graph/d4;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/mp;

    new-instance v0, Lcom/android/tools/r8/internal/Ll1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ll1;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{ v"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    iget-char v0, p0, Lcom/android/tools/r8/internal/mp;->g:C

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-short v1, p0, Lcom/android/tools/r8/internal/mp;->f:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 8
    const-string v1, " .. v"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/tools/r8/internal/mp;->f:S

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    const-string v0, " }, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    iget-char v1, p0, Lcom/android/tools/r8/internal/mp;->g:C

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-short v2, p0, Lcom/android/tools/r8/internal/mp;->f:S

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 8
    const-string v2, " .. v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/tools/r8/internal/mp;->f:S

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    :cond_0
    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Ll1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ll1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-char v0, p0, Lcom/android/tools/r8/internal/mp;->g:C

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-short v1, p0, Lcom/android/tools/r8/internal/mp;->f:S

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
