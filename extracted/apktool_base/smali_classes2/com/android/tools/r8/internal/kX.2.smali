.class public final Lcom/android/tools/r8/internal/kX;
.super Lcom/android/tools/r8/internal/TW;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public final b:Lcom/android/tools/r8/internal/F1;

.field public final c:Lcom/android/tools/r8/internal/xt;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/util/BitSet;

.field public final g:Ljava/util/BitSet;

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;ZZLjava/util/BitSet;Ljava/util/BitSet;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/TW;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kX;->b:Lcom/android/tools/r8/internal/F1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kX;->c:Lcom/android/tools/r8/internal/xt;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/kX;->d:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/kX;->e:Z

    iput-object p5, p0, Lcom/android/tools/r8/internal/kX;->f:Ljava/util/BitSet;

    iput-object p6, p0, Lcom/android/tools/r8/internal/kX;->g:Ljava/util/BitSet;

    iput p7, p0, Lcom/android/tools/r8/internal/kX;->h:I

    iput-boolean p8, p0, Lcom/android/tools/r8/internal/kX;->i:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/WY;)Lcom/android/tools/r8/internal/TW;
    .locals 9

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/jX;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jX;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 3
    iput-object v1, v0, Lcom/android/tools/r8/internal/jX;->a:Lcom/android/tools/r8/internal/F1;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    .line 5
    iput-object v1, v0, Lcom/android/tools/r8/internal/jX;->b:Lcom/android/tools/r8/internal/xt;

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v1

    .line 7
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/jX;->c:Z

    const/16 v1, 0x20

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result v1

    .line 9
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/jX;->d:Z

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    .line 11
    iput-object v1, v0, Lcom/android/tools/r8/internal/jX;->e:Ljava/util/BitSet;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    .line 13
    iput-object v1, v0, Lcom/android/tools/r8/internal/jX;->f:Ljava/util/BitSet;

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WY;->G()Z

    move-result v1

    new-instance v2, Lcom/android/tools/r8/internal/Jg1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Jg1;-><init>(Lcom/android/tools/r8/internal/TW;)V

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/jX;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/jX;

    move-result-object v0

    const/16 v1, 0x10

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/WY;->a(I)Z

    move-result p0

    .line 17
    iput-boolean p0, v0, Lcom/android/tools/r8/internal/jX;->h:Z

    .line 18
    iget-object p0, v0, Lcom/android/tools/r8/internal/jX;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/tools/r8/internal/jX;->a:Lcom/android/tools/r8/internal/F1;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Lcom/android/tools/r8/internal/jX;->g:I

    if-gez p0, :cond_0

    iget-object p0, v0, Lcom/android/tools/r8/internal/jX;->e:Ljava/util/BitSet;

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/tools/r8/internal/jX;->f:Ljava/util/BitSet;

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/android/tools/r8/internal/jX;->c:Z

    if-eqz p0, :cond_0

    iget-boolean p0, v0, Lcom/android/tools/r8/internal/jX;->d:Z

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/android/tools/r8/internal/jX;->h:Z

    if-nez p0, :cond_0

    .line 20
    sget-object p0, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    return-object p0

    .line 21
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/kX;

    iget-object v1, v0, Lcom/android/tools/r8/internal/jX;->a:Lcom/android/tools/r8/internal/F1;

    iget-object v2, v0, Lcom/android/tools/r8/internal/jX;->b:Lcom/android/tools/r8/internal/xt;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/jX;->c:Z

    iget-boolean v4, v0, Lcom/android/tools/r8/internal/jX;->d:Z

    iget-object v5, v0, Lcom/android/tools/r8/internal/jX;->e:Ljava/util/BitSet;

    iget-object v6, v0, Lcom/android/tools/r8/internal/jX;->f:Ljava/util/BitSet;

    iget v7, v0, Lcom/android/tools/r8/internal/jX;->g:I

    iget-boolean v8, v0, Lcom/android/tools/r8/internal/jX;->h:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/internal/kX;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;ZZLjava/util/BitSet;Ljava/util/BitSet;IZ)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/TW;Lcom/android/tools/r8/internal/jX;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result p0

    .line 23
    iput p0, p1, Lcom/android/tools/r8/internal/jX;->g:I

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final B()Lcom/android/tools/r8/internal/t40;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kX;->d:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kX;->e:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/kX;->i:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/kX;->h:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final a()Lcom/android/tools/r8/internal/KV;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;
    .locals 0

    .line 26
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)Z
    .locals 0

    .line 24
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/kX;->d:Z

    return p1
.end method

.method public final e()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final f()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final g()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final h()Lcom/android/tools/r8/internal/r;
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/internal/F1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kX;->b:Lcom/android/tools/r8/internal/F1;

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/F8;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final k()Lcom/android/tools/r8/internal/S7;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final l()Lcom/android/tools/r8/internal/Zc;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final m()Lcom/android/tools/r8/internal/fE;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final n()Lcom/android/tools/r8/internal/xt;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kX;->c:Lcom/android/tools/r8/internal/xt;

    return-object v0
.end method

.method public final o()Lcom/android/tools/r8/internal/Au;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final q()I
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final r()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kX;->f:Ljava/util/BitSet;

    return-object v0
.end method

.method public final s()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kX;->g:Ljava/util/BitSet;

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/kX;->h:I

    return v0
.end method

.method public final u()Lcom/android/tools/r8/internal/Xl0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final v()Ljava/util/BitSet;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final w()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final y()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final z()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
