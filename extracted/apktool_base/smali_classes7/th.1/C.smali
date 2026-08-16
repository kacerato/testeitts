.class public Lth/C;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final A:I = 0x17

.field public static final B:I = 0x18

.field public static final C:I = 0x19

.field public static final D:I = 0x1a

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6

.field public static final k:I = 0x7

.field public static final l:I = 0x8

.field public static final m:I = 0x9

.field public static final n:I = 0xa

.field public static final o:I = 0xb

.field public static final p:I = 0xc

.field public static final q:I = 0xd

.field public static final r:I = 0xe

.field public static final s:I = 0xf

.field public static final t:I = 0x10

.field public static final u:I = 0x11

.field public static final v:I = 0x12

.field public static final w:I = 0x13

.field public static final x:I = 0x14

.field public static final y:I = 0x15

.field public static final z:I = 0x16


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Lth/C;->b:I

    invoke-static {p1, p2}, Lth/C;->u(ILoh/g;)Loh/g;

    move-result-object p1

    iput-object p1, p0, Lth/C;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 2

    .line 2
    const-string v0, "malformed body found: "

    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v1

    iput v1, p0, Lth/C;->b:I

    :try_start_0
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {v1, p1}, Lth/C;->u(ILoh/g;)Loh/g;

    move-result-object p1

    iput-object p1, p0, Lth/C;->c:Loh/g;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public static u(ILoh/g;)Loh/g;
    .locals 5

    const-string v0, " has incorrect type got: "

    const-string v1, "body type of "

    packed-switch p0, :pswitch_data_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {p1}, Lth/O;->w(Ljava/lang/Object;)Lth/O;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lth/P;->w(Ljava/lang/Object;)Lth/P;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lth/h;->u(Ljava/lang/Object;)Lth/h;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lth/q;->y(Ljava/lang/Object;)Lth/q;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lth/s;->u(Ljava/lang/Object;)Lth/s;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Lth/r;->u(Ljava/lang/Object;)Lth/r;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Lth/J;->u(Ljava/lang/Object;)Lth/J;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {p1}, Lth/D;->u(Ljava/lang/Object;)Lth/D;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {p1}, Lth/d;->v(Ljava/lang/Object;)Lth/d;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p1}, Lth/S;->y(Ljava/lang/Object;)Lth/S;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p1}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p1}, Lth/a;->u(Ljava/lang/Object;)Lth/a;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {p1}, Lth/j;->v(Ljava/lang/Object;)Lth/j;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {p1}, Lwh/d;->u(Ljava/lang/Object;)Lwh/d;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {p1}, Lth/U;->w(Ljava/lang/Object;)Lth/U;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {p1}, Lth/W;->u(Ljava/lang/Object;)Lth/W;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {p1}, Lth/x;->w(Ljava/lang/Object;)Lth/x;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {p1}, Lwh/d;->u(Ljava/lang/Object;)Lwh/d;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {p1}, Lth/j;->v(Ljava/lang/Object;)Lth/j;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {p1}, Lwh/d;->u(Ljava/lang/Object;)Lwh/d;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {p1}, Lth/N;->u(Ljava/lang/Object;)Lth/N;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {p1}, Lth/M;->u(Ljava/lang/Object;)Lth/M;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {p1}, LXh/e;->v(Ljava/lang/Object;)LXh/e;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {p1}, Lth/j;->v(Ljava/lang/Object;)Lth/j;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-static {p1}, Lwh/d;->u(Ljava/lang/Object;)Lwh/d;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-static {p1}, Lth/j;->v(Ljava/lang/Object;)Lth/j;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-static {p1}, Lwh/d;->u(Ljava/lang/Object;)Lwh/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static w(Ljava/lang/Object;)Lth/C;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lth/C;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lth/C;

    check-cast p0, Loh/M;

    invoke-direct {v0, p0}, Lth/C;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lth/C;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/K0;

    iget v1, p0, Lth/C;->b:I

    iget-object v2, p0, Lth/C;->c:Loh/g;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, Lth/C;->c:Loh/g;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lth/C;->b:I

    return v0
.end method
