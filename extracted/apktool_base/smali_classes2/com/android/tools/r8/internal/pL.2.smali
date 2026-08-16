.class public final Lcom/android/tools/r8/internal/pL;
.super Lcom/android/tools/r8/internal/lL;
.source "SourceFile"


# static fields
.field public static final t:Lcom/android/tools/r8/internal/oL;

.field public static final u:Ljava/lang/Object;


# instance fields
.field public p:[Ljava/lang/Object;

.field public q:I

.field public r:[Ljava/lang/String;

.field public s:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/oL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/pL;->t:Lcom/android/tools/r8/internal/oL;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/pL;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dL;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/pL;->t:Lcom/android/tools/r8/internal/oL;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/lL;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/tools/r8/internal/pL;->r:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final B()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    return-object v2
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/pL;->q:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->r:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/pL;->r:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/pL;->q:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final c(Z)Ljava/lang/String;
    .locals 6

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-ge v1, v2, :cond_4

    .line 12
    iget-object v3, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    aget-object v4, v3, v1

    instance-of v5, v4, Lcom/android/tools/r8/internal/bL;

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    .line 13
    aget-object v3, v3, v1

    instance-of v3, v3, Ljava/util/Iterator;

    if-eqz v3, :cond_3

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    aget v3, v3, v1

    if-eqz p1, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :cond_1
    const/16 v2, 0x5b

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 16
    :cond_2
    instance-of v4, v4, Lcom/android/tools/r8/internal/gL;

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    .line 17
    aget-object v2, v3, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_3

    const/16 v2, 0x2e

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/pL;->r:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/bL;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    iget v2, p0, Lcom/android/tools/r8/internal/pL;->q:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/pL;->u:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/pL;->q:I

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/gL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/AS;

    new-instance v1, Lcom/android/tools/r8/internal/zS;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/zS;-><init>(Lcom/android/tools/r8/internal/AS;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/pL;->r:[Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jL;->a()Z

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public final n()D
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jL;

    iget-object v1, v0, Lcom/android/tools/r8/internal/jL;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jL;->i()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jL;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_1
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/lL;->b:Z

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/GU;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/GU;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_5
    return-wide v0
.end method

.method public final o()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jL;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method public final p()J
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jL;->g()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pL;->r:[Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/pL;->q:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final r()V
    .locals 3

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/tools/r8/internal/nL;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jL;->h()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/tools/r8/internal/pL;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/pL;->p:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/pL;->q:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/android/tools/r8/internal/gL;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    return v0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    return v3

    :cond_4
    instance-of v1, v0, Lcom/android/tools/r8/internal/gL;

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    instance-of v1, v0, Lcom/android/tools/r8/internal/bL;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    instance-of v1, v0, Lcom/android/tools/r8/internal/jL;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/android/tools/r8/internal/jL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/jL;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    return v0

    :cond_7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    return v0

    :cond_8
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    return v0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lcom/android/tools/r8/internal/fL;

    if-eqz v1, :cond_b

    const/16 v0, 0x9

    return v0

    :cond_b
    sget-object v1, Lcom/android/tools/r8/internal/pL;->u:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v1, Lcom/android/tools/r8/internal/GU;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Custom JsonElement subclass "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/GU;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final y()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->u()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->B()Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/pL;->q:I

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/pL;->s:[I

    sub-int/2addr v0, v1

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->c(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pL;->r:[Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/pL;->q:I

    sub-int/2addr v3, v1

    const-string v1, "<skipped>"

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pL;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->h()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pL;->g()V

    return-void
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/pL;->c(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
