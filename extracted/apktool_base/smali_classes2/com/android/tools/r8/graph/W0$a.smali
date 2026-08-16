.class public Lcom/android/tools/r8/graph/W0$a;
.super Lcom/android/tools/r8/graph/W0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/W0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final e:I

.field public final f:[Lcom/android/tools/r8/graph/L2;

.field public g:[Lcom/android/tools/r8/graph/O0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/graph/W0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/W0$a;->h:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    iput-object p2, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/W0$a;)I
    .locals 0

    .line 4
    iget p0, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/wb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/wb;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/xb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/xb;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->g(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/yb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/yb;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/W0$a;)[Lcom/android/tools/r8/graph/L2;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/W0$a;)[Lcom/android/tools/r8/graph/O0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/graph/W0$a;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/vb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/vb;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/W0;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->n0()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/W0$a;->a(Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 8
    new-instance v0, Lcom/android/tools/r8/graph/vb;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/vb;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final k0()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/W0$a;
    .locals 0

    return-object p0
.end method

.method public final n0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o0()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length v0, v0

    return v0
.end method

.method public final p0()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    return v0
.end method

.method public final s0()Lcom/android/tools/r8/graph/W0;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/tools/r8/graph/W0$a;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DebugInfo (line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") events: [\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "  END_SEQUENCE\n]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
