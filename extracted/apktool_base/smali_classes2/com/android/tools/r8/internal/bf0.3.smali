.class public final Lcom/android/tools/r8/internal/bf0;
.super Lcom/android/tools/r8/internal/nC;
.source "SourceFile"


# static fields
.field public static final i:Lcom/android/tools/r8/internal/bf0;


# instance fields
.field public final transient f:[Ljava/util/Map$Entry;

.field public final transient g:[Lcom/android/tools/r8/internal/qC;

.field public final transient h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/bf0;

    sget-object v1, Lcom/android/tools/r8/internal/nC;->e:[Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/bf0;-><init>([Ljava/util/Map$Entry;[Lcom/android/tools/r8/internal/qC;I)V

    sput-object v0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;[Lcom/android/tools/r8/internal/qC;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bf0;->f:[Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/android/tools/r8/internal/bf0;->g:[Lcom/android/tools/r8/internal/qC;

    iput p3, p0, Lcom/android/tools/r8/internal/bf0;->h:I

    return-void
.end method

.method public static a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/nC;
    .locals 1

    .line 7
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/U60;->b(II)V

    if-nez p0, :cond_0

    .line 8
    sget-object p0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-object p0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/bf0;->b(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/nC;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/tools/r8/internal/Ye0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :catch_0
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/TK;->a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/TK;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;)Lcom/android/tools/r8/internal/qC;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 1
    iget-object v1, p2, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/qC;->b()Lcom/android/tools/r8/internal/qC;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/Ye0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ye0;-><init>()V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    const-string p1, "key"

    invoke-static {p1, p2, p0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qC;
    .locals 1

    .line 11
    instance-of v0, p0, Lcom/android/tools/r8/internal/qC;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/tools/r8/internal/qC;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qC;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/qC;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/nC;
    .locals 8

    array-length v0, p1

    if-ne p0, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-array v0, p0, [Lcom/android/tools/r8/internal/qC;

    :goto_0
    const-wide v1, 0x3ff3333333333333L    # 1.2

    invoke-static {p0, v1, v2}, Lcom/android/tools/r8/internal/qA;->a(ID)I

    move-result v1

    new-array v2, v1, [Lcom/android/tools/r8/internal/qC;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_2

    aget-object v3, p1, p0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/Le;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v6

    and-int/2addr v6, v1

    aget-object v7, v2, v6

    invoke-static {v4, v5, v7}, Lcom/android/tools/r8/internal/bf0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;)Lcom/android/tools/r8/internal/qC;

    if-nez v7, :cond_1

    invoke-static {v3, v4, v5}, Lcom/android/tools/r8/internal/bf0;->a(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/qC;

    move-result-object v3

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/android/tools/r8/internal/pC;

    invoke-direct {v3, v4, v5, v7}, Lcom/android/tools/r8/internal/pC;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/qC;)V

    :goto_2
    aput-object v3, v2, v6

    aput-object v3, v0, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/bf0;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/tools/r8/internal/bf0;-><init>([Ljava/util/Map$Entry;[Lcom/android/tools/r8/internal/qC;I)V

    return-object p0
.end method


# virtual methods
.method public final e()Lcom/android/tools/r8/internal/QC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/rC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bf0;->f:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/rC;-><init>(Lcom/android/tools/r8/internal/nC;[Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/bf0;->f:[Ljava/util/Map$Entry;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/bf0;->g:[Lcom/android/tools/r8/internal/qC;

    iget v1, p0, Lcom/android/tools/r8/internal/bf0;->h:I

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

.method public final i()Lcom/android/tools/r8/internal/QC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ze0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ze0;-><init>(Lcom/android/tools/r8/internal/bf0;)V

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/af0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/af0;-><init>(Lcom/android/tools/r8/internal/bf0;)V

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bf0;->f:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
