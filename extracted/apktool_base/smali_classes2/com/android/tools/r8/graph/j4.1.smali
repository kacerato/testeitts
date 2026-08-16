.class public final Lcom/android/tools/r8/graph/j4;
.super Lcom/android/tools/r8/internal/ge;
.source "SourceFile"


# static fields
.field public static final synthetic F:Z = true


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public final B:Ljava/util/ArrayList;

.field public final C:Ljava/util/HashSet;

.field public D:Z

.field public E:Lcom/android/tools/r8/synthesis/L;

.field public final c:Lcom/android/tools/r8/origin/Origin;

.field public final d:Lcom/android/tools/r8/graph/V;

.field public final e:Lcom/android/tools/r8/graph/h4;

.field public final f:Ljava/util/function/Consumer;

.field public final g:Lcom/android/tools/r8/graph/n4;

.field public h:Lcom/android/tools/r8/internal/Ib;

.field public i:Z

.field public j:Lcom/android/tools/r8/graph/M2;

.field public k:Lcom/android/tools/r8/graph/Q;

.field public l:Lcom/android/tools/r8/graph/M2;

.field public m:Lcom/android/tools/r8/graph/O2;

.field public n:Lcom/android/tools/r8/graph/L2;

.field public o:Lcom/android/tools/r8/graph/o5;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/ArrayList;

.field public s:Lcom/android/tools/r8/graph/i3;

.field public final t:Ljava/util/ArrayList;

.field public u:Lcom/android/tools/r8/graph/H3$b;

.field public v:Ljava/util/ArrayList;

.field public w:Ljava/util/ArrayList;

.field public final x:Ljava/util/ArrayList;

.field public final y:Ljava/util/ArrayList;

