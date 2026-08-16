.class public Lcom/android/tools/r8/shaking/L3;
.super Lcom/android/tools/r8/shaking/v3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/L3$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/android/tools/r8/shaking/O3;

.field public final s:Lcom/android/tools/r8/shaking/M3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;Lcom/android/tools/r8/shaking/O3;Lcom/android/tools/r8/shaking/M3;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/tools/r8/shaking/v3;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V

    iput-object p14, p0, Lcom/android/tools/r8/shaking/L3;->r:Lcom/android/tools/r8/shaking/O3;

    iput-object p15, p0, Lcom/android/tools/r8/shaking/L3;->s:Lcom/android/tools/r8/shaking/M3;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3;->r:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/O3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/android/tools/r8/shaking/M3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3;->s:Lcom/android/tools/r8/shaking/M3;

    return-object v0
.end method

.method public D()Lcom/android/tools/r8/shaking/O3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3;->r:Lcom/android/tools/r8/shaking/O3;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/shaking/L3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/shaking/L3;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3;->r:Lcom/android/tools/r8/shaking/O3;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/L3;->r:Lcom/android/tools/r8/shaking/O3;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3;->s:Lcom/android/tools/r8/shaking/M3;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/L3;->s:Lcom/android/tools/r8/shaking/M3;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/M3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/v3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3;->r:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/L3;->s:Lcom/android/tools/r8/shaking/M3;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/M3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    invoke-super {p0}, Lcom/android/tools/r8/shaking/v3;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3;->s:Lcom/android/tools/r8/shaking/M3;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/M3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
