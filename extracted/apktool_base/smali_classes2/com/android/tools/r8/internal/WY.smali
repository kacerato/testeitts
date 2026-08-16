.class public Lcom/android/tools/r8/internal/WY;
.super Lcom/android/tools/r8/internal/TW;
.source "SourceFile"


# static fields
.field public static final w:I

.field public static final synthetic x:Z = true


# instance fields
.field public b:Lcom/android/tools/r8/internal/F8;

.field public c:Ljava/util/Set;

.field public d:I

.field public e:Lcom/android/tools/r8/internal/Vf;

.field public f:Lcom/android/tools/r8/internal/F1;

.field public g:Lcom/android/tools/r8/internal/Zc;

.field public h:Z

.field public i:Lcom/android/tools/r8/internal/Au;

.field public j:Lcom/android/tools/r8/internal/xt;

.field public k:Lcom/android/tools/r8/internal/t40;

.field public l:Lcom/android/tools/r8/internal/S7;

.field public m:Lcom/android/tools/r8/internal/gE;

.field public n:Ljava/util/BitSet;

.field public o:Ljava/util/BitSet;

.field public p:Lcom/android/tools/r8/internal/Xl0;

.field public q:Lcom/android/tools/r8/internal/Xl0;

.field public r:I

.field public s:Ljava/util/BitSet;

.field public t:Ljava/util/BitSet;

.field public u:I

