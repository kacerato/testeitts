.class public final Lcom/android/tools/r8/internal/i2;
.super Lcom/android/tools/r8/internal/lh;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lh;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 11
    sget-boolean p1, Lcom/android/tools/r8/internal/i2;->l:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    instance-of p1, p1, Lcom/android/tools/r8/internal/uI;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;
    .locals 0

    .line 2
    sget-object p1, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 5
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/eo;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/eo;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/co;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/co;-><init>(II)V

    .line 8
    :goto_0
    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 0

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 0

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final p2()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q2()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
