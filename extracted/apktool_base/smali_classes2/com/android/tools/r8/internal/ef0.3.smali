.class public final Lcom/android/tools/r8/internal/ef0;
.super Lcom/android/tools/r8/internal/JC;
.source "SourceFile"


# static fields
.field public static final i:[Ljava/lang/Object;

.field public static final j:Lcom/android/tools/r8/internal/ef0;


# instance fields
.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I

.field public final transient g:[Ljava/lang/Object;

.field public final transient h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lcom/android/tools/r8/internal/ef0;->i:[Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/ef0;

    invoke-direct {v2, v0, v0, v1, v1}, Lcom/android/tools/r8/internal/ef0;-><init>(II[Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v2, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/JC;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    iput p1, p0, Lcom/android/tools/r8/internal/ef0;->f:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/ef0;->g:[Ljava/lang/Object;

    iput p2, p0, Lcom/android/tools/r8/internal/ef0;->h:I

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    array-length p2, p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/android/tools/r8/internal/ef0;->h:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ef0;->f:I

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/JK;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/FK;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/hC;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->g:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Se0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Se0;-><init>(Lcom/android/tools/r8/internal/XB;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ef0;->e:[Ljava/lang/Object;

    const/16 v1, 0x511

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
