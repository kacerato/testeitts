.class public abstract Lcom/android/tools/r8/internal/Np;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ka;
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Ka;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/internal/Np;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:[Lcom/android/tools/r8/internal/Np;

.field public static final d:[I

.field public static final synthetic e:Z = true


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/tools/r8/internal/Np;

    sput-object v1, Lcom/android/tools/r8/internal/Np;->c:[Lcom/android/tools/r8/internal/Np;

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/internal/Np;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/Np;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/w8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/Op;

    .line 3
    iget p1, p1, Lcom/android/tools/r8/internal/Op;->d:I

    add-int/lit8 p1, p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/Np;->b:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/w8;)C
    .locals 1

    .line 6
    check-cast p0, Lcom/android/tools/r8/internal/Op;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Op;)I
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-char v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p0

    and-int/2addr p0, v1

    int-to-char p0, p0

    shl-int/lit8 p0, p0, 0x10

    const/high16 v2, -0x10000

    and-int/2addr p0, v2

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(IILjava/nio/ShortBuffer;)V
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    .line 9
    invoke-virtual {p2, p0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public static a(IILjava/nio/ShortBuffer;I)V
    .locals 0

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    .line 10
    invoke-virtual {p2, p0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public static a(JLjava/nio/ShortBuffer;)V
    .locals 4

    const-wide/32 v0, 0xffff

    and-long v2, p0, v0

    long-to-int v2, v2

    int-to-short v2, v2

    .line 11
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    const/16 v2, 0x10

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    .line 12
    invoke-virtual {p2, p0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/d4;Ljava/nio/ShortBuffer;Lcom/android/tools/r8/graph/w5;)V
    .locals 0

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/d4;->a(Lcom/android/tools/r8/graph/w5;)I

    move-result p0

    .line 14
    sget-boolean p2, Lcom/android/tools/r8/internal/Np;->e:Z

    if-nez p2, :cond_1

    const p2, 0xffff

    and-int/2addr p2, p0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    int-to-short p0, p0

    .line 15
    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public static d(II)S
    .locals 0

    .line 2
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static e(II)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public A()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public G()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/vq;

    return v0
.end method

.method public I()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Ko;

    return v0
.end method

.method public M()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->L()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/tools/r8/internal/kr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/Np;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->p()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->p()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
.end method

.method public a(Lcom/android/tools/r8/internal/Np;)Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/bJ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a payload user"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->z()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/aB;)V
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->p()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 24
    iget-object v2, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 25
    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    .line 27
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public b()Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/Np;->a(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/Np;)Ljava/lang/String;
    .locals 3

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/bJ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instruction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a payload user"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v1

    const/4 v2, 0x2

    .line 7
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 8
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 9
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->t()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    .line 11
    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lcom/android/tools/r8/internal/rA;)V
.end method

.method public c()Lcom/android/tools/r8/internal/Ln;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/go;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/internal/ko;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/Np;->b:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lcom/android/tools/r8/internal/lo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/android/tools/r8/internal/eo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getField()Lcom/android/tools/r8/graph/l1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/internal/Jp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method public i()Lcom/android/tools/r8/internal/Mp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/internal/dq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/internal/ir;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public n()Lcom/android/tools/r8/graph/D0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->l()Z

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v0

    return v0
.end method

.method public final r()Lcom/android/tools/r8/internal/W9;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Lcom/android/tools/r8/internal/Np;
    .locals 0

    return-object p0
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Np;->b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Np;->b:I

    return v0
.end method

.method public abstract v()I
.end method

.method public w()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract y()I
.end method

.method public abstract z()Ljava/lang/String;
.end method
