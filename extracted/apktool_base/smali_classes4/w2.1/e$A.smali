.class public Lw2/e$A;
.super Lw2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "A"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:[C

.field public final e:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;[C[C)V
    .locals 4

    invoke-direct {p0}, Lw2/e;-><init>()V

    iput-object p1, p0, Lw2/e$A;->c:Ljava/lang/String;

    iput-object p2, p0, Lw2/e$A;->d:[C

    iput-object p3, p0, Lw2/e$A;->e:[C

    array-length p1, p2

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Lw2/H;->d(Z)V

    move p1, v1

    :goto_1
    array-length v0, p2

    if-ge p1, v0, :cond_4

    aget-char v0, p2, p1

    aget-char v3, p3, p1

    if-gt v0, v3, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    invoke-static {v0}, Lw2/H;->d(Z)V

    add-int/lit8 v0, p1, 0x1

    array-length v3, p2

    if-ge v0, v3, :cond_3

    aget-char p1, p3, p1

    aget-char v3, p2, v0

    if-ge p1, v3, :cond_2

    move p1, v2

    goto :goto_3

    :cond_2
    move p1, v1

    :goto_3
    invoke-static {p1}, Lw2/H;->d(Z)V

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public B(C)Z
    .locals 3

    iget-object v0, p0, Lw2/e$A;->d:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    not-int v0, v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lw2/e$A;->e:[C

    aget-char v0, v2, v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lw2/e;->e(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw2/e$A;->c:Ljava/lang/String;

    return-object v0
.end method
