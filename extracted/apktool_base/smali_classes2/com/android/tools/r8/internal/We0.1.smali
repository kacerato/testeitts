.class public final Lcom/android/tools/r8/internal/We0;
.super Lcom/android/tools/r8/internal/VB;
.source "SourceFile"


# static fields
.field public static final l:Lcom/android/tools/r8/internal/We0;


# instance fields
.field public final transient f:[Lcom/android/tools/r8/internal/qC;

.field public final transient g:[Lcom/android/tools/r8/internal/qC;

.field public final transient h:[Ljava/util/Map$Entry;

.field public final transient i:I

.field public final transient j:I

.field public transient k:Lcom/android/tools/r8/internal/Ve0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/We0;

    sget-object v3, Lcom/android/tools/r8/internal/nC;->e:[Ljava/util/Map$Entry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/We0;-><init>([Lcom/android/tools/r8/internal/qC;[Lcom/android/tools/r8/internal/qC;[Ljava/util/Map$Entry;II)V

    sput-object v6, Lcom/android/tools/r8/internal/We0;->l:Lcom/android/tools/r8/internal/We0;

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/internal/qC;[Lcom/android/tools/r8/internal/qC;[Ljava/util/Map$Entry;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/VB;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/We0;->f:[Lcom/android/tools/r8/internal/qC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/We0;->g:[Lcom/android/tools/r8/internal/qC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/We0;->h:[Ljava/util/Map$Entry;

    iput p4, p0, Lcom/android/tools/r8/internal/We0;->i:I

    iput p5, p0, Lcom/android/tools/r8/internal/We0;->j:I

    return-void
.end method


# virtual methods
.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/rC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/We0;->h:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/rC;-><init>(Lcom/android/tools/r8/internal/nC;[Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/We0;->h:[Ljava/util/Map$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/We0;->f:[Lcom/android/tools/r8/internal/qC;

    iget v1, p0, Lcom/android/tools/r8/internal/We0;->i:I

    sget-object v2, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v3

    and-int/2addr v1, v3

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qC;->b()Lcom/android/tools/r8/internal/qC;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/We0;->j:I

    return v0
.end method

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/tC;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tC;-><init>(Lcom/android/tools/r8/internal/nC;)V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lcom/android/tools/r8/internal/VB;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/We0;->l:Lcom/android/tools/r8/internal/We0;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/We0;->k:Lcom/android/tools/r8/internal/Ve0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Ve0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ve0;-><init>(Lcom/android/tools/r8/internal/We0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/We0;->k:Lcom/android/tools/r8/internal/Ve0;

    :cond_1
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/We0;->h:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
