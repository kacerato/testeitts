.class public final Lcom/android/tools/r8/internal/lb;
.super Lcom/android/tools/r8/internal/sb;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:[Lcom/android/tools/r8/internal/rb;

.field public final d:[Lcom/android/tools/r8/internal/rb;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/sb;-><init>(ILcom/android/tools/r8/internal/sb;)V

    .line 2
    new-array p1, p1, [Lcom/android/tools/r8/internal/rb;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    .line 3
    new-array p1, p2, [Lcom/android/tools/r8/internal/rb;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/B60;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/sb;-><init>(ILcom/android/tools/r8/internal/sb;)V

    .line 5
    sget-boolean v2, Lcom/android/tools/r8/internal/lb;->e:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    array-length p3, p1

    new-array p3, p3, [Lcom/android/tools/r8/internal/rb;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    .line 7
    array-length p3, p2

    new-array p3, p3, [Lcom/android/tools/r8/internal/rb;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    move p3, v0

    .line 8
    :goto_1
    array-length v2, p1

    const-string v3, "NULL"

    if-ge p3, v2, :cond_4

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    aget-object v4, p1, p3

    if-nez v4, :cond_2

    move-object v3, v1

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    new-instance v3, Lcom/android/tools/r8/internal/pb;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    goto :goto_2

    .line 12
    :cond_3
    new-instance v3, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 13
    :goto_2
    aput-object v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 14
    :cond_4
    :goto_3
    array-length p1, p2

    if-ge v0, p1, :cond_8

    .line 15
    sget-boolean p1, Lcom/android/tools/r8/internal/lb;->e:Z

    if-nez p1, :cond_6

    aget-object p1, p2, v0

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    aget-object p3, p2, v0

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    new-instance p3, Lcom/android/tools/r8/internal/pb;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p3, v1}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    goto :goto_5

    .line 19
    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    move-object p3, v1

    .line 20
    :goto_5
    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/lb;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/ob;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    aget-object v0, v0, p1

    if-nez v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/ob;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ob;-><init>(ILcom/android/tools/r8/internal/rb;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/lb;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 6
    aget-object v2, v2, v1

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 8
    aget-object v1, v1, v0

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/ob;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    aget-object v0, v0, p1

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/ob;

    const v2, 0x186a0

    add-int/2addr p1, v2

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/ob;-><init>(ILcom/android/tools/r8/internal/rb;)V

    return-object v1
.end method

.method public final c()Lcom/android/tools/r8/internal/ob;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/lb;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/lb;->b(I)Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stack: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/lb;->d:[Lcom/android/tools/r8/internal/rb;

    array-length v2, v1

    const-string v3, ""

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_0
    const-string v7, ", "

    if-ge v5, v2, :cond_0

    aget-object v8, v1, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move-object v6, v7

    goto :goto_0

    :cond_0
    const-string v1, "] locals: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    array-length v2, v1

    if-ge v4, v2, :cond_2

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lb;->c:[Lcom/android/tools/r8/internal/rb;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v3, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
