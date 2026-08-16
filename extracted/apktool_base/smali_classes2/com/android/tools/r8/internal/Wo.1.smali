.class abstract Lcom/android/tools/r8/internal/Wo;
.super Lcom/android/tools/r8/internal/un;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/d4;",
        ">",
        "Lcom/android/tools/r8/internal/un;"
    }
.end annotation


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:S

.field public g:Lcom/android/tools/r8/graph/d4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/d4;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/un;-><init>()V

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/Wo;->h:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

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
    iput-short p1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/w8;[Lcom/android/tools/r8/graph/d4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/un;-><init>(Lcom/android/tools/r8/internal/w8;)V

    int-to-short p1, p1

    .line 2
    iput-short p1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    .line 3
    invoke-static {p2}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/w8;)C

    move-result p1

    aget-object p1, p3, p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Wo;)I
    .locals 0

    .line 2
    iget-short p0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/Wo;

    new-instance v0, Lcom/android/tools/r8/internal/s11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/s11;-><init>(Lcom/android/tools/r8/internal/Wo;)V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 3
    iget-short p1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->i0()Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Pq0;)V
.end method

.method public b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 8
    iget-short v0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/u11;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/u11;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/t11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/t11;-><init>(Lcom/android/tools/r8/internal/Wo;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 3
    iget-short v0, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 5
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/t11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/t11;-><init>(Lcom/android/tools/r8/internal/Wo;)V

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo;->g:Lcom/android/tools/r8/graph/d4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lcom/android/tools/r8/internal/Wo;->f:S

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
