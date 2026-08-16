.class public final Lcom/android/tools/r8/internal/Xe0;
.super Lcom/android/tools/r8/internal/hC;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Xe0;


# instance fields
.field public final transient d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Xe0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Xe0;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    array-length p2, p2

    add-int/2addr p1, p2

    return p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    array-length v0, v0

    return v0
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

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final j(I)Lcom/android/tools/r8/internal/G;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/internal/JK;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/FK;

    move-result-object p1

    return-object p1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/internal/JK;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/FK;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    const/16 v1, 0x510

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