.field public v:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    mul-int/lit8 v2, v2, 0x20

    or-int/2addr v1, v2

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    or-int/2addr v1, v2

    invoke-static {v0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    or-int/2addr v0, v1

    sput v0, Lcom/android/tools/r8/internal/WY;->w:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/TW;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/vs0;->a:Lcom/android/tools/r8/internal/vs0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Fj;->c:Lcom/android/tools/r8/internal/ef0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/WY;->d:I

    .line 5
    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->e:Lcom/android/tools/r8/internal/Vf;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/g2;->a:Lcom/android/tools/r8/internal/g2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/WY;->h:Z

    .line 9
    sget-object v1, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    const/4 v1, 0x3

    .line 11
    iput v1, p0, Lcom/android/tools/r8/internal/WY;->v:I

    .line 12
    sget-object v1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 13
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->k:Lcom/android/tools/r8/internal/t40;

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    .line 15
    sget-object v2, Lcom/android/tools/r8/internal/Rt;->a:Lcom/android/tools/r8/internal/Rt;

    iput-object v2, p0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 16
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    .line 17
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    .line 18
    sget-object v2, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    iput-object v2, p0, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    .line 19
    iput-object v2, p0, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    .line 20
    iput v0, p0, Lcom/android/tools/r8/internal/WY;->r:I

    .line 21
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    .line 22
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    .line 23
    sget v0, Lcom/android/tools/r8/internal/WY;->w:I

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WY;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/android/tools/r8/internal/TW;-><init>()V

    .line 25
    sget-object v0, Lcom/android/tools/r8/internal/vs0;->a:Lcom/android/tools/r8/internal/vs0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 26
    sget-object v0, Lcom/android/tools/r8/internal/Fj;->c:Lcom/android/tools/r8/internal/ef0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/android/tools/r8/internal/WY;->d:I

    .line 28
    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->e:Lcom/android/tools/r8/internal/Vf;

    .line 29
    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 30
    sget-object v0, Lcom/android/tools/r8/internal/g2;->a:Lcom/android/tools/r8/internal/g2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/WY;->h:Z

    .line 32
    sget-object v1, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    .line 33
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    const/4 v1, 0x3

    .line 34
    iput v1, p0, Lcom/android/tools/r8/internal/WY;->v:I

    .line 35
    sget-object v1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 36
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->k:Lcom/android/tools/r8/internal/t40;

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    .line 38
    sget-object v2, Lcom/android/tools/r8/internal/Rt;->a:Lcom/android/tools/r8/internal/Rt;

    iput-object v2, p0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 39
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    .line 40
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    .line 41
    sget-object v2, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    iput-object v2, p0, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    .line 42
    iput-object v2, p0, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    .line 43
    iput v0, p0, Lcom/android/tools/r8/internal/WY;->r:I

    .line 44
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    .line 45
    iput-object v1, p0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    .line 46
    sget v0, Lcom/android/tools/r8/internal/WY;->w:I

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    .line 47
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->e:Lcom/android/tools/r8/internal/Vf;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->e:Lcom/android/tools/r8/internal/Vf;

    .line 48
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 49
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->u:I

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    .line 50
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;

    .line 51
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->d:I

    .line 52
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 53
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    .line 54
    iget v0, p1, Lcom/android/tools/r8/internal/WY;->v:I

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->v:I

    .line 55
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    .line 56
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    .line 57
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    .line 58
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    .line 60
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    .line 61
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    .line 62
    iget-object v0, p1, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    .line 63
    iget p1, p1, Lcom/android/tools/r8/internal/WY;->r:I

    iput p1, p0, Lcom/android/tools/r8/internal/WY;->r:I

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Lcom/android/tools/r8/internal/t40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->k:Lcom/android/tools/r8/internal/t40;

    return-object v0
.end method

.method public final C()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method

.method public final G()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public I()V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->v:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/tools/r8/internal/WY;->v:I

    return-void
.end method

.method public final J()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    return-void
.end method

.method public final K()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    return-void
.end method

.method public final L()V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final M()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/g2;->a:Lcom/android/tools/r8/internal/g2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    return-void
.end method

.method public final N()Lcom/android/tools/r8/internal/WY;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    move-result-object v0

    return-object v0
.end method

.method public final O()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    return-void
.end method

.method public final P()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->v:I

    return-void
.end method

.method public final Q()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Fj;->c:Lcom/android/tools/r8/internal/ef0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;

    return-void
.end method

.method public final R()V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final S()V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final T()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Rt;->a:Lcom/android/tools/r8/internal/Rt;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    return-void
.end method

.method public final U()V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final V()V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final W()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    return-void
.end method

.method public final X()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    return-void
.end method

.method public final Y()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    return-void
.end method

.method public final Z()V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    return-void
.end method

.method public final a()Lcom/android/tools/r8/internal/KV;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/WY;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/xt;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->f()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 8
    sget-boolean p2, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez p2, :cond_7

    iget-object p3, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    if-nez p2, :cond_3

    .line 12
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p3

    if-nez p2, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez p2, :cond_7

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    return-object p1

    .line 17
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Au;)Lcom/android/tools/r8/internal/WY;
    .locals 1

    .line 120
    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    instance-of v0, v0, Lcom/android/tools/r8/internal/vc;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    instance-of v0, p1, Lcom/android/tools/r8/internal/vc;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 125
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;
    .locals 1

    .line 160
    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 163
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/gE;->a()Lcom/android/tools/r8/internal/fE;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)V
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v0, v0, Lcom/android/tools/r8/internal/jg;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F8;->a()Lcom/android/tools/r8/internal/jg;

    move-result-object v0

    .line 23
    iget-object v1, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/jg;->a(Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/F8;

    move-result-object v0

    .line 25
    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 27
    iget-object v2, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 28
    iget-object v2, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 30
    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    .line 32
    iget-object v2, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 33
    iget-object v2, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 35
    :cond_4
    iget-object v2, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 36
    iget-object v2, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 37
    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/Zc;->a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/Zc;

    move-result-object v0

    .line 38
    :goto_2
    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    goto :goto_4

    .line 40
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    .line 41
    iget-object v2, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 42
    :cond_6
    iget-object v2, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 43
    iget-object v2, v2, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v3

    if-nez v3, :cond_7

    .line 45
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 46
    :cond_7
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 47
    :cond_8
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    move-result-object v0

    .line 48
    :goto_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    .line 49
    :cond_9
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 50
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    .line 51
    :cond_a
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 52
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 53
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->d0()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 55
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->J()Lcom/android/tools/r8/internal/lm0;

    move-result-object v2

    .line 56
    iget-object v3, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lm0;->j0()J

    move-result-wide v4

    .line 58
    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/G1;->a(J)Lcom/android/tools/r8/internal/Im0;

    move-result-object v2

    .line 59
    :cond_b
    :goto_5
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 60
    :goto_6
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    .line 61
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 62
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 63
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    .line 64
    :cond_c
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 65
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 66
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Au;->a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/Au;

    move-result-object v2

    .line 67
    :goto_7
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    .line 68
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 69
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 70
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    .line 72
    :cond_d
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 73
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 74
    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/gE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/gE;

    move-result-object v2

    .line 75
    :goto_8
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 76
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    .line 77
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/S5;->a(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v2

    .line 78
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    .line 79
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    .line 80
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/S5;->a(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v2

    .line 81
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    .line 82
    iget v2, v0, Lcom/android/tools/r8/internal/WY;->d:I

    .line 83
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 84
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 85
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v3

    if-nez v3, :cond_10

    if-gez v2, :cond_e

    goto :goto_9

    .line 86
    :cond_e
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 87
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 88
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v2, -0x1

    goto :goto_9

    .line 90
    :cond_f
    iget-object v3, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 91
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 92
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result v2

    .line 93
    :cond_10
    :goto_9
    iput v2, v0, Lcom/android/tools/r8/internal/WY;->d:I

    .line 94
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    .line 95
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/S5;->a(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 96
    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 97
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    goto :goto_a

    .line 98
    :cond_11
    iput-object v1, v0, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    .line 99
    :goto_a
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    .line 100
    iget-object v3, p1, Lcom/android/tools/r8/graph/y;->y:Lcom/android/tools/r8/internal/cm0;

    .line 101
    iget-object v4, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 102
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 103
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_b

    .line 104
    :cond_12
    iget-object v4, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 105
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 106
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object v2

    .line 107
    :goto_b
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    .line 108
    iget-object v2, v0, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    .line 109
    iget-object v3, p1, Lcom/android/tools/r8/graph/y;->y:Lcom/android/tools/r8/internal/cm0;

    .line 110
    iget-object v4, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 111
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 112
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_c

    .line 113
    :cond_13
    iget-object v4, p2, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    .line 114
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 115
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object v2

    .line 116
    :goto_c
    iput-object v2, v0, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    .line 117
    iget-object p1, v0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    .line 118
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/S5;->a(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 119
    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_14

    move-object v1, p1

    :cond_14
    iput-object v1, v0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V
    .locals 1

    .line 156
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Y0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 157
    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/pu0;)V

    .line 159
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/pu0;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    .line 166
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 167
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 168
    sget-boolean p3, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez p3, :cond_1

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upper bound type changed from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/F1;)V
    .locals 4

    .line 142
    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 143
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    instance-of v0, v0, Lcom/android/tools/r8/internal/Nm0;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    instance-of v0, p1, Lcom/android/tools/r8/internal/Mm0;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 149
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    .line 150
    iget-object v0, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 151
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v1

    .line 152
    iget-object v1, v1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return single value changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 155
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 138
    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    instance-of v0, p1, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Y0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 141
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/F1;)V

    return-void
.end method

.method public final a(Ljava/util/BitSet;)V
    .locals 2

    .line 127
    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->x()Z

    :cond_0
    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    .line 130
    sget-boolean v1, Lcom/android/tools/r8/internal/O6;->a:Z

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 132
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 134
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    return-void
.end method

.method public final a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)Z
    .locals 1

    .line 18
    iget v0, p0, Lcom/android/tools/r8/internal/WY;->u:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 2

    const/16 v0, 0x8

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final a0()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/WY;->d:I

    return-void
.end method

.method public final b(I)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/WY;->x:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/tools/r8/internal/WY;->d:I

    return-void
.end method

.method public final b0()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/WY;
    .locals 0

    return-object p0
.end method

.method public final c0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lcom/android/tools/r8/internal/r;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->e:Lcom/android/tools/r8/internal/Vf;

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/internal/F1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/F8;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    return-object v0
.end method

.method public final k()Lcom/android/tools/r8/internal/S7;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    return-object v0
.end method

.method public final l()Lcom/android/tools/r8/internal/Zc;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/fE;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gE;->b()Lcom/android/tools/r8/internal/fE;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/android/tools/r8/internal/xt;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    return-object v0
.end method

.method public final o()Lcom/android/tools/r8/internal/Au;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->r:I

    return v0
.end method

.method public final r()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    return-object v0
.end method

.method public final s()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/WY;->d:I

    return v0
.end method

.method public final u()Lcom/android/tools/r8/internal/Xl0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    return-object v0
.end method

.method public final v()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/WY;->h:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v0

    return v0
.end method
