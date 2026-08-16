.class public final Lcom/android/tools/r8/internal/kf;
.super Lcom/android/tools/r8/internal/gv;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kf;->a:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 7

    .line 29
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v1

    .line 33
    iget-object v3, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 36
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v1, v0, 0x1d

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    iget-object v2, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    goto :goto_0

    .line 40
    :cond_0
    iget v2, v2, Lcom/android/tools/r8/internal/xw0;->b:I

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    goto :goto_1

    .line 43
    :cond_1
    iget p1, p1, Lcom/android/tools/r8/internal/xw0;->b:I

    :goto_1
    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    return p1

    :cond_2
    mul-int/lit8 v1, v0, 0x1d

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    iget-object v2, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    goto :goto_2

    .line 46
    :cond_3
    iget v2, v2, Lcom/android/tools/r8/internal/xw0;->b:I

    :goto_2
    add-int/2addr v2, v1

    add-int/2addr v2, v0

    mul-int/lit8 v0, v2, 0x1d

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    goto :goto_3

    .line 49
    :cond_4
    iget p1, p1, Lcom/android/tools/r8/internal/xw0;->b:I

    :goto_3
    add-int/2addr p1, v0

    add-int/2addr p1, v2

    return p1

    .line 50
    :cond_5
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    mul-int/lit8 v4, v0, 0x1d

    .line 52
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 53
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    goto :goto_5

    .line 54
    :cond_6
    iget v3, v3, Lcom/android/tools/r8/internal/xw0;->b:I

    :goto_5
    add-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_4

    :cond_7
    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p1, Lcom/android/tools/r8/internal/se;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/kf;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 12
    iget-object v3, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 14
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 16
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/kf;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/kf;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 17
    :cond_2
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/kf;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/kf;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1

    .line 18
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/internal/kf;->b:Z

    if-nez v0, :cond_7

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 21
    iget-object v3, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    iget-object v3, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 25
    iget-object v3, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 27
    iget-object v4, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/kf;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return v2
.end method