.field public final z:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/V;[BLcom/android/tools/r8/graph/h4;Ljava/util/function/Consumer;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ge;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    new-instance v1, Lcom/android/tools/r8/graph/n4;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/n4;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/graph/j4;->g:Lcom/android/tools/r8/graph/n4;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->o:Lcom/android/tools/r8/graph/o5;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->p:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->q:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->s:Lcom/android/tools/r8/graph/i3;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->t:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->u:Lcom/android/tools/r8/graph/H3$b;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->w:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->x:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->y:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->z:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->A:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->B:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/j4;->C:Ljava/util/HashSet;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/tools/r8/graph/j4;->D:Z

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->E:Lcom/android/tools/r8/synthesis/L;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    iput-object p5, p0, Lcom/android/tools/r8/graph/j4;->f:Ljava/util/function/Consumer;

    iput-object p3, v1, Lcom/android/tools/r8/graph/n4;->a:[B

    iput-object p4, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    return-void
.end method

.method public static synthetic a(JLcom/android/tools/r8/graph/H2;)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static a(Lcom/android/tools/r8/graph/Q;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Interface"

    goto :goto_0

    :cond_0
    const-string p0, "Class"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal class file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/Q;Ljava/lang/String;Lcom/android/tools/r8/internal/Ib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/j4;->a(Lcom/android/tools/r8/graph/Q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p2}, Lcom/android/tools/r8/graph/j4;->a(Lcom/android/tools/r8/internal/Ib;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ib;)Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class file version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/V;)Lcom/android/tools/r8/graph/H2$a;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->T:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne p1, v0, :cond_0

    .line 196
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->g:Lcom/android/tools/r8/graph/n4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/n4;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 198
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 199
    new-instance p1, Lcom/android/tools/r8/graph/le;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/graph/le;-><init>(J)V

    return-object p1

    .line 200
    :cond_0
    new-instance p1, Lcom/android/tools/r8/l2;

    invoke-direct {p1}, Lcom/android/tools/r8/l2;-><init>()V

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v1, Lcom/android/tools/r8/graph/V;->e:Lcom/android/tools/r8/graph/V;

    if-ne v0, v1, :cond_2

    .line 97
    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/o4;->a(ILjava/lang/String;)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    .line 99
    iget v2, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/j4;->d(Ljava/lang/String;)V

    .line 102
    new-instance v7, Lcom/android/tools/r8/graph/l4;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/l4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/android/tools/r8/graph/j4;)V

    return-object v7
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 204
    iget-object v4, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    move-object v1, p3

    move v2, p4

    move v5, p1

    move-object v6, p2

    .line 205
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;ILcom/android/tools/r8/internal/tu0;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v1, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 104
    invoke-static {p1}, Lcom/android/tools/r8/internal/rO;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v0, Lcom/android/tools/r8/internal/nJ$p;->a:Z

    .line 107
    new-instance v0, Lcom/android/tools/r8/internal/C50;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/C50;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v5, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v5, v0, p1}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 110
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/graph/me;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/graph/me;-><init>(Lcom/android/tools/r8/graph/h4;)V

    move-object v1, p1

    move v2, p2

    .line 111
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/internal/rO;->a(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 115
    iget-object v1, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    new-instance v2, Lcom/android/tools/r8/graph/ne;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/ne;-><init>()V

    .line 116
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/graph/o4;->a(Ljava/lang/String;ZLjava/util/List;Lcom/android/tools/r8/graph/h4;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/graph/i4;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;
    .locals 10

    .line 89
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v1, Lcom/android/tools/r8/graph/V;->e:Lcom/android/tools/r8/graph/V;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 90
    sget-object v0, Lcom/android/tools/r8/graph/o4;->d:[B

    const v0, -0x60001

    and-int/2addr v0, p1

    .line 91
    invoke-static {v0}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 93
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/j4;->d(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/android/tools/r8/graph/k4;

    .line 95
    iget-object v3, p0, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    if-ne v3, v1, :cond_1

    move-object v9, v2

    goto :goto_0

    :cond_1
    move-object v9, p5

    :goto_0
    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/graph/k4;-><init>(Lcom/android/tools/r8/graph/j4;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a()V
    .locals 27

    move-object/from16 v1, p0

    .line 117
    iget-object v0, v1, Lcom/android/tools/r8/graph/j4;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 118
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 119
    iget-object v3, v3, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 120
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 121
    sget-object v4, Lcom/android/tools/r8/graph/r0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 122
    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->x5:Lcom/android/tools/r8/graph/M2;

    new-instance v5, Lcom/android/tools/r8/graph/R2$a;

    new-instance v6, Lcom/android/tools/r8/graph/e1;

    sget-object v7, Lcom/android/tools/r8/graph/t0;->d:[Lcom/android/tools/r8/graph/t0;

    .line 123
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/t0;

    invoke-direct {v6, v2, v0}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    invoke-direct {v5, v6}, Lcom/android/tools/r8/graph/R2$a;-><init>(Lcom/android/tools/r8/graph/e1;)V

    .line 124
    invoke-static {v4, v3, v5}, Lcom/android/tools/r8/graph/r0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/R2;)Lcom/android/tools/r8/graph/r0;

    move-result-object v0

    .line 125
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 127
    :cond_0
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1
    iget-object v0, v1, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    const/high16 v2, 0x10000

    .line 130
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 131
    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v1, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    sget-object v5, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-ne v4, v5, :cond_3

    .line 134
    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->f:Lcom/android/tools/r8/graph/y0;

    .line 135
    iget-object v4, v0, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    .line 136
    monitor-enter v4

    .line 137
    :try_start_0
    iget-object v0, v0, Lcom/android/tools/r8/graph/y0;->c:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 138
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 139
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    sget-object v3, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 140
    :cond_4
    const-string v0, "Records are expected to have one record component per instance field."

    .line 141
    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v1, Lcom/android/tools/r8/graph/j4;->y:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_15

    .line 142
    :goto_1
    iget-object v0, v1, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    iget-object v4, v1, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    sget-object v5, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    iget-object v6, v1, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object v7, v1, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    iget-object v8, v1, Lcom/android/tools/r8/graph/j4;->l:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v1, Lcom/android/tools/r8/graph/j4;->m:Lcom/android/tools/r8/graph/O2;

    iget-object v10, v1, Lcom/android/tools/r8/graph/j4;->n:Lcom/android/tools/r8/graph/L2;

    iget-object v11, v1, Lcom/android/tools/r8/graph/j4;->o:Lcom/android/tools/r8/graph/o5;

    iget-object v12, v1, Lcom/android/tools/r8/graph/j4;->p:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/android/tools/r8/graph/j4;->q:Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/tools/r8/graph/j4;->r:Ljava/util/ArrayList;

    iget-object v15, v1, Lcom/android/tools/r8/graph/j4;->s:Lcom/android/tools/r8/graph/i3;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->t:Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->u:Lcom/android/tools/r8/graph/H3$b;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v2, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 143
    invoke-static {v3, v2}, Lcom/android/tools/r8/graph/o4;->a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/u0;

    move-result-object v18

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->x:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 144
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, [Lcom/android/tools/r8/graph/g1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->y:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, [Lcom/android/tools/r8/graph/g1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->A:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 146
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, [Lcom/android/tools/r8/graph/j1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->B:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, [Lcom/android/tools/r8/graph/j1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 148
    iget-object v2, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 149
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 150
    iget-boolean v2, v2, Lcom/android/tools/r8/graph/u1;->D6:Z

    .line 151
    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    .line 152
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j4;->a(Lcom/android/tools/r8/graph/V;)Lcom/android/tools/r8/graph/H2$a;

    move-result-object v24

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->E:Lcom/android/tools/r8/synthesis/L;

    move-object/from16 v23, v3

    iget-boolean v3, v1, Lcom/android/tools/r8/graph/j4;->D:Z

    if-eqz v3, :cond_5

    .line 153
    sget-object v3, Lcom/android/tools/r8/internal/Jb0;->c:Lcom/android/tools/r8/internal/Jb0;

    :goto_2
    move-object/from16 v26, v3

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    goto :goto_2

    .line 154
    :goto_3
    iget-object v3, v0, Lcom/android/tools/r8/graph/V;->a:Lcom/android/tools/r8/graph/U;

    move-object/from16 v0, v16

    move-object/from16 v25, v23

    move/from16 v23, v2

    .line 155
    invoke-interface/range {v3 .. v26}, Lcom/android/tools/r8/graph/U;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/internal/Jb0;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 156
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->d:Lcom/android/tools/r8/graph/V;

    invoke-virtual {v2, v0, v3}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/V;)V

    .line 157
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 158
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 159
    iget-object v3, v2, Lcom/android/tools/r8/graph/e4;->d:Lcom/android/tools/r8/graph/L2;

    if-nez v3, :cond_a

    .line 160
    sget-boolean v3, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :cond_7
    :goto_4
    new-instance v3, Lcom/android/tools/r8/graph/e4;

    .line 162
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v5}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 163
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 164
    :cond_8
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 165
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/e4;

    .line 166
    iget-object v5, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v5, v4, :cond_8

    .line 167
    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_5

    .line 168
    :cond_9
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0

    .line 169
    :cond_a
    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->s:Lcom/android/tools/r8/graph/i3;

    if-eqz v3, :cond_c

    .line 170
    sget-boolean v0, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez v0, :cond_b

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->e()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_b
    new-instance v0, Lcom/android/tools/r8/internal/If;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->s:Lcom/android/tools/r8/graph/i3;

    .line 172
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i3;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/e4;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "A member class cannot also be a (non-member) local class at the same time."

    const-string v5, "This is likely due to invalid EnclosingMethod and InnerClasses attributes:"

    filled-new-array {v4, v5, v3, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v2}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    const/4 v4, 0x0

    .line 175
    invoke-direct {v0, v3, v2, v4}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    throw v0

    .line 177
    :cond_c
    :goto_5
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->s:Lcom/android/tools/r8/graph/i3;

    if-nez v2, :cond_e

    .line 178
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->r1()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->m1()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    sget-object v2, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    .line 179
    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 180
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v2, v2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    iget-object v5, v1, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/internal/Ib;)V

    .line 181
    :cond_e
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-nez v2, :cond_f

    .line 182
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->g:Lcom/android/tools/r8/graph/n4;

    iput-object v0, v2, Lcom/android/tools/r8/graph/n4;->b:Lcom/android/tools/r8/graph/E0;

    .line 183
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 184
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 185
    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    sget-boolean v4, Lcom/android/tools/r8/graph/H2;->C:Z

    if-nez v4, :cond_11

    iget-object v5, v2, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    if-nez v5, :cond_10

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_6
    if-nez v4, :cond_13

    if-eqz v3, :cond_12

    goto :goto_7

    .line 187
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_13
    :goto_7
    iput-object v3, v2, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    .line 189
    iget-boolean v3, v1, Lcom/android/tools/r8/graph/j4;->i:Z

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    .line 190
    iput-boolean v3, v2, Lcom/android/tools/r8/graph/H2;->w:Z

    .line 191
    :cond_14
    iget-object v2, v1, Lcom/android/tools/r8/graph/j4;->f:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 192
    :cond_15
    new-instance v2, Lcom/android/tools/r8/internal/If;

    iget-object v3, v1, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    const/4 v4, 0x0

    .line 193
    invoke-direct {v2, v3, v0, v4}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    throw v2
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ib;->a(I)Lcom/android/tools/r8/internal/Ib;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    .line 35
    sget-object v0, Lcom/android/tools/r8/internal/nJ;->f2:Lcom/android/tools/r8/internal/Ib;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const/high16 p1, 0x20000

    and-int v1, p2, p1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 36
    :goto_0
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/j4;->i:Z

    .line 37
    sget-object p1, Lcom/android/tools/r8/graph/o4;->d:[B

    const p1, -0x60001

    and-int/2addr p1, p2

    .line 38
    invoke-static {p1}, Lcom/android/tools/r8/graph/Q;->e(I)Lcom/android/tools/r8/graph/Q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->j:Lcom/android/tools/r8/graph/M2;

    .line 40
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    const-string v1, "/package-info"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/graph/Q;->a(Lcom/android/tools/r8/internal/Ib;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "java/lang/Object"

    if-nez p5, :cond_2

    .line 41
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/If;

    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    iget-object p4, p0, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    .line 43
    const-string p5, "is missing a super type"

    invoke-static {p2, p3, p4, p5}, Lcom/android/tools/r8/graph/j4;->a(Lcom/android/tools/r8/graph/Q;Ljava/lang/String;Lcom/android/tools/r8/internal/Ib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    .line 44
    invoke-direct {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    throw p1

    .line 46
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 47
    invoke-static {p5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 48
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/If;

    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    iget-object p4, p0, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must extend class java.lang.Object. Found: "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 49
    invoke-static {p2, p3, p4, p5}, Lcom/android/tools/r8/graph/j4;->a(Lcom/android/tools/r8/graph/Q;Ljava/lang/String;Lcom/android/tools/r8/internal/Ib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    .line 50
    invoke-direct {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    throw p1

    .line 52
    :cond_4
    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/graph/j4;->d(Ljava/lang/String;)V

    .line 53
    sget-boolean p2, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez p2, :cond_6

    if-nez p5, :cond_6

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    if-nez p5, :cond_7

    goto :goto_4

    .line 54
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->l:Lcom/android/tools/r8/graph/M2;

    .line 55
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    array-length p2, p6

    if-nez p2, :cond_8

    .line 57
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    goto :goto_6

    .line 58
    :cond_8
    array-length p2, p6

    new-array p2, p2, [Lcom/android/tools/r8/graph/M2;

    .line 59
    :goto_5
    array-length p5, p6

    if-ge v2, p5, :cond_9

    .line 60
    aget-object p5, p6, v2

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    aput-object p5, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 61
    :cond_9
    new-instance p1, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    .line 62
    :goto_6
    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->m:Lcom/android/tools/r8/graph/O2;

    .line 63
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 65
    iget-object p2, p2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 66
    iget-object p5, p2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 67
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 68
    invoke-static {p3, p4, p1, p5, p2}, Lcom/android/tools/r8/graph/H3;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->u:Lcom/android/tools/r8/graph/H3$b;

    return-void

    .line 69
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/If;

    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->k:Lcom/android/tools/r8/graph/Q;

    iget-object p4, p0, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    .line 70
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object p5

    .line 71
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has invalid access flags. Found: "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 72
    invoke-static {p2, p3, p4, p5}, Lcom/android/tools/r8/graph/j4;->a(Lcom/android/tools/r8/graph/Q;Ljava/lang/String;Lcom/android/tools/r8/internal/Ib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    .line 73
    invoke-direct {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    throw p1

    .line 75
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/If;

    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported class file version: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    .line 76
    invoke-direct {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    throw p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 8
    invoke-static {p3, p2, p4}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->h:Lcom/android/tools/r8/internal/Ib;

    sget-object v1, Lcom/android/tools/r8/internal/Ib;->j:Lcom/android/tools/r8/internal/Ib;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\touterTypeInternal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tinnerTypeInternal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tinnerName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Malformed inner-class attribute:"

    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/graph/j4;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v2, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    throw p1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->t:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/e4;

    iget-object v2, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 17
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    const/4 v2, 0x0

    if-nez p3, :cond_1

    move-object p3, v2

    goto :goto_1

    .line 18
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v3, p3}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v2, p4}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    :goto_2
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 3

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/synthesis/K;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/android/tools/r8/synthesis/K;

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/K;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/tools/r8/synthesis/K;->f:Lcom/android/tools/r8/synthesis/S;

    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/synthesis/L;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/K;->d:Lcom/android/tools/r8/synthesis/S$b;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/synthesis/L;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;)V

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_3

    .line 6
    sget-boolean p1, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->E:Lcom/android/tools/r8/synthesis/L;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/tools/r8/graph/j4;->E:Lcom/android/tools/r8/synthesis/L;

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->o:Lcom/android/tools/r8/graph/o5;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/android/tools/r8/graph/o5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/o5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->o:Lcom/android/tools/r8/graph/o5;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->n:Lcom/android/tools/r8/graph/L2;

    :cond_0
    if-eqz p2, :cond_2

    .line 79
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/j4;->v:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Lcom/android/tools/r8/graph/R2$k;

    iget-object v1, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 83
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    iget-object p2, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    .line 84
    iget-object p2, p2, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 85
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 86
    new-instance v1, Lcom/android/tools/r8/graph/r0;

    new-instance v2, Lcom/android/tools/r8/graph/e1;

    iget-object v3, p2, Lcom/android/tools/r8/graph/u1;->N5:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/graph/t0;

    .line 87
    const-string v5, "value"

    invoke-virtual {p2, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-direct {v4, p2, v0}, Lcom/android/tools/r8/graph/t0;-><init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/R2;)V

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/t0;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/android/tools/r8/graph/e1;-><init>(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/t0;)V

    const/4 p2, 0x2

    invoke-direct {v1, p2, v2}, Lcom/android/tools/r8/graph/r0;-><init>(ILcom/android/tools/r8/graph/e1;)V

    .line 88
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->s:Lcom/android/tools/r8/graph/i3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 23
    const-string v0, "<clinit>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    new-instance v0, Lcom/android/tools/r8/graph/i3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_2

    .line 25
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/graph/i3;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/i3;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 26
    :goto_2
    iput-object v0, p0, Lcom/android/tools/r8/graph/j4;->s:Lcom/android/tools/r8/graph/i3;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/graph/m4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/graph/m4;-><init>(Lcom/android/tools/r8/graph/j4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->o:Lcom/android/tools/r8/graph/o5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->p:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/p5;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/p5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/graph/j4;->F:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/A5;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/A5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-boolean v1, v1, Lcom/android/tools/r8/graph/u1;->D6:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, v0, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Space characters in SimpleName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' are not allowed prior to DEX version 040"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
