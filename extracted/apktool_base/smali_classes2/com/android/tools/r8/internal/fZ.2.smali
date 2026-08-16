.class public final Lcom/android/tools/r8/internal/fZ;
.super Lcom/android/tools/r8/internal/Iv0;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/Iv0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 19
    invoke-interface {p3, p2}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of p3, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz p3, :cond_6

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 23
    iget-object p3, p0, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne p3, v0, :cond_1

    .line 24
    iget-wide p2, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, p2

    neg-int p2, p2

    :goto_0
    int-to-long p2, p2

    goto :goto_2

    .line 25
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne p3, v0, :cond_2

    .line 26
    iget-wide p2, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    neg-long p2, p2

    goto :goto_2

    .line 27
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-ne p3, v0, :cond_3

    .line 28
    iget-wide p2, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int p2, p2

    .line 29
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    neg-float p2, p2

    .line 30
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    goto :goto_0

    .line 31
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/fZ;->l:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-ne p3, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_5
    :goto_1
    iget-wide p2, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 33
    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    neg-double p2, p2

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p2

    .line 35
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 37
    :cond_6
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 8
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 9
    sget-object v2, Lcom/android/tools/r8/internal/eZ;->a:[I

    iget-object v3, p0, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/dr;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/dr;-><init>(II)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/er;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/er;-><init>(II)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v2, Lcom/android/tools/r8/internal/gr;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/gr;-><init>(II)V

    goto :goto_0

    .line 14
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/fr;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/fr;-><init>(II)V

    .line 15
    :goto_0
    invoke-virtual {p1, p0, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/va;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/va;-><init>(Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/fZ;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s0()Lcom/android/tools/r8/internal/fZ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v0, p0, Lcom/android/tools/r8/internal/fZ;->k:Lcom/android/tools/r8/internal/T10;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public final s0()Lcom/android/tools/r8/internal/fZ;
    .locals 0

    return-object p0
.end method
