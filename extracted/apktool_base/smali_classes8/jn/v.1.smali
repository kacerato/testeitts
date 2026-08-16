.class public Ljn/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static l:I = 0x10

.field public static m:I = 0x1c

.field public static n:I = 0x14

.field public static final o:I = 0x1

.field public static final p:I = 0x8000

.field public static final q:I = -0x1

.field public static final r:I = 0x1

.field public static final s:I = 0x40

.field public static t:F = 50.0f


# instance fields
.field public final a:Ljn/y;

.field public final b:[F

.field public c:F

.field public d:F

.field public e:I

.field public final f:I

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljn/s;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljn/s;",
            ">;"
        }
    .end annotation
.end field

.field public final i:[Ljn/s;

.field public final j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljn/q;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "maxVertsPerPoly",
            "flags"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljn/v;->z(Ljn/q;)Ljn/y;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljn/v;-><init>(Ljn/y;I)V

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p3, v0, v1}, Ljn/v;->c(Ljn/q;IJ)J

    return-void
.end method

.method public constructor <init>(Ljn/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, p1, v0}, Ljn/v;-><init>(Ljn/y;I)V

    return-void
.end method

.method public constructor <init>(Ljn/y;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "maxVertsPerPoly"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljn/v;->g:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljn/v;->h:Ljava/util/LinkedList;

    .line 7
    iput-object p1, p0, Ljn/v;->a:Ljn/y;

    .line 8
    iget-object v0, p1, Ljn/y;->a:[F

    iput-object v0, p0, Ljn/v;->b:[F

    .line 9
    iget v0, p1, Ljn/y;->b:F

    iput v0, p0, Ljn/v;->c:F

    .line 10
    iget v0, p1, Ljn/y;->c:F

    iput v0, p0, Ljn/v;->d:F

    .line 11
    iget p1, p1, Ljn/y;->d:I

    iput p1, p0, Ljn/v;->e:I

    .line 12
    iput p2, p0, Ljn/v;->j:I

    .line 13
    invoke-static {p1}, Ljn/g;->j(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Ljn/v;->f:I

    .line 14
    iget p1, p0, Ljn/v;->e:I

    new-array p1, p1, [Ljn/s;

    iput-object p1, p0, Ljn/v;->i:[Ljn/s;

    const/4 p1, 0x0

    .line 15
    :goto_0
    iget v0, p0, Ljn/v;->e:I

    if-ge p1, v0, :cond_0

    .line 16
    iget-object v0, p0, Ljn/v;->i:[Ljn/s;

    new-instance v1, Ljn/s;

    invoke-direct {v1, p1}, Ljn/s;-><init>(I)V

    aput-object v1, v0, p1

    .line 17
    iget-object v0, p0, Ljn/v;->i:[Ljn/s;

    aget-object v0, v0, p1

    iput p2, v0, Ljn/s;->b:I

    .line 18
    iget-object v1, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static H([FII)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "va",
            "side"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    add-int/2addr p1, v0

    aget p0, p0, p1

    return p0

    :cond_3
    :goto_1
    aget p0, p0, p1

    return p0
.end method

.method public static synthetic T(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljn/v;->T(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static g([FII[F[FI)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "va",
            "vb",
            "bmin",
            "bmax",
            "side"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_3

    const/4 v2, 0x4

    if-ne p5, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-eq p5, v2, :cond_1

    const/4 v2, 0x6

    if-ne p5, v2, :cond_5

    :cond_1
    aget p5, p0, p1

    aget v2, p0, p2

    cmpg-float v3, p5, v2

    if-gez v3, :cond_2

    aput p5, p3, v0

    add-int/2addr p1, v1

    aget p1, p0, p1

    aput p1, p3, v1

    aget p1, p0, p2

    aput p1, p4, v0

    add-int/2addr p2, v1

    aget p0, p0, p2

    aput p0, p4, v1

    goto :goto_1

    :cond_2
    aput v2, p3, v0

    add-int/2addr p2, v1

    aget p2, p0, p2

    aput p2, p3, v1

    aget p2, p0, p1

    aput p2, p4, v0

    add-int/2addr p1, v1

    aget p0, p0, p1

    aput p0, p4, v1

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 p5, p1, 0x2

    aget v2, p0, p5

    add-int/lit8 v3, p2, 0x2

    aget v4, p0, v3

    cmpg-float v5, v2, v4

    if-gez v5, :cond_4

    aput v2, p3, v0

    add-int/2addr p1, v1

    aget p1, p0, p1

    aput p1, p3, v1

    aget p1, p0, v3

    aput p1, p4, v0

    add-int/2addr p2, v1

    aget p0, p0, p2

    aput p0, p4, v1

    goto :goto_1

    :cond_4
    aput v4, p3, v0

    add-int/2addr p2, v1

    aget p2, p0, p2

    aput p2, p3, v1

    aget p2, p0, p5

    aput p2, p4, v0

    add-int/2addr p1, v1

    aget p0, p0, p1

    aput p0, p4, v1

    :cond_5
    :goto_1
    return-void
.end method

.method public static k(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "mask"
        }
    .end annotation

    const v0, -0x72594cbd

    mul-int/2addr p0, v0

    const v0, -0x27e9c7bf

    mul-int/2addr p1, v0

    add-int/2addr p0, p1

    and-int/2addr p0, p2

    return p0
.end method

.method public static o(J)[I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    sget v0, Ljn/v;->l:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    sget v0, Ljn/v;->m:I

    shl-long v5, v1, v0

    sub-long/2addr v5, v1

    sget v7, Ljn/v;->n:I

    shl-long v8, v1, v7

    sub-long/2addr v8, v1

    add-int/2addr v0, v7

    shr-long v0, p0, v0

    and-long/2addr v0, v3

    long-to-int v0, v0

    shr-long v1, p0, v7

    and-long/2addr v1, v5

    long-to-int v1, v1

    and-long/2addr p0, v8

    long-to-int p0, p0

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static p(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    sget v0, Ljn/v;->n:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    and-long/2addr p0, v3

    long-to-int p0, p0

    return p0
.end method

.method public static q(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    sget v0, Ljn/v;->l:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    sget v0, Ljn/v;->n:I

    sget v1, Ljn/v;->m:I

    add-int/2addr v0, v1

    shr-long/2addr p0, v0

    and-long/2addr p0, v3

    long-to-int p0, p0

    return p0
.end method

.method public static r(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    sget v0, Ljn/v;->m:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    sget v0, Ljn/v;->n:I

    shr-long/2addr p0, v0

    and-long/2addr p0, v3

    long-to-int p0, p0

    return p0
.end method

.method public static s(III)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "it",
            "ip"
        }
    .end annotation

    int-to-long v0, p0

    sget p0, Ljn/v;->n:I

    sget v2, Ljn/v;->m:I

    add-int/2addr v2, p0

    shl-long/2addr v0, v2

    int-to-long v2, p1

    shl-long p0, v2, p0

    or-long/2addr p0, v0

    int-to-long v0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static w(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "triFlags",
            "edgeIndex"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x2

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static z(Ljn/q;)Ljn/y;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    new-instance v0, Ljn/y;

    invoke-direct {v0}, Ljn/y;-><init>()V

    iget-object v1, v0, Ljn/y;->a:[F

    iget-object v2, p0, Ljn/q;->a:Ljn/r;

    iget-object v2, v2, Ljn/r;->s:[F

    invoke-static {v1, v2}, Ljn/g;->w([F[F)V

    iget-object p0, p0, Ljn/q;->a:Ljn/r;

    iget-object v1, p0, Ljn/r;->t:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p0, Ljn/r;->s:[F

    aget v2, v4, v2

    sub-float/2addr v3, v2

    iput v3, v0, Ljn/y;->b:F

    const/4 v2, 0x2

    aget v1, v1, v2

    aget v2, v4, v2

    sub-float/2addr v1, v2

    iput v1, v0, Ljn/y;->c:F

    const/4 v1, 0x1

    iput v1, v0, Ljn/y;->d:I

    iget p0, p0, Ljn/r;->g:I

    iput p0, v0, Ljn/y;->e:I

    return-object v0
.end method


# virtual methods
.method public A(III)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "side"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Ljn/s;",
            ">;"
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    :pswitch_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :pswitch_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :pswitch_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :pswitch_4
    add-int/lit8 p1, p1, -0x1

    :goto_1
    :pswitch_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :pswitch_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :pswitch_7
    add-int/lit8 p1, p1, 0x1

    :goto_2
    invoke-virtual {p0, p1, p2}, Ljn/v;->R(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public B(JJ)Ljn/O;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prevRef",
            "polyRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljn/O<",
            "Ljn/U<",
            "[F[F>;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-string p1, "polyRef = 0"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p3, p4}, Ljn/v;->o(J)[I

    move-result-object p3

    const/4 p4, 0x0

    aget v0, p3, p4

    const/4 v1, 0x1

    aget v2, p3, v1

    const/4 v3, 0x2

    aget p3, p3, v3

    iget v3, p0, Ljn/v;->e:I

    if-lt v2, v3, :cond_1

    const-string p1, "Invalid tile ID > max tiles"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v3, p0, Ljn/v;->i:[Ljn/s;

    aget-object v2, v3, v2

    iget v3, v2, Ljn/s;->b:I

    if-ne v3, v0, :cond_7

    iget-object v0, v2, Ljn/s;->c:Ljn/q;

    iget-object v3, v0, Ljn/q;->a:Ljn/r;

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v3, v3, Ljn/r;->g:I

    if-lt p3, v3, :cond_3

    const-string p1, "Invalid poly ID > poly count"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, v0, Ljn/q;->c:[Ljn/G;

    aget-object p3, v0, p3

    invoke-virtual {p3}, Ljn/G;->b()I

    move-result v0

    if-eq v0, v1, :cond_4

    const-string p1, "Invalid poly type"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, v2, Ljn/s;->d:[I

    iget v3, p3, Ljn/G;->a:I

    aget v0, v0, v3

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    iget-object v3, v2, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljn/p;

    iget v3, v3, Ljn/p;->c:I

    if-nez v3, :cond_5

    iget-object v3, v2, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget-wide v3, v0, Ljn/p;->a:J

    cmp-long p1, v3, p1

    if-eqz p1, :cond_6

    move v5, v1

    move v1, p4

    move p4, v5

    goto :goto_1

    :cond_5
    iget-object v3, v2, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v0, v0, Ljn/p;->b:I

    goto :goto_0

    :cond_6
    :goto_1
    const/4 p1, 0x3

    new-array p2, p1, [F

    new-array v0, p1, [F

    iget-object v3, v2, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->b:[F

    iget-object v4, p3, Ljn/G;->b:[I

    aget p4, v4, p4

    mul-int/2addr p4, p1

    invoke-static {p2, v3, p4}, Ljn/g;->x([F[FI)V

    iget-object p4, v2, Ljn/s;->c:Ljn/q;

    iget-object p4, p4, Ljn/q;->b:[F

    iget-object p3, p3, Ljn/G;->b:[I

    aget p3, p3, v1

    mul-int/2addr p3, p1

    invoke-static {v0, p4, p3}, Ljn/g;->x([F[FI)V

    new-instance p1, Ljn/U;

    invoke-direct {p1, p2, v0}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    const-string p1, "Invalid salt or missing tile header"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public C()Ljn/y;
    .locals 1

    iget-object v0, p0, Ljn/v;->a:Ljn/y;

    return-object v0
.end method

.method public D(J)Ljn/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljn/O<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljn/O;->b()Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->o(J)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    iget v1, p0, Ljn/v;->e:I

    if-lt v0, v1, :cond_1

    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ljn/v;->i:[Ljn/s;

    aget-object v0, v1, v0

    iget v1, v0, Ljn/s;->b:I

    if-ne v1, p2, :cond_4

    iget-object p2, v0, Ljn/s;->c:Ljn/q;

    if-eqz p2, :cond_4

    iget-object v0, p2, Ljn/q;->a:Ljn/r;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Ljn/r;->g:I

    if-lt p1, v0, :cond_3

    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p2, p2, Ljn/q;->c:[Ljn/G;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljn/G;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public E(J)Ljn/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljn/O<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljn/O;->b()Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->o(J)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    iget v1, p0, Ljn/v;->e:I

    if-lt v0, v1, :cond_1

    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ljn/v;->i:[Ljn/s;

    aget-object v0, v1, v0

    iget v1, v0, Ljn/s;->b:I

    if-ne v1, p2, :cond_4

    iget-object p2, v0, Ljn/s;->c:Ljn/q;

    if-eqz p2, :cond_4

    iget-object v0, p2, Ljn/q;->a:Ljn/r;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Ljn/r;->g:I

    if-lt p1, v0, :cond_3

    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p2, p2, Ljn/q;->c:[Ljn/G;

    aget-object p1, p2, p1

    iget p1, p1, Ljn/G;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljn/s;Ljn/G;[F)Ljava/util/Optional;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "poly",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn/s;",
            "Ljn/G;",
            "[F)",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual/range {p2 .. p2}, Ljn/G;->b()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_0
    iget v7, v2, Ljn/G;->a:I

    iget v9, v0, Ljn/v;->j:I

    mul-int/2addr v9, v6

    new-array v9, v9, [F

    iget v10, v2, Ljn/G;->e:I

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_1

    iget-object v12, v1, Ljn/s;->c:Ljn/q;

    iget-object v12, v12, Ljn/q;->b:[F

    iget-object v13, v2, Ljn/G;->b:[I

    aget v13, v13, v11

    mul-int/2addr v13, v6

    mul-int/lit8 v14, v11, 0x3

    invoke-static {v12, v13, v9, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v8

    goto :goto_0

    :cond_1
    invoke-static {v3, v9, v10}, Ljn/g;->p([F[FI)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v9, v1, Ljn/s;->c:Ljn/q;

    iget-object v9, v9, Ljn/q;->d:[Ljn/H;

    if-eqz v9, :cond_7

    aget-object v7, v9, v7

    move v9, v5

    :goto_1
    iget v10, v7, Ljn/H;->d:I

    if-ge v9, v10, :cond_6

    iget v10, v7, Ljn/H;->b:I

    add-int/2addr v10, v9

    mul-int/lit8 v10, v10, 0x4

    new-array v11, v6, [[F

    move v12, v5

    :goto_2
    if-ge v12, v6, :cond_4

    iget-object v13, v1, Ljn/s;->c:Ljn/q;

    iget-object v14, v13, Ljn/q;->f:[I

    add-int v15, v10, v12

    aget v14, v14, v15

    iget v15, v2, Ljn/G;->e:I

    if-ge v14, v15, :cond_3

    iget-object v15, v2, Ljn/G;->b:[I

    aget v14, v15, v14

    mul-int/2addr v14, v6

    iget-object v13, v13, Ljn/q;->b:[F

    aget v15, v13, v14

    add-int/lit8 v16, v14, 0x1

    aget v16, v13, v16

    add-int/2addr v14, v4

    aget v13, v13, v14

    new-array v14, v6, [F

    aput v15, v14, v5

    aput v16, v14, v8

    aput v13, v14, v4

    aput-object v14, v11, v12

    move/from16 v16, v5

    goto :goto_3

    :cond_3
    iget v5, v7, Ljn/H;->a:I

    sub-int/2addr v14, v15

    add-int/2addr v5, v14

    mul-int/2addr v5, v6

    iget-object v13, v13, Ljn/q;->e:[F

    aget v14, v13, v5

    add-int/lit8 v15, v5, 0x1

    aget v15, v13, v15

    add-int/2addr v5, v4

    aget v5, v13, v5

    new-array v13, v6, [F

    const/16 v16, 0x0

    aput v14, v13, v16

    aput v15, v13, v8

    aput v5, v13, v4

    aput-object v13, v11, v12

    :goto_3
    add-int/2addr v12, v8

    move/from16 v5, v16

    goto :goto_2

    :cond_4
    move/from16 v16, v5

    aget-object v5, v11, v16

    aget-object v10, v11, v8

    aget-object v11, v11, v4

    invoke-static {v3, v5, v10, v11}, Ljn/g;->c([F[F[F[F)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_5

    return-object v5

    :cond_5
    add-int/2addr v9, v8

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    move v14, v5

    goto :goto_6

    :cond_7
    new-array v5, v4, [I

    aput v6, v5, v8

    const/4 v7, 0x0

    aput v6, v5, v7

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    aget-object v9, v5, v7

    iget-object v10, v1, Ljn/s;->c:Ljn/q;

    iget-object v10, v10, Ljn/q;->b:[F

    iget-object v11, v2, Ljn/G;->b:[I

    aget v11, v11, v7

    mul-int/lit8 v12, v11, 0x3

    aget v12, v10, v12

    aput v12, v9, v7

    mul-int/lit8 v7, v11, 0x3

    add-int/2addr v7, v8

    aget v7, v10, v7

    aput v7, v9, v8

    mul-int/2addr v11, v6

    add-int/2addr v11, v4

    aget v7, v10, v11

    aput v7, v9, v4

    move v7, v8

    :goto_4
    iget v9, v2, Ljn/G;->e:I

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_a

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v4, :cond_8

    add-int/lit8 v10, v9, 0x1

    aget-object v11, v5, v10

    iget-object v12, v1, Ljn/s;->c:Ljn/q;

    iget-object v12, v12, Ljn/q;->b:[F

    iget-object v13, v2, Ljn/G;->b:[I

    add-int/2addr v9, v7

    aget v9, v13, v9

    mul-int/lit8 v13, v9, 0x3

    aget v13, v12, v13

    const/4 v14, 0x0

    aput v13, v11, v14

    mul-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v8

    aget v13, v12, v13

    aput v13, v11, v8

    mul-int/2addr v9, v6

    add-int/2addr v9, v4

    aget v9, v12, v9

    aput v9, v11, v4

    move v9, v10

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    aget-object v9, v5, v14

    aget-object v10, v5, v8

    aget-object v11, v5, v4

    invoke-static {v3, v9, v10, v11}, Ljn/g;->c([F[F[F[F)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Optional;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_9

    return-object v9

    :cond_9
    add-int/2addr v7, v8

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v0, v1, v2, v3, v14}, Ljn/v;->i(Ljn/s;Ljn/G;[FZ)[F

    move-result-object v1

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public G(Ljn/s;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v0, p1, Ljn/s;->a:I

    iget p1, p1, Ljn/s;->b:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljn/v;->s(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public I(I)Ljn/s;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Ljn/v;->i:[Ljn/s;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public J(J)Ljn/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljn/O<",
            "Ljn/U<",
            "Ljn/s;",
            "Ljn/G;",
            ">;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "ref = 0"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->o(J)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    iget v1, p0, Ljn/v;->e:I

    if-lt v0, v1, :cond_1

    const-string p1, "tile > m_maxTiles"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ljn/v;->i:[Ljn/s;

    aget-object v0, v1, v0

    iget v1, v0, Ljn/s;->b:I

    if-ne v1, p2, :cond_4

    iget-object p2, v0, Ljn/s;->c:Ljn/q;

    iget-object v1, p2, Ljn/q;->a:Ljn/r;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, v1, Ljn/r;->g:I

    if-lt p1, v1, :cond_3

    const-string p1, "poly > polyCount"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v1, Ljn/U;

    iget-object p2, p2, Ljn/q;->c:[Ljn/G;

    aget-object p1, p2, p1

    invoke-direct {v1, v0, p1}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const-string p1, "Invalid salt or header"

    invoke-static {p1}, Ljn/O;->f(Ljava/lang/String;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public K(J)Ljn/U;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljn/U<",
            "Ljn/s;",
            "Ljn/G;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljn/v;->o(J)[I

    move-result-object p1

    const/4 p2, 0x1

    aget p2, p1, p2

    const/4 v0, 0x2

    aget p1, p1, v0

    new-instance v0, Ljn/U;

    iget-object v1, p0, Ljn/v;->i:[Ljn/s;

    aget-object p2, v1, p2

    iget-object v1, p2, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->c:[Ljn/G;

    aget-object p1, v1, p1

    invoke-direct {v0, p2, p1}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public L(III)Ljn/s;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "layer"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljn/v;->O(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/s;

    iget-object v2, v1, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->a:Ljn/r;

    if-eqz v2, :cond_0

    iget v3, v2, Ljn/r;->c:I

    if-ne v3, p1, :cond_0

    iget v3, v2, Ljn/r;->d:I

    if-ne v3, p2, :cond_0

    iget v2, v2, Ljn/r;->e:I

    if-ne v2, p3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public M(J)Ljn/s;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->r(J)I

    move-result v0

    invoke-static {p1, p2}, Ljn/v;->q(J)I

    move-result p1

    iget p2, p0, Ljn/v;->e:I

    if-lt v0, p2, :cond_1

    return-object v1

    :cond_1
    iget-object p2, p0, Ljn/v;->i:[Ljn/s;

    aget-object p2, p2, v0

    iget v0, p2, Ljn/s;->b:I

    if-eq v0, p1, :cond_2

    return-object v1

    :cond_2
    return-object p2
.end method

.method public N()I
    .locals 1

    iget v0, p0, Ljn/v;->k:I

    return v0
.end method

.method public final O(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljn/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljn/v;->g:Ljava/util/Map;

    iget v1, p0, Ljn/v;->f:I

    invoke-static {p1, p2, v1}, Ljn/v;->k(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Ljn/u;

    invoke-direct {p2}, Ljn/u;-><init>()V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public P(Ljn/s;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v0, p1, Ljn/s;->b:I

    iget p1, p1, Ljn/s;->a:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ljn/v;->s(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(III)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "layer"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ljn/v;->L(III)Ljn/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljn/v;->P(Ljn/s;)J

    move-result-wide p1

    return-wide p1
.end method

.method public R(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljn/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljn/v;->O(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    iget-object v3, v2, Ljn/s;->c:Ljn/q;

    iget-object v3, v3, Ljn/q;->a:Ljn/r;

    if-eqz v3, :cond_0

    iget v4, v3, Ljn/r;->c:I

    if-ne v4, p1, :cond_0

    iget v3, v3, Ljn/r;->d:I

    if-ne v3, p2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public S(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->o(J)[I

    move-result-object p1

    aget p2, p1, v1

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v3, 0x2

    aget p1, p1, v3

    iget v3, p0, Ljn/v;->e:I

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Ljn/v;->i:[Ljn/s;

    aget-object v2, v3, v2

    iget v3, v2, Ljn/s;->b:I

    if-ne v3, p2, :cond_4

    iget-object p2, v2, Ljn/s;->c:Ljn/q;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p2, Ljn/q;->a:Ljn/r;

    iget p2, p2, Ljn/r;->g:I

    if-lt p1, p2, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public U([F[F[F[FFF)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "amin",
            "amax",
            "bmin",
            "bmax",
            "px",
            "py"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    add-float/2addr v1, p5

    aget v2, p3, v0

    add-float/2addr v2, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aget v2, p2, v0

    sub-float/2addr v2, p5

    aget v3, p4, v0

    sub-float/2addr v3, p5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p5

    cmpl-float v2, v1, p5

    if-lez v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    aget v3, p2, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aget p2, p2, v0

    aget p1, p1, v0

    sub-float/2addr p2, p1

    div-float/2addr v3, p2

    mul-float/2addr p1, v3

    sub-float/2addr v4, p1

    aget p1, p4, v2

    aget p2, p3, v2

    sub-float/2addr p1, p2

    aget p4, p4, v0

    aget p3, p3, v0

    sub-float/2addr p4, p3

    div-float/2addr p1, p4

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    mul-float p3, v3, v1

    add-float/2addr p3, v4

    mul-float/2addr v3, p5

    add-float/2addr v3, v4

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr p1, p5

    add-float/2addr p1, p2

    sub-float/2addr v1, p3

    sub-float/2addr p1, v3

    mul-float p2, v1, p1

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    return v2

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p6, p2

    mul-float/2addr p6, p6

    mul-float/2addr v1, v1

    cmpg-float p2, v1, p6

    if-lez p2, :cond_3

    mul-float/2addr p1, p1

    cmpg-float p1, p1, p6

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public V(Ljn/s;[F[F)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "qmin",
            "qmax"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn/s;",
            "[F[F)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Ljn/s;->c:Ljn/q;

    iget-object v5, v4, Ljn/q;->g:[Ljn/a;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    iget-object v4, v4, Ljn/q;->a:Ljn/r;

    iget-object v5, v4, Ljn/r;->s:[F

    iget-object v8, v4, Ljn/r;->t:[F

    iget v4, v4, Ljn/r;->u:F

    aget v9, v1, v6

    aget v10, v5, v6

    aget v11, v8, v6

    invoke-static {v9, v10, v11}, Ljn/g;->a(FFF)F

    move-result v9

    aget v10, v5, v6

    sub-float/2addr v9, v10

    aget v10, v1, v7

    aget v11, v5, v7

    aget v12, v8, v7

    invoke-static {v10, v11, v12}, Ljn/g;->a(FFF)F

    move-result v10

    aget v11, v5, v7

    sub-float/2addr v10, v11

    const/4 v11, 0x2

    aget v1, v1, v11

    aget v12, v5, v11

    aget v13, v8, v11

    invoke-static {v1, v12, v13}, Ljn/g;->a(FFF)F

    move-result v1

    aget v12, v5, v11

    sub-float/2addr v1, v12

    aget v12, v2, v6

    aget v13, v5, v6

    aget v14, v8, v6

    invoke-static {v12, v13, v14}, Ljn/g;->a(FFF)F

    move-result v12

    aget v13, v5, v6

    sub-float/2addr v12, v13

    aget v13, v2, v7

    aget v14, v5, v7

    aget v15, v8, v7

    invoke-static {v13, v14, v15}, Ljn/g;->a(FFF)F

    move-result v13

    aget v14, v5, v7

    sub-float/2addr v13, v14

    aget v2, v2, v11

    aget v14, v5, v11

    aget v8, v8, v11

    invoke-static {v2, v14, v8}, Ljn/g;->a(FFF)F

    move-result v2

    aget v5, v5, v11

    sub-float/2addr v2, v5

    mul-float/2addr v9, v4

    float-to-int v5, v9

    const v8, 0x7ffffffe

    and-int/2addr v5, v8

    mul-float/2addr v10, v4

    float-to-int v9, v10

    and-int/2addr v9, v8

    mul-float/2addr v1, v4

    float-to-int v1, v1

    and-int/2addr v1, v8

    filled-new-array {v5, v9, v1}, [I

    move-result-object v1

    mul-float/2addr v12, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v12, v5

    float-to-int v8, v12

    or-int/2addr v8, v7

    mul-float/2addr v13, v4

    add-float/2addr v13, v5

    float-to-int v9, v13

    or-int/2addr v9, v7

    mul-float/2addr v4, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    or-int/2addr v2, v7

    filled-new-array {v8, v9, v2}, [I

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v4

    iget-object v8, v0, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->a:Ljn/r;

    iget v8, v8, Ljn/r;->m:I

    move v9, v6

    :goto_0
    if-ge v9, v8, :cond_4

    iget-object v10, v0, Ljn/s;->c:Ljn/q;

    iget-object v10, v10, Ljn/q;->g:[Ljn/a;

    aget-object v10, v10, v9

    iget-object v11, v10, Ljn/a;->a:[I

    iget-object v12, v10, Ljn/a;->b:[I

    invoke-static {v1, v2, v11, v12}, Ljn/g;->n([I[I[I[I)Z

    move-result v11

    iget v12, v10, Ljn/a;->c:I

    if-ltz v12, :cond_0

    move v13, v7

    goto :goto_1

    :cond_0
    move v13, v6

    :goto_1
    if-eqz v13, :cond_1

    if-eqz v11, :cond_1

    int-to-long v14, v12

    or-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v11, :cond_3

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    iget v10, v10, Ljn/a;->c:I

    neg-int v10, v10

    add-int/2addr v9, v10

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    return-object v3

    :cond_5
    const/4 v4, 0x3

    new-array v5, v4, [F

    new-array v8, v4, [F

    invoke-virtual/range {p0 .. p1}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v9

    move v11, v6

    :goto_3
    iget-object v12, v0, Ljn/s;->c:Ljn/q;

    iget-object v13, v12, Ljn/q;->a:Ljn/r;

    iget v13, v13, Ljn/r;->g:I

    if-ge v11, v13, :cond_9

    iget-object v12, v12, Ljn/q;->c:[Ljn/G;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Ljn/G;->b()I

    move-result v13

    if-ne v13, v7, :cond_6

    goto :goto_5

    :cond_6
    iget-object v13, v12, Ljn/G;->b:[I

    aget v13, v13, v6

    mul-int/2addr v13, v4

    iget-object v14, v0, Ljn/s;->c:Ljn/q;

    iget-object v14, v14, Ljn/q;->b:[F

    invoke-static {v5, v14, v13}, Ljn/g;->x([F[FI)V

    iget-object v14, v0, Ljn/s;->c:Ljn/q;

    iget-object v14, v14, Ljn/q;->b:[F

    invoke-static {v8, v14, v13}, Ljn/g;->x([F[FI)V

    move v13, v7

    :goto_4
    iget v14, v12, Ljn/G;->e:I

    if-ge v13, v14, :cond_7

    iget-object v14, v12, Ljn/G;->b:[I

    aget v14, v14, v13

    mul-int/2addr v14, v4

    iget-object v15, v0, Ljn/s;->c:Ljn/q;

    iget-object v15, v15, Ljn/q;->b:[F

    invoke-static {v5, v15, v14}, Ljn/g;->Q([F[FI)V

    iget-object v15, v0, Ljn/s;->c:Ljn/q;

    iget-object v15, v15, Ljn/q;->b:[F

    invoke-static {v8, v15, v14}, Ljn/g;->P([F[FI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v1, v2, v5, v8}, Ljn/g;->l([F[F[F[F)Z

    move-result v12

    if-eqz v12, :cond_8

    int-to-long v12, v11

    or-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    return-object v3
.end method

.method public W(J)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->r(J)I

    move-result v0

    invoke-static {p1, p2}, Ljn/v;->q(J)I

    move-result p1

    iget p2, p0, Ljn/v;->e:I

    if-ge v0, p2, :cond_7

    iget-object p2, p0, Ljn/v;->i:[Ljn/s;

    aget-object p2, p2, v0

    iget v0, p2, Ljn/s;->b:I

    if-ne v0, p1, :cond_6

    iget-object p1, p2, Ljn/s;->c:Ljn/q;

    iget-object p1, p1, Ljn/q;->a:Ljn/r;

    iget v0, p1, Ljn/r;->c:I

    iget p1, p1, Ljn/r;->d:I

    invoke-virtual {p0, v0, p1}, Ljn/v;->O(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p2, Ljn/s;->c:Ljn/q;

    iget-object p1, p1, Ljn/q;->a:Ljn/r;

    iget v0, p1, Ljn/r;->c:I

    iget p1, p1, Ljn/r;->d:I

    invoke-virtual {p0, v0, p1}, Ljn/v;->R(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/s;

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p2}, Ljn/v;->a0(Ljn/s;Ljn/s;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move v0, p1

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    iget-object v1, p2, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->a:Ljn/r;

    iget v2, v1, Ljn/r;->c:I

    iget v1, v1, Ljn/r;->d:I

    invoke-virtual {p0, v2, v1, v0}, Ljn/v;->A(III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, v2, p2}, Ljn/v;->a0(Ljn/s;Ljn/s;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p2, Ljn/s;->c:Ljn/q;

    iput p1, p2, Ljn/s;->g:I

    iget-object p1, p2, Ljn/s;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, -0x1

    iput p1, p2, Ljn/s;->f:I

    iget p1, p2, Ljn/s;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sget v1, Ljn/v;->l:I

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    iput p1, p2, Ljn/s;->b:I

    if-nez p1, :cond_5

    add-int/2addr p1, v0

    iput p1, p2, Ljn/s;->b:I

    :cond_5
    iget-object p1, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget p1, p0, Ljn/v;->k:I

    sub-int/2addr p1, v0

    iput p1, p0, Ljn/v;->k:I

    invoke-virtual {p0, p2}, Ljn/v;->P(Ljn/s;)J

    move-result-wide p1

    return-wide p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid tile salt"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid tile index"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(Ljn/q;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object p1, p1, Ljn/q;->a:Ljn/r;

    iget v0, p1, Ljn/r;->c:I

    iget v1, p1, Ljn/r;->d:I

    iget p1, p1, Ljn/r;->e:I

    invoke-virtual {p0, v0, v1, p1}, Ljn/v;->Q(III)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljn/v;->W(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Y(JC)Ljn/Q;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "area"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Ljn/Q;->FAILURE:Ljn/Q;

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->o(J)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    iget v1, p0, Ljn/v;->e:I

    if-lt v0, v1, :cond_1

    sget-object p1, Ljn/Q;->FAILURE:Ljn/Q;

    return-object p1

    :cond_1
    iget-object v1, p0, Ljn/v;->i:[Ljn/s;

    aget-object v0, v1, v0

    iget v1, v0, Ljn/s;->b:I

    if-ne v1, p2, :cond_4

    iget-object p2, v0, Ljn/s;->c:Ljn/q;

    if-eqz p2, :cond_4

    iget-object v0, p2, Ljn/q;->a:Ljn/r;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Ljn/r;->g:I

    if-lt p1, v0, :cond_3

    sget-object p1, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    return-object p1

    :cond_3
    iget-object p2, p2, Ljn/q;->c:[Ljn/G;

    aget-object p1, p2, p1

    invoke-virtual {p1, p3}, Ljn/G;->c(I)V

    sget-object p1, Ljn/Q;->SUCCSESS:Ljn/Q;

    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    return-object p1
.end method

.method public Z(JI)Ljn/Q;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "flags"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Ljn/Q;->FAILURE:Ljn/Q;

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljn/v;->o(J)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    iget v1, p0, Ljn/v;->e:I

    if-lt v0, v1, :cond_1

    sget-object p1, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    return-object p1

    :cond_1
    iget-object v1, p0, Ljn/v;->i:[Ljn/s;

    aget-object v0, v1, v0

    iget v1, v0, Ljn/s;->b:I

    if-ne v1, p2, :cond_4

    iget-object p2, v0, Ljn/s;->c:Ljn/q;

    if-eqz p2, :cond_4

    iget-object v0, p2, Ljn/q;->a:Ljn/r;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v0, Ljn/r;->g:I

    if-lt p1, v0, :cond_3

    sget-object p1, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    return-object p1

    :cond_3
    iget-object p2, p2, Ljn/q;->c:[Ljn/G;

    aget-object p1, p2, p1

    iput p3, p1, Ljn/G;->d:I

    sget-object p1, Ljn/Q;->SUCCSESS:Ljn/Q;

    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Ljn/Q;->FAILURE_INVALID_PARAM:Ljn/Q;

    return-object p1
.end method

.method public a0(Ljn/s;Ljn/s;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tile",
            "target"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p2}, Ljn/v;->P(Ljn/s;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljn/v;->r(J)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Ljn/s;->c:Ljn/q;

    iget-object v2, v1, Ljn/q;->a:Ljn/r;

    iget v2, v2, Ljn/r;->g:I

    if-ge v0, v2, :cond_4

    iget-object v1, v1, Ljn/q;->c:[Ljn/G;

    aget-object v1, v1, v0

    iget-object v2, p1, Ljn/s;->d:[I

    iget v3, v1, Ljn/G;->a:I

    aget v2, v2, v3

    const/4 v3, -0x1

    move v4, v3

    :goto_1
    if-eq v2, v3, :cond_3

    iget-object v5, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljn/p;

    iget-wide v5, v5, Ljn/p;->a:J

    invoke-static {v5, v6}, Ljn/v;->r(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljn/p;

    iget v5, v5, Ljn/p;->b:I

    if-ne v4, v3, :cond_1

    iget-object v6, p1, Ljn/s;->d:[I

    iget v7, v1, Ljn/G;->a:I

    aput v5, v6, v7

    goto :goto_2

    :cond_1
    iget-object v6, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljn/p;

    iput v5, v6, Ljn/p;->b:I

    :goto_2
    invoke-virtual {p0, p1, v2}, Ljn/v;->v(Ljn/s;I)V

    move v2, v5

    goto :goto_1

    :cond_2
    iget-object v4, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljn/p;

    iget v4, v4, Ljn/p;->b:I

    move v8, v4

    move v4, v2

    move v2, v8

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public b(Ljn/q;I)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "flags"
        }
    .end annotation

    iget-object v0, p1, Ljn/q;->a:Ljn/r;

    iget v1, v0, Ljn/r;->c:I

    iget v2, v0, Ljn/r;->d:I

    iget v0, v0, Ljn/r;->e:I

    invoke-virtual {p0, v1, v2, v0}, Ljn/v;->L(III)Ljn/s;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljn/v;->b0(Ljn/q;I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Ljn/v;->c(Ljn/q;IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b0(Ljn/q;I)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "flags"
        }
    .end annotation

    iget-object v0, p1, Ljn/q;->a:Ljn/r;

    iget v1, v0, Ljn/r;->c:I

    iget v2, v0, Ljn/r;->d:I

    iget v0, v0, Ljn/r;->e:I

    invoke-virtual {p0, v1, v2, v0}, Ljn/v;->Q(III)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljn/v;->W(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Ljn/v;->c(Ljn/q;IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Ljn/q;IJ)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "flags",
            "lastRef"
        }
    .end annotation

    iget-object v0, p1, Ljn/q;->a:Ljn/r;

    iget v1, v0, Ljn/r;->c:I

    iget v2, v0, Ljn/r;->d:I

    iget v3, v0, Ljn/r;->e:I

    invoke-virtual {p0, v1, v2, v3}, Ljn/v;->L(III)Ljn/s;

    move-result-object v1

    if-nez v1, :cond_9

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_1

    iget-object p3, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljn/s;

    iget p4, p0, Ljn/v;->k:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Ljn/v;->k:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/NavMesh/TilesLimitReachedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not allocate a tile max defined tiles:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Ljn/v;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " used slots:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Ljn/v;->k:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NavMesh/TilesLimitReachedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p3, p4}, Ljn/v;->r(J)I

    move-result v1

    iget v2, p0, Ljn/v;->e:I

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Ljn/v;->i:[Ljn/s;

    aget-object v1, v2, v1

    iget-object v2, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p3, p4}, Ljn/v;->q(J)I

    move-result p3

    iput p3, v1, Ljn/s;->b:I

    move-object p3, v1

    :goto_0
    iput-object p1, p3, Ljn/s;->c:Ljn/q;

    iput p2, p3, Ljn/s;->g:I

    iget-object p2, p3, Ljn/s;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p1, p1, Ljn/q;->c:[Ljn/G;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p3, Ljn/s;->d:[I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    iget p1, v0, Ljn/r;->c:I

    iget p4, v0, Ljn/r;->d:I

    invoke-virtual {p0, p1, p4}, Ljn/v;->O(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Ljn/s;->c:Ljn/q;

    iget-object p4, p1, Ljn/q;->g:[Ljn/a;

    if-eqz p4, :cond_2

    array-length p4, p4

    if-nez p4, :cond_2

    const/4 p4, 0x0

    iput-object p4, p1, Ljn/q;->g:[Ljn/a;

    :cond_2
    invoke-virtual {p0, p3}, Ljn/v;->n(Ljn/s;)V

    invoke-virtual {p0, p3}, Ljn/v;->f(Ljn/s;)V

    invoke-virtual {p0, p3, p3, p2}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    iget p1, v0, Ljn/r;->c:I

    iget p4, v0, Ljn/r;->d:I

    invoke-virtual {p0, p1, p4}, Ljn/v;->R(II)Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    move v1, p4

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p2}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, v2, p3, p2}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p2}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, v2, p3, p2}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move p1, p4

    :goto_3
    const/16 p2, 0x8

    if-ge p1, p2, :cond_6

    iget p2, v0, Ljn/r;->c:I

    iget v1, v0, Ljn/r;->d:I

    invoke-virtual {p0, p2, v1, p1}, Ljn/v;->A(III)Ljava/util/List;

    move-result-object p2

    move v1, p4

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p1}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-static {p1}, Ljn/g;->k(I)I

    move-result v3

    invoke-virtual {p0, v2, p3, v3}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p1}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-static {p1}, Ljn/g;->k(I)I

    move-result v3

    invoke-virtual {p0, v2, p3, v3}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p3}, Ljn/v;->P(Ljn/s;)J

    move-result-wide p1

    return-wide p1

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find tile with ref:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Tile index too high"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Tile already exists"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljn/q;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "flags",
            "lastRef"
        }
    .end annotation

    iget-object v0, p1, Ljn/q;->a:Ljn/r;

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_1

    iget-object p3, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljn/s;

    iget p4, p0, Ljn/v;->k:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Ljn/v;->k:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/NavMesh/TilesLimitReachedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not allocate a tile max defined tiles:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Ljn/v;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " used slots:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Ljn/v;->k:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NavMesh/TilesLimitReachedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p3, p4}, Ljn/v;->r(J)I

    move-result v1

    iget v2, p0, Ljn/v;->e:I

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Ljn/v;->i:[Ljn/s;

    aget-object v1, v2, v1

    iget-object v2, p0, Ljn/v;->h:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p3, p4}, Ljn/v;->q(J)I

    move-result p3

    iput p3, v1, Ljn/s;->b:I

    move-object p3, v1

    :goto_0
    iput-object p1, p3, Ljn/s;->c:Ljn/q;

    iput p2, p3, Ljn/s;->g:I

    iget-object p2, p3, Ljn/s;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p1, p1, Ljn/q;->c:[Ljn/G;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p3, Ljn/s;->d:[I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    iget p1, v0, Ljn/r;->c:I

    iget p4, v0, Ljn/r;->d:I

    invoke-virtual {p0, p1, p4}, Ljn/v;->O(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p3, Ljn/s;->c:Ljn/q;

    iget-object p4, p1, Ljn/q;->g:[Ljn/a;

    if-eqz p4, :cond_2

    array-length p4, p4

    if-nez p4, :cond_2

    const/4 p4, 0x0

    iput-object p4, p1, Ljn/q;->g:[Ljn/a;

    :cond_2
    invoke-virtual {p0, p3}, Ljn/v;->n(Ljn/s;)V

    invoke-virtual {p0, p3}, Ljn/v;->f(Ljn/s;)V

    invoke-virtual {p0, p3, p3, p2}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    iget p1, v0, Ljn/r;->c:I

    iget p4, v0, Ljn/r;->d:I

    invoke-virtual {p0, p1, p4}, Ljn/v;->R(II)Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    move v1, p4

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p2}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, v2, p3, p2}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p2}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, v2, p3, p2}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move p1, p4

    :goto_3
    const/16 p2, 0x8

    if-ge p1, p2, :cond_6

    iget p2, v0, Ljn/r;->c:I

    iget v1, v0, Ljn/r;->d:I

    invoke-virtual {p0, p2, v1, p1}, Ljn/v;->A(III)Ljava/util/List;

    move-result-object p2

    move v1, p4

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p1}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-static {p1}, Ljn/g;->k(I)I

    move-result v3

    invoke-virtual {p0, v2, p3, v3}, Ljn/v;->l(Ljn/s;Ljn/s;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-virtual {p0, p3, v2, p1}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/s;

    invoke-static {p1}, Ljn/g;->k(I)I

    move-result v3

    invoke-virtual {p0, v2, p3, v3}, Ljn/v;->m(Ljn/s;Ljn/s;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not find tile"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Tile index too high"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljn/s;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    iget v0, p1, Ljn/s;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljn/p;

    invoke-direct {v0}, Ljn/p;-><init>()V

    iput v1, v0, Ljn/p;->b:I

    iget-object v1, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    iget-object v1, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/p;

    iget v1, v1, Ljn/p;->b:I

    iput v1, p1, Ljn/s;->f:I

    return v0
.end method

.method public f(Ljn/s;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v5

    move v7, v2

    :goto_0
    iget-object v8, v0, Ljn/s;->c:Ljn/q;

    iget-object v9, v8, Ljn/q;->a:Ljn/r;

    iget v10, v9, Ljn/r;->n:I

    if-ge v7, v10, :cond_3

    iget-object v10, v8, Ljn/q;->h:[Ljn/F;

    aget-object v10, v10, v7

    iget-object v8, v8, Ljn/q;->c:[Ljn/G;

    iget v11, v10, Ljn/F;->c:I

    aget-object v8, v8, v11

    iget v11, v10, Ljn/F;->b:F

    iget v9, v9, Ljn/r;->r:F

    new-array v12, v4, [F

    aput v11, v12, v2

    aput v9, v12, v3

    aput v11, v12, v1

    iget-object v9, v10, Ljn/F;->a:[F

    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v9, v12}, Ljn/v;->u(Ljn/s;[F[F)Ljn/k;

    move-result-object v9

    invoke-virtual {v9}, Ljn/k;->b()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v14, v10, Ljn/F;->a:[F

    invoke-virtual {v9}, Ljn/k;->a()[F

    move-result-object v9

    aget v15, v9, v2

    aget v16, v14, v2

    sub-float v15, v15, v16

    invoke-static {v15}, Ljn/g;->s(F)F

    move-result v15

    aget v16, v9, v1

    aget v14, v14, v1

    sub-float v16, v16, v14

    invoke-static/range {v16 .. v16}, Ljn/g;->s(F)F

    move-result v14

    add-float/2addr v15, v14

    iget v14, v10, Ljn/F;->b:F

    invoke-static {v14}, Ljn/g;->s(F)F

    move-result v14

    cmpl-float v14, v15, v14

    if-lez v14, :cond_2

    goto :goto_1

    :cond_2
    iget-object v14, v0, Ljn/s;->c:Ljn/q;

    iget-object v14, v14, Ljn/q;->b:[F

    iget-object v15, v8, Ljn/G;->b:[I

    aget v15, v15, v2

    mul-int/lit8 v16, v15, 0x3

    aget v17, v9, v2

    aput v17, v14, v16

    mul-int/lit8 v16, v15, 0x3

    add-int/lit8 v16, v16, 0x1

    aget v17, v9, v3

    aput v17, v14, v16

    mul-int/2addr v15, v4

    add-int/2addr v15, v1

    aget v9, v9, v1

    aput v9, v14, v15

    invoke-virtual/range {p0 .. p1}, Ljn/v;->e(Ljn/s;)I

    move-result v9

    iget-object v14, v0, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljn/p;

    iput-wide v12, v14, Ljn/p;->a:J

    iput v2, v14, Ljn/p;->c:I

    const/16 v15, 0xff

    iput v15, v14, Ljn/p;->d:I

    iput v2, v14, Ljn/p;->f:I

    iput v2, v14, Ljn/p;->e:I

    iget-object v1, v0, Ljn/s;->d:[I

    iget v8, v8, Ljn/G;->a:I

    aget v4, v1, v8

    iput v4, v14, Ljn/p;->b:I

    aput v9, v1, v8

    invoke-virtual/range {p0 .. p1}, Ljn/v;->e(Ljn/s;)I

    move-result v1

    invoke-static {v12, v13}, Ljn/v;->p(J)I

    move-result v4

    iget-object v8, v0, Ljn/s;->c:Ljn/q;

    iget-object v8, v8, Ljn/q;->c:[Ljn/G;

    aget-object v4, v8, v4

    iget-object v8, v0, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljn/p;

    iget v9, v10, Ljn/F;->c:I

    int-to-long v9, v9

    or-long/2addr v9, v5

    iput-wide v9, v8, Ljn/p;->a:J

    iput v15, v8, Ljn/p;->c:I

    iput v15, v8, Ljn/p;->d:I

    iput v2, v8, Ljn/p;->f:I

    iput v2, v8, Ljn/p;->e:I

    iget-object v9, v0, Ljn/s;->d:[I

    iget v4, v4, Ljn/G;->a:I

    aget v10, v9, v4

    iput v10, v8, Ljn/p;->b:I

    aput v1, v9, v4

    :goto_1
    add-int/2addr v7, v3

    const/4 v1, 0x2

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_3
    move-object/from16 v11, p0

    return-void
.end method

.method public h([F)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Ljn/v;->b:[F

    aget v0, v2, v0

    sub-float/2addr v1, v0

    iget v0, p0, Ljn/v;->c:F

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    aget p1, p1, v1

    iget-object v2, p0, Ljn/v;->b:[F

    aget v1, v2, v1

    sub-float/2addr p1, v1

    iget v1, p0, Ljn/v;->d:F

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p1, v1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public i(Ljn/s;Ljn/G;[FZ)[F
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "poly",
            "pos",
            "onlyBoundary"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v1, Ljn/G;->a:I

    iget-object v4, v0, Ljn/s;->c:Ljn/q;

    iget-object v4, v4, Ljn/q;->d:[Ljn/H;

    const/4 v8, 0x3

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    aget-object v3, v4, v3

    move-object v4, v11

    const/4 v12, 0x0

    :goto_0
    iget v13, v3, Ljn/H;->d:I

    if-ge v12, v13, :cond_8

    iget v13, v3, Ljn/H;->b:I

    add-int/2addr v13, v12

    mul-int/lit8 v13, v13, 0x4

    iget-object v14, v0, Ljn/s;->c:Ljn/q;

    iget-object v14, v14, Ljn/q;->f:[I

    if-eqz p4, :cond_0

    add-int/lit8 v15, v13, 0x3

    aget v15, v14, v15

    and-int/lit8 v15, v15, 0x15

    if-nez v15, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_0
    new-array v15, v8, [[F

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_2

    add-int v17, v13, v6

    aget v5, v14, v17

    iget v7, v1, Ljn/G;->e:I

    if-ge v5, v7, :cond_1

    iget-object v7, v1, Ljn/G;->b:[I

    aget v5, v7, v5

    mul-int/2addr v5, v8

    iget-object v7, v0, Ljn/s;->c:Ljn/q;

    iget-object v7, v7, Ljn/q;->b:[F

    aget v19, v7, v5

    const/16 v17, 0x1

    add-int/lit8 v20, v5, 0x1

    aget v20, v7, v20

    const/16 v18, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, v7, v5

    new-array v7, v8, [F

    const/16 v16, 0x0

    aput v19, v7, v16

    aput v20, v7, v17

    aput v5, v7, v18

    aput-object v7, v15, v6

    move v5, v8

    goto :goto_2

    :cond_1
    const/16 v17, 0x1

    iget v8, v3, Ljn/H;->a:I

    sub-int/2addr v5, v7

    add-int/2addr v8, v5

    const/4 v5, 0x3

    mul-int/2addr v8, v5

    iget-object v7, v0, Ljn/s;->c:Ljn/q;

    iget-object v7, v7, Ljn/q;->e:[F

    aget v19, v7, v8

    add-int/lit8 v20, v8, 0x1

    aget v20, v7, v20

    const/16 v18, 0x2

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    new-array v8, v5, [F

    const/16 v16, 0x0

    aput v19, v8, v16

    aput v20, v8, v17

    aput v7, v8, v18

    aput-object v8, v15, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v8, v5

    goto :goto_1

    :cond_2
    move v5, v8

    const/16 v17, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    :goto_3
    if-ge v6, v5, :cond_5

    aget v8, v14, v5

    invoke-static {v8, v7}, Ljn/v;->w(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    if-nez p4, :cond_4

    aget v5, v14, v7

    aget v8, v14, v6

    if-ge v5, v8, :cond_3

    goto :goto_4

    :cond_3
    aget-object v5, v15, v7

    aget-object v8, v15, v6

    invoke-static {v2, v5, v8}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object v5

    iget-object v8, v5, Ljn/U;->a:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v5, v5, Ljn/U;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v13, v8, v9

    if-gez v13, :cond_4

    aget-object v4, v15, v7

    aget-object v7, v15, v6

    move-object v11, v4

    move v10, v5

    move-object v4, v7

    move v9, v8

    :cond_4
    :goto_4
    const/4 v5, 0x1

    add-int/lit8 v7, v6, 0x1

    move/from16 v17, v5

    const/4 v5, 0x3

    move/from16 v21, v7

    move v7, v6

    move/from16 v6, v21

    goto :goto_3

    :cond_5
    move/from16 v5, v17

    :goto_5
    add-int/2addr v12, v5

    const/4 v8, 0x3

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x2

    const/4 v5, 0x1

    new-array v4, v3, [I

    const/4 v6, 0x3

    aput v6, v4, v5

    const/16 v16, 0x0

    aput v3, v4, v16

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    move-object v4, v11

    move/from16 v6, v16

    :goto_6
    iget v7, v1, Ljn/G;->e:I

    if-ge v6, v7, :cond_8

    add-int/lit8 v8, v6, 0x1

    rem-int v7, v8, v7

    aget-object v12, v3, v16

    iget-object v13, v0, Ljn/s;->c:Ljn/q;

    iget-object v13, v13, Ljn/q;->b:[F

    iget-object v14, v1, Ljn/G;->b:[I

    aget v6, v14, v6

    const/4 v15, 0x3

    mul-int/lit8 v17, v6, 0x3

    aget v17, v13, v17

    aput v17, v12, v16

    mul-int/lit8 v17, v6, 0x3

    add-int/lit8 v17, v17, 0x1

    aget v17, v13, v17

    aput v17, v12, v5

    mul-int/2addr v6, v15

    const/16 v18, 0x2

    add-int/lit8 v6, v6, 0x2

    aget v6, v13, v6

    aput v6, v12, v18

    aget-object v6, v3, v5

    aget v7, v14, v7

    mul-int/lit8 v14, v7, 0x3

    aget v14, v13, v14

    const/16 v16, 0x0

    aput v14, v6, v16

    mul-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v5

    aget v14, v13, v14

    aput v14, v6, v5

    mul-int/2addr v7, v15

    add-int/lit8 v7, v7, 0x2

    aget v5, v13, v7

    aput v5, v6, v18

    invoke-static {v2, v12, v6}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object v5

    iget-object v6, v5, Ljn/U;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v5, v5, Ljn/U;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v7, v6, v9

    if-gez v7, :cond_7

    const/4 v7, 0x0

    aget-object v4, v3, v7

    const/4 v12, 0x1

    aget-object v9, v3, v12

    move-object v11, v4

    move v10, v5

    move-object v4, v9

    move v9, v6

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    const/4 v12, 0x1

    :goto_7
    move/from16 v16, v7

    move v6, v8

    move v5, v12

    goto :goto_6

    :cond_8
    invoke-static {v11, v4, v10}, Ljn/g;->N([F[FF)[F

    move-result-object v0

    return-object v0
.end method

.method public j(J[F)Ljn/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "pos"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Ljn/v;->K(J)Ljn/U;

    move-result-object p1

    iget-object p2, p1, Ljn/U;->a:Ljava/lang/Object;

    check-cast p2, Ljn/s;

    iget-object p1, p1, Ljn/U;->b:Ljava/lang/Object;

    check-cast p1, Ljn/G;

    const/4 v2, 0x3

    new-array v3, v2, [F

    invoke-static {v3, p3}, Ljn/g;->w([F[F)V

    invoke-virtual {p0, p2, p1, p3}, Ljn/v;->F(Ljn/s;Ljn/G;[F)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v3, v6

    new-instance p1, Ljn/b;

    invoke-direct {p1, v6, v3}, Ljn/b;-><init>(Z[F)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljn/G;->b()I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object p1, p1, Ljn/G;->b:[I

    aget v3, p1, v1

    mul-int/2addr v3, v2

    iget-object p2, p2, Ljn/s;->c:Ljn/q;

    iget-object p2, p2, Ljn/q;->b:[F

    aget v4, p2, v3

    add-int/lit8 v5, v3, 0x1

    aget v5, p2, v5

    add-int/2addr v3, v0

    aget v3, p2, v3

    new-array v7, v2, [F

    aput v4, v7, v1

    aput v5, v7, v6

    aput v3, v7, v0

    aget p1, p1, v6

    mul-int/2addr p1, v2

    aget v3, p2, p1

    add-int/lit8 v4, p1, 0x1

    aget v4, p2, v4

    add-int/2addr p1, v0

    aget p1, p2, p1

    new-array p2, v2, [F

    aput v3, p2, v1

    aput v4, p2, v6

    aput p1, p2, v0

    invoke-static {p3, v7, p2}, Ljn/g;->f([F[F[F)Ljn/U;

    move-result-object p1

    new-instance p3, Ljn/b;

    iget-object p1, p1, Ljn/U;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v7, p2, p1}, Ljn/g;->N([F[FF)[F

    move-result-object p1

    invoke-direct {p3, v1, p1}, Ljn/b;-><init>(Z[F)V

    return-object p3

    :cond_1
    new-instance v0, Ljn/b;

    invoke-virtual {p0, p2, p1, p3, v6}, Ljn/v;->i(Ljn/s;Ljn/G;[FZ)[F

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljn/b;-><init>(Z[F)V

    return-object v0
.end method

.method public l(Ljn/s;Ljn/s;I)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "target",
            "side"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Ljn/s;->c:Ljn/q;

    iget-object v5, v4, Ljn/q;->a:Ljn/r;

    iget v5, v5, Ljn/r;->g:I

    if-ge v3, v5, :cond_b

    iget-object v4, v4, Ljn/q;->c:[Ljn/G;

    aget-object v4, v4, v3

    iget v5, v4, Ljn/G;->e:I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_a

    iget-object v7, v4, Ljn/G;->c:[I

    aget v7, v7, v6

    const v8, 0x8000

    and-int/2addr v8, v7

    if-nez v8, :cond_2

    :cond_1
    :goto_2
    move/from16 v17, v3

    goto/16 :goto_8

    :cond_2
    and-int/lit16 v7, v7, 0xff

    const/4 v8, -0x1

    if-eq v1, v8, :cond_3

    if-eq v7, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v8, v4, Ljn/G;->b:[I

    aget v9, v8, v6

    mul-int/lit8 v9, v9, 0x3

    add-int/lit8 v10, v6, 0x1

    rem-int/2addr v10, v5

    aget v8, v8, v10

    mul-int/lit8 v8, v8, 0x3

    iget-object v10, v0, Ljn/s;->c:Ljn/q;

    iget-object v11, v10, Ljn/q;->b:[F

    invoke-static {v7}, Ljn/g;->k(I)I

    move-result v15

    const/16 v16, 0x4

    move-object/from16 v10, p0

    move v12, v9

    move v13, v8

    move-object/from16 v14, p2

    invoke-virtual/range {v10 .. v16}, Ljn/v;->t([FIILjn/s;II)Ljn/V;

    move-result-object v10

    iget-object v11, v10, Ljn/V;->a:Ljava/lang/Object;

    check-cast v11, [J

    iget-object v12, v10, Ljn/V;->b:Ljava/lang/Object;

    check-cast v12, [F

    iget-object v10, v10, Ljn/V;->c:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v10, :cond_1

    invoke-virtual/range {p0 .. p1}, Ljn/v;->e(Ljn/s;)I

    move-result v14

    iget-object v15, v0, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljn/p;

    move/from16 v17, v3

    aget-wide v2, v11, v13

    iput-wide v2, v15, Ljn/p;->a:J

    iput v6, v15, Ljn/p;->c:I

    iput v7, v15, Ljn/p;->d:I

    iget-object v2, v0, Ljn/s;->d:[I

    iget v3, v4, Ljn/G;->a:I

    aget v1, v2, v3

    iput v1, v15, Ljn/p;->b:I

    aput v14, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v7, :cond_7

    const/4 v14, 0x4

    if-ne v7, v14, :cond_4

    goto :goto_5

    :cond_4
    const/4 v14, 0x2

    if-eq v7, v14, :cond_5

    const/4 v14, 0x6

    if-ne v7, v14, :cond_9

    :cond_5
    mul-int/lit8 v14, v13, 0x2

    aget v18, v12, v14

    iget-object v1, v0, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->b:[F

    aget v19, v1, v9

    sub-float v18, v18, v19

    aget v1, v1, v8

    sub-float v20, v1, v19

    div-float v18, v18, v20

    add-int/lit8 v14, v14, 0x1

    aget v14, v12, v14

    sub-float v14, v14, v19

    sub-float v1, v1, v19

    div-float/2addr v14, v1

    cmpl-float v1, v18, v14

    if-lez v1, :cond_6

    move/from16 v1, v18

    goto :goto_4

    :cond_6
    move v1, v14

    move/from16 v14, v18

    :goto_4
    invoke-static {v14, v3, v2}, Ljn/g;->a(FFF)F

    move-result v14

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v14, v14, v18

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iput v14, v15, Ljn/p;->e:I

    invoke-static {v1, v3, v2}, Ljn/g;->a(FFF)F

    move-result v1

    mul-float v1, v1, v18

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v15, Ljn/p;->f:I

    goto :goto_7

    :cond_7
    :goto_5
    mul-int/lit8 v1, v13, 0x2

    aget v14, v12, v1

    iget-object v2, v0, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    add-int/lit8 v19, v9, 0x2

    aget v19, v2, v19

    sub-float v14, v14, v19

    add-int/lit8 v20, v8, 0x2

    aget v2, v2, v20

    sub-float v20, v2, v19

    div-float v14, v14, v20

    add-int/lit8 v1, v1, 0x1

    aget v1, v12, v1

    sub-float v1, v1, v19

    sub-float v2, v2, v19

    div-float/2addr v1, v2

    cmpl-float v2, v14, v1

    if-lez v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v21, v14

    move v14, v1

    move/from16 v1, v21

    goto :goto_6

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_6
    invoke-static {v14, v3, v2}, Ljn/g;->a(FFF)F

    move-result v14

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v14, v14, v18

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iput v14, v15, Ljn/p;->e:I

    invoke-static {v1, v3, v2}, Ljn/g;->a(FFF)F

    move-result v1

    mul-float v1, v1, v18

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v15, Ljn/p;->f:I

    :cond_9
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p3

    move/from16 v3, v17

    goto/16 :goto_3

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p3

    move/from16 v3, v17

    goto/16 :goto_1

    :cond_a
    move/from16 v17, v3

    add-int/lit8 v3, v17, 0x1

    move/from16 v1, p3

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public m(Ljn/s;Ljn/s;I)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "target",
            "side"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    const/16 v10, 0xff

    goto :goto_0

    :cond_1
    invoke-static/range {p3 .. p3}, Ljn/g;->k(I)I

    move-result v10

    :goto_0
    move v11, v5

    :goto_1
    iget-object v12, v2, Ljn/s;->c:Ljn/q;

    iget-object v13, v12, Ljn/q;->a:Ljn/r;

    iget v14, v13, Ljn/r;->n:I

    if-ge v11, v14, :cond_8

    iget-object v14, v12, Ljn/q;->h:[Ljn/F;

    aget-object v14, v14, v11

    iget v15, v14, Ljn/F;->e:I

    if-eq v15, v10, :cond_2

    :goto_2
    move v4, v6

    move/from16 v16, v7

    const/16 v8, 0xff

    goto/16 :goto_6

    :cond_2
    iget-object v12, v12, Ljn/q;->c:[Ljn/G;

    iget v15, v14, Ljn/F;->c:I

    aget-object v12, v12, v15

    iget-object v15, v2, Ljn/s;->d:[I

    iget v8, v12, Ljn/G;->a:I

    aget v8, v15, v8

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    iget v8, v14, Ljn/F;->b:F

    iget v13, v13, Ljn/r;->r:F

    new-array v15, v7, [F

    aput v8, v15, v5

    aput v13, v15, v6

    aput v8, v15, v4

    iget-object v8, v14, Ljn/F;->a:[F

    aget v13, v8, v7

    const/16 v16, 0x4

    aget v16, v8, v16

    const/16 v17, 0x5

    aget v8, v8, v17

    new-array v9, v7, [F

    aput v13, v9, v5

    aput v16, v9, v6

    aput v8, v9, v4

    invoke-virtual {v0, v1, v9, v15}, Ljn/v;->u(Ljn/s;[F[F)Ljn/k;

    move-result-object v8

    invoke-virtual {v8}, Ljn/k;->b()J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v16, v6, v18

    if-nez v16, :cond_4

    :goto_3
    const/4 v4, 0x1

    const/16 v8, 0xff

    const/4 v9, -0x1

    const/16 v16, 0x3

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v8}, Ljn/k;->a()[F

    move-result-object v8

    aget v16, v8, v5

    aget v18, v9, v5

    sub-float v16, v16, v18

    invoke-static/range {v16 .. v16}, Ljn/g;->s(F)F

    move-result v16

    aget v18, v8, v4

    aget v9, v9, v4

    sub-float v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljn/g;->s(F)F

    move-result v9

    add-float v16, v16, v9

    iget v9, v14, Ljn/F;->b:F

    invoke-static {v9}, Ljn/g;->s(F)F

    move-result v9

    cmpl-float v9, v16, v9

    if-lez v9, :cond_5

    goto :goto_3

    :cond_5
    iget-object v9, v2, Ljn/s;->c:Ljn/q;

    iget-object v9, v9, Ljn/q;->b:[F

    iget-object v13, v12, Ljn/G;->b:[I

    const/4 v15, 0x1

    aget v13, v13, v15

    const/16 v16, 0x3

    mul-int/lit8 v18, v13, 0x3

    aget v19, v8, v5

    aput v19, v9, v18

    mul-int/lit8 v18, v13, 0x3

    add-int/lit8 v18, v18, 0x1

    aget v19, v8, v15

    aput v19, v9, v18

    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v4

    aget v8, v8, v4

    aput v8, v9, v13

    invoke-virtual {v0, v2}, Ljn/v;->e(Ljn/s;)I

    move-result v8

    iget-object v9, v2, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljn/p;

    iput-wide v6, v9, Ljn/p;->a:J

    iput v15, v9, Ljn/p;->c:I

    iput v10, v9, Ljn/p;->d:I

    iput v5, v9, Ljn/p;->f:I

    iput v5, v9, Ljn/p;->e:I

    iget-object v13, v2, Ljn/s;->d:[I

    iget v12, v12, Ljn/G;->a:I

    aget v4, v13, v12

    iput v4, v9, Ljn/p;->b:I

    aput v8, v13, v12

    iget v4, v14, Ljn/F;->d:I

    and-int/2addr v4, v15

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Ljn/v;->e(Ljn/s;)I

    move-result v4

    invoke-static {v6, v7}, Ljn/v;->p(J)I

    move-result v6

    iget-object v7, v1, Ljn/s;->c:Ljn/q;

    iget-object v7, v7, Ljn/q;->c:[Ljn/G;

    aget-object v6, v7, v6

    iget-object v7, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljn/p;

    invoke-virtual {v0, v2}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v8

    iget v12, v14, Ljn/F;->c:I

    int-to-long v14, v12

    or-long/2addr v8, v14

    iput-wide v8, v7, Ljn/p;->a:J

    const/16 v8, 0xff

    iput v8, v7, Ljn/p;->c:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_6

    move v12, v8

    goto :goto_4

    :cond_6
    move v12, v3

    :goto_4
    iput v12, v7, Ljn/p;->d:I

    iput v5, v7, Ljn/p;->f:I

    iput v5, v7, Ljn/p;->e:I

    iget-object v12, v1, Ljn/s;->d:[I

    iget v6, v6, Ljn/G;->a:I

    aget v14, v12, v6

    iput v14, v7, Ljn/p;->b:I

    aput v4, v12, v6

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/16 v8, 0xff

    const/4 v9, -0x1

    goto :goto_5

    :goto_6
    add-int/2addr v11, v4

    move v6, v4

    move/from16 v7, v16

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public n(Ljn/s;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p1, Ljn/s;->c:Ljn/q;

    iget-object v5, v4, Ljn/q;->a:Ljn/r;

    iget v5, v5, Ljn/r;->g:I

    if-ge v3, v5, :cond_5

    iget-object v4, v4, Ljn/q;->c:[Ljn/G;

    aget-object v4, v4, v3

    iget-object v5, p1, Ljn/s;->d:[I

    iget v6, v4, Ljn/G;->a:I

    const/4 v7, -0x1

    aput v7, v5, v6

    invoke-virtual {v4}, Ljn/G;->b()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_3

    :cond_1
    iget v5, v4, Ljn/G;->e:I

    sub-int/2addr v5, v6

    :goto_1
    if-ltz v5, :cond_4

    iget-object v7, v4, Ljn/G;->c:[I

    aget v7, v7, v5

    if-eqz v7, :cond_3

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Ljn/v;->e(Ljn/s;)I

    move-result v7

    iget-object v8, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljn/p;

    iget-object v9, v4, Ljn/G;->c:[I

    aget v9, v9, v5

    sub-int/2addr v9, v6

    int-to-long v9, v9

    or-long/2addr v9, v0

    iput-wide v9, v8, Ljn/p;->a:J

    iput v5, v8, Ljn/p;->c:I

    const/16 v9, 0xff

    iput v9, v8, Ljn/p;->d:I

    iput v2, v8, Ljn/p;->f:I

    iput v2, v8, Ljn/p;->e:I

    iget-object v9, p1, Ljn/s;->d:[I

    iget v10, v4, Ljn/G;->a:I

    aget v11, v9, v10

    iput v11, v8, Ljn/p;->b:I

    aput v7, v9, v10

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public t([FIILjn/s;II)Ljn/V;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "va",
            "vb",
            "tile",
            "side",
            "maxcon"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FII",
            "Ljn/s;",
            "II)",
            "Ljn/V<",
            "[J[F",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p4

    move/from16 v7, p5

    move/from16 v8, p6

    const/4 v9, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljn/V;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Ljn/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-array v10, v8, [J

    mul-int/lit8 v1, v8, 0x2

    new-array v11, v1, [F

    const/4 v12, 0x2

    new-array v15, v12, [F

    new-array v14, v12, [F

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v15

    move-object v5, v14

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Ljn/v;->g([FII[F[FI)V

    invoke-static {v1, v2, v7}, Ljn/v;->H([FII)F

    move-result v20

    new-array v13, v12, [F

    new-array v12, v12, [F

    const v1, 0x8000

    or-int v6, v7, v1

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v21

    move v3, v9

    move v4, v3

    :goto_0
    iget-object v1, v0, Ljn/s;->c:Ljn/q;

    iget-object v2, v1, Ljn/q;->a:Ljn/r;

    iget v2, v2, Ljn/r;->g:I

    if-ge v4, v2, :cond_6

    iget-object v1, v1, Ljn/q;->c:[Ljn/G;

    aget-object v2, v1, v4

    iget v1, v2, Ljn/G;->e:I

    :goto_1
    if-ge v9, v1, :cond_5

    move/from16 p1, v3

    iget-object v3, v2, Ljn/G;->c:[I

    aget v3, v3, v9

    if-eq v3, v6, :cond_1

    move/from16 v7, p1

    move/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v26, v6

    move-object/from16 v25, v10

    move-object v2, v13

    move-object v3, v14

    :goto_2
    move v10, v4

    move-object v4, v15

    goto/16 :goto_3

    :cond_1
    iget-object v3, v2, Ljn/G;->b:[I

    aget v16, v3, v9

    move-object/from16 p2, v2

    mul-int/lit8 v2, v16, 0x3

    add-int/lit8 v16, v9, 0x1

    rem-int v16, v16, v1

    aget v3, v3, v16

    mul-int/lit8 v3, v3, 0x3

    move/from16 v16, v1

    iget-object v1, v0, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->b:[F

    invoke-static {v1, v2, v7}, Ljn/v;->H([FII)F

    move-result v1

    sub-float v1, v20, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v17, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v17

    if-lez v1, :cond_2

    move/from16 v7, p1

    move-object/from16 v24, p2

    move/from16 v26, v6

    move-object/from16 v25, v10

    move-object v2, v13

    move-object v3, v14

    move/from16 v23, v16

    goto :goto_2

    :cond_2
    iget-object v1, v0, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->b:[F

    move/from16 v23, v16

    move-object/from16 v24, p2

    move/from16 v7, p1

    move-object/from16 v25, v10

    move v10, v4

    move-object v4, v13

    move-object v5, v12

    move/from16 v26, v6

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Ljn/v;->g([FII[F[FI)V

    iget-object v1, v0, Ljn/s;->c:Ljn/q;

    iget-object v1, v1, Ljn/q;->a:Ljn/r;

    iget v1, v1, Ljn/r;->r:F

    const v18, 0x3c23d70a    # 0.01f

    move-object v2, v13

    move-object/from16 v13, p0

    move-object v3, v14

    move-object v14, v15

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v12

    move/from16 v19, v1

    invoke-virtual/range {v13 .. v19}, Ljn/v;->U([F[F[F[FFF)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move v3, v7

    move v4, v10

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v10, v25

    move/from16 v6, v26

    move/from16 v7, p5

    goto/16 :goto_1

    :cond_3
    if-ge v7, v8, :cond_4

    mul-int/lit8 v1, v7, 0x2

    const/4 v5, 0x0

    aget v6, v4, v5

    aget v9, v2, v5

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v11, v1

    add-int/lit8 v1, v1, 0x1

    aget v6, v3, v5

    aget v9, v12, v5

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v11, v1

    int-to-long v13, v10

    or-long v13, v21, v13

    aput-wide v13, v25, v7

    add-int/lit8 v1, v7, 0x1

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    move v7, v3

    move/from16 v26, v6

    move-object/from16 v25, v10

    move-object v2, v13

    move-object v3, v14

    const/4 v5, 0x0

    move v10, v4

    move-object v4, v15

    :goto_4
    move v1, v7

    :goto_5
    add-int/lit8 v6, v10, 0x1

    move/from16 v7, p5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move v9, v5

    move v4, v6

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v5, p0

    move v3, v1

    goto/16 :goto_0

    :cond_6
    move v7, v3

    move-object/from16 v25, v10

    new-instance v0, Ljn/V;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-direct {v0, v2, v11, v1}, Ljn/V;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public u(Ljn/s;[F[F)Ljn/k;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "center",
            "extents"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p3}, Ljn/g;->W([F[F)[F

    move-result-object v3

    invoke-static/range {p2 .. p3}, Ljn/g;->v([F[F)[F

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Ljn/v;->V(Ljn/s;[F[F)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v8

    move-wide v7, v6

    move v6, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v2}, Ljn/v;->j(J[F)Ljn/b;

    move-result-object v12

    invoke-virtual {v12}, Ljn/b;->b()Z

    move-result v13

    invoke-virtual {v12}, Ljn/b;->a()[F

    move-result-object v12

    invoke-static {v2, v12}, Ljn/g;->W([F[F)[F

    move-result-object v14

    if-eqz v13, :cond_0

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget-object v15, v1, Ljn/s;->c:Ljn/q;

    iget-object v15, v15, Ljn/q;->a:Ljn/r;

    iget v15, v15, Ljn/r;->r:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    cmpl-float v16, v14, v15

    if-lez v16, :cond_1

    mul-float v15, v14, v14

    goto :goto_1

    :cond_0
    invoke-static {v14}, Ljn/g;->L([F)F

    move-result v15

    :cond_1
    :goto_1
    cmpg-float v14, v15, v9

    if-gez v14, :cond_2

    move-wide v7, v10

    move-object v4, v12

    move v6, v13

    move v9, v15

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljn/k;

    invoke-direct {v1, v7, v8, v4, v6}, Ljn/k;-><init>(J[FZ)V

    return-object v1
.end method

.method public final v(Ljn/s;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tile",
            "link"
        }
    .end annotation

    iget-object v0, p1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v1, p1, Ljn/s;->f:I

    iput v1, v0, Ljn/p;->b:I

    iput p2, p1, Ljn/s;->f:I

    return-void
.end method

.method public x()I
    .locals 1

    iget v0, p0, Ljn/v;->e:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Ljn/v;->j:I

    return v0
.end method
