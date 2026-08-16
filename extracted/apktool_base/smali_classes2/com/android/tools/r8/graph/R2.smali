.class public abstract Lcom/android/tools/r8/graph/R2;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/R2$c;,
        Lcom/android/tools/r8/graph/R2$a;,
        Lcom/android/tools/r8/graph/R2$b;,
        Lcom/android/tools/r8/graph/R2$l;,
        Lcom/android/tools/r8/graph/R2$k;,
        Lcom/android/tools/r8/graph/R2$m;,
        Lcom/android/tools/r8/graph/R2$f;,
        Lcom/android/tools/r8/graph/R2$g;,
        Lcom/android/tools/r8/graph/R2$i;,
        Lcom/android/tools/r8/graph/R2$h;,
        Lcom/android/tools/r8/graph/R2$e;,
        Lcom/android/tools/r8/graph/R2$j;,
        Lcom/android/tools/r8/graph/R2$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/R2;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Lcom/android/tools/r8/graph/R2;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/R2;

    sput-object v0, Lcom/android/tools/r8/graph/R2;->b:[Lcom/android/tools/r8/graph/R2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/R2;
    .locals 1

    .line 18
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/R2$h;->j(I)Lcom/android/tools/r8/graph/R2$h;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 21
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/R2$i;->a(J)Lcom/android/tools/r8/graph/R2$i;

    move-result-object p0

    return-object p0

    .line 22
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 23
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/graph/R2$g;->a(F)Lcom/android/tools/r8/graph/R2$g;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 25
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/R2$f;->a(D)Lcom/android/tools/r8/graph/R2$f;

    move-result-object p0

    return-object p0

    .line 26
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 27
    new-instance p2, Lcom/android/tools/r8/graph/R2$k;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/tools/r8/graph/R2$k;-><init>(Lcom/android/tools/r8/graph/L2;)V

    return-object p2

    .line 28
    :cond_4
    instance-of v0, p0, Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_7

    .line 29
    check-cast p0, Lcom/android/tools/r8/internal/tt0;

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 31
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Type sort is not supported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :pswitch_0
    new-instance p2, Lcom/android/tools/r8/graph/Y2;

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h4;->c(Ljava/lang/String;)Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/tools/r8/graph/Y2;-><init>(Lcom/android/tools/r8/graph/I2;)V

    return-object p2

    .line 34
    :pswitch_1
    new-instance p2, Lcom/android/tools/r8/graph/R2$l;

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object p2

    .line 36
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 37
    sget-boolean p1, Lcom/android/tools/r8/graph/R2;->c:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 38
    :cond_6
    :goto_0
    new-instance p1, Lcom/android/tools/r8/graph/R2$l;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/R2$l;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object p1

    .line 39
    :cond_7
    instance-of v0, p0, Lcom/android/tools/r8/internal/Qz;

    if-eqz v0, :cond_8

    .line 40
    new-instance p3, Lcom/android/tools/r8/graph/X2;

    check-cast p0, Lcom/android/tools/r8/internal/Qz;

    .line 41
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/graph/C2;->a(Lcom/android/tools/r8/internal/Qz;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/android/tools/r8/graph/X2;-><init>(Lcom/android/tools/r8/graph/C2;)V

    return-object p3

    .line 42
    :cond_8
    instance-of v0, p0, Lcom/android/tools/r8/internal/wh;

    if-eqz v0, :cond_9

    .line 43
    new-instance v0, Lcom/android/tools/r8/graph/S2;

    check-cast p0, Lcom/android/tools/r8/internal/wh;

    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ah;->a(Lcom/android/tools/r8/internal/wh;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Ah;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/S2;-><init>(Lcom/android/tools/r8/internal/Ah;)V

    return-object v0

    .line 45
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported bootstrap static argument of type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/a3;
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->W0()C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 49
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No default value for unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/graph/R2$f;->e:Lcom/android/tools/r8/graph/R2$f;

    return-object p0

    .line 51
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/graph/R2$e;->e:Lcom/android/tools/r8/graph/R2$e;

    return-object p0

    .line 52
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/graph/R2$d;->e:Lcom/android/tools/r8/graph/R2$d;

    return-object p0

    .line 53
    :cond_0
    sget-object p0, Lcom/android/tools/r8/graph/R2$i;->e:Lcom/android/tools/r8/graph/R2$i;

    return-object p0

    .line 54
    :cond_1
    sget-object p0, Lcom/android/tools/r8/graph/R2$h;->e:Lcom/android/tools/r8/graph/R2$h;

    return-object p0

    .line 55
    :cond_2
    sget-object p0, Lcom/android/tools/r8/graph/R2$c;->g:Lcom/android/tools/r8/graph/R2$c;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lcom/android/tools/r8/graph/R2$j;->e:Lcom/android/tools/r8/graph/R2$j;

    return-object p0

    .line 57
    :cond_4
    sget-object p0, Lcom/android/tools/r8/graph/Z2;->d:Lcom/android/tools/r8/graph/Z2;

    return-object p0

    .line 58
    :cond_5
    sget-object p0, Lcom/android/tools/r8/graph/R2$g;->e:Lcom/android/tools/r8/graph/R2$g;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x5

    .line 3
    iget-byte p0, p0, Lcom/android/tools/r8/graph/V2;->b:B

    or-int/2addr p0, p1

    int-to-byte p0, p0

    .line 4
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/dex/y;->a(B)V

    return-void
.end method


# virtual methods
.method public A0()Lcom/android/tools/r8/graph/Y2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B0()Lcom/android/tools/r8/graph/b3;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C0()Lcom/android/tools/r8/graph/R2$j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D0()Lcom/android/tools/r8/graph/R2$k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public E0()Lcom/android/tools/r8/graph/R2$l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract F0()Ljava/lang/Object;
.end method

.method public abstract G0()Lcom/android/tools/r8/graph/V2;
.end method

.method public H0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public I0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public K0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public M0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public U0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/R2$k;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract V0()V
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    .line 7
    iget-byte v0, v0, Lcom/android/tools/r8/graph/V2;->b:B

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object p1

    .line 9
    iget-byte p1, p1, Lcom/android/tools/r8/graph/V2;->b:B

    .line 10
    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/R2;->b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 47
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public abstract a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    .line 13
    iget-byte v0, v0, Lcom/android/tools/r8/graph/V2;->b:B

    .line 14
    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 16
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/R2;->c(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public abstract b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
.end method

.method public abstract c(Lcom/android/tools/r8/internal/rA;)V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract k0()Ljava/lang/Object;
.end method

.method public l0()Lcom/android/tools/r8/graph/Q2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public m0()Lcom/android/tools/r8/graph/R2$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n0()Lcom/android/tools/r8/graph/R2$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o0()Lcom/android/tools/r8/graph/R2$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p0()Lcom/android/tools/r8/graph/R2$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q0()Lcom/android/tools/r8/graph/R2$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r0()Lcom/android/tools/r8/graph/S2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s0()Lcom/android/tools/r8/graph/R2$f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t0()Lcom/android/tools/r8/graph/T2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public u0()Lcom/android/tools/r8/graph/U2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v0()Lcom/android/tools/r8/graph/R2$g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w0()Lcom/android/tools/r8/graph/R2$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x0()Lcom/android/tools/r8/graph/R2$i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y0()Lcom/android/tools/r8/graph/W2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()Lcom/android/tools/r8/graph/X2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
