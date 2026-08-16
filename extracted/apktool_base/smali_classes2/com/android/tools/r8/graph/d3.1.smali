.class public final Lcom/android/tools/r8/graph/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/e3;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/i0;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/f3;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/tools/r8/graph/i0;

    iput-object p1, p0, Lcom/android/tools/r8/graph/d3;->b:Lcom/android/tools/r8/graph/i0;

    iput p3, p0, Lcom/android/tools/r8/graph/d3;->c:I

    iput p4, p0, Lcom/android/tools/r8/graph/d3;->d:I

    iput-object p2, p0, Lcom/android/tools/r8/graph/d3;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/d3;->b:Lcom/android/tools/r8/graph/i0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/graph/d3;->c:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/tools/r8/graph/d3;->d:I

    mul-int/lit8 v0, v0, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/d3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lcom/android/tools/r8/graph/d3;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/d3;->b:Lcom/android/tools/r8/graph/i0;

    iget-object v3, p1, Lcom/android/tools/r8/graph/d3;->b:Lcom/android/tools/r8/graph/i0;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/tools/r8/graph/d3;->c:I

    iget v3, p1, Lcom/android/tools/r8/graph/d3;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/tools/r8/graph/d3;->d:I

    iget p1, p1, Lcom/android/tools/r8/graph/d3;->d:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/d3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/graph/d3;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/d3;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/graph/d3;->e:Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/tools/r8/graph/d3;->e:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/d3;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/d3;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    return v1
.end method
