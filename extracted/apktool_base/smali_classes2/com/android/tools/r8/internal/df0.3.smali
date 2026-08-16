.class public final Lcom/android/tools/r8/internal/df0;
.super Lcom/android/tools/r8/internal/EC;
.source "SourceFile"


# static fields
.field public static final k:[Lcom/android/tools/r8/internal/OY;

.field public static final l:Lcom/android/tools/r8/internal/EC;


# instance fields
.field public final transient f:[Lcom/android/tools/r8/internal/OY;

.field public final transient g:[Lcom/android/tools/r8/internal/OY;

.field public final transient h:I

.field public final transient i:I

.field public transient j:Lcom/android/tools/r8/internal/JC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/internal/OY;

    sput-object v0, Lcom/android/tools/r8/internal/df0;->k:[Lcom/android/tools/r8/internal/OY;

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/df0;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/internal/OY;[Lcom/android/tools/r8/internal/OY;IILcom/android/tools/r8/internal/ef0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/EC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/df0;->f:[Lcom/android/tools/r8/internal/OY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/df0;->g:[Lcom/android/tools/r8/internal/OY;

    iput p3, p0, Lcom/android/tools/r8/internal/df0;->h:I

    iput p4, p0, Lcom/android/tools/r8/internal/df0;->i:I

    iput-object p5, p0, Lcom/android/tools/r8/internal/df0;->j:Lcom/android/tools/r8/internal/JC;

    return-void
.end method

.method public static a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;
    .locals 18

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Lcom/android/tools/r8/internal/OY;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/df0;

    sget-object v3, Lcom/android/tools/r8/internal/df0;->k:[Lcom/android/tools/r8/internal/OY;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/df0;-><init>([Lcom/android/tools/r8/internal/OY;[Lcom/android/tools/r8/internal/OY;IILcom/android/tools/r8/internal/ef0;)V

    return-object v0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v3, v4}, Lcom/android/tools/r8/internal/qA;->a(ID)I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    new-array v4, v1, [Lcom/android/tools/r8/internal/OY;

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/tools/r8/internal/qA;->a(I)I

    move-result v17

    and-int v17, v17, v3

    aget-object v6, v4, v17

    if-nez v6, :cond_2

    instance-of v6, v13, Lcom/android/tools/r8/internal/OY;

    if-eqz v6, :cond_1

    instance-of v6, v13, Lcom/android/tools/r8/internal/cf0;

    if-nez v6, :cond_1

    check-cast v13, Lcom/android/tools/r8/internal/OY;

    goto :goto_1

    :cond_1
    new-instance v13, Lcom/android/tools/r8/internal/OY;

    invoke-direct {v13, v15, v14}, Lcom/android/tools/r8/internal/OY;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v13, Lcom/android/tools/r8/internal/cf0;

    invoke-direct {v13, v14, v15, v6}, Lcom/android/tools/r8/internal/cf0;-><init>(Ljava/lang/Object;ILcom/android/tools/r8/internal/OY;)V

    :goto_1
    xor-int v6, v16, v15

    add-int/2addr v9, v6

    add-int/lit8 v6, v10, 0x1

    aput-object v13, v2, v10

    aput-object v13, v4, v17

    int-to-long v13, v15

    add-long/2addr v11, v13

    move v10, v6

    goto :goto_0

    :cond_3
    move v3, v8

    :goto_2
    if-ge v3, v1, :cond_8

    aget-object v5, v4, v3

    move v6, v8

    :goto_3
    if-eqz v5, :cond_7

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x9

    if-le v6, v7, :cond_6

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    new-array v1, v8, [Lcom/android/tools/r8/internal/MY;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/XB;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/MY;

    array-length v1, v0

    new-instance v2, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    const-wide/16 v6, 0x0

    :goto_4
    array-length v1, v0

    if-ge v8, v1, :cond_5

    aget-object v1, v0, v8

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v6, v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/tools/r8/internal/OY;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/tools/r8/internal/OY;

    invoke-direct {v1, v3, v4}, Lcom/android/tools/r8/internal/OY;-><init>(ILjava/lang/Object;)V

    aput-object v1, v0, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/android/tools/r8/internal/UK;

    array-length v3, v0

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {v1, v2, v0, v6, v7}, Lcom/android/tools/r8/internal/UK;-><init>(Ljava/util/HashMap;Lcom/android/tools/r8/internal/hC;J)V

    return-object v1

    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/OY;->c()Lcom/android/tools/r8/internal/OY;

    move-result-object v5

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/df0;

    invoke-static {v11, v12}, Lcom/android/tools/r8/internal/HJ;->a(J)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, v4

    move v4, v5

    move v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/df0;-><init>([Lcom/android/tools/r8/internal/OY;[Lcom/android/tools/r8/internal/OY;IILcom/android/tools/r8/internal/ef0;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/df0;->g:[Lcom/android/tools/r8/internal/OY;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/tools/r8/internal/OY;->b:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p1, v0, Lcom/android/tools/r8/internal/OY;->c:I

    return p1

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/OY;->c()Lcom/android/tools/r8/internal/OY;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lcom/android/tools/r8/internal/QC;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/df0;->j:Lcom/android/tools/r8/internal/JC;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/CC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/df0;->f:[Lcom/android/tools/r8/internal/OY;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/CC;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/EC;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/df0;->j:Lcom/android/tools/r8/internal/JC;

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/df0;->i:I

    return v0
.end method

.method public final j(I)Lcom/android/tools/r8/internal/MY;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/df0;->f:[Lcom/android/tools/r8/internal/OY;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/df0;->h:I

    return v0
.end method
