.class public Lcom/android/tools/r8/internal/ra;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/qa;

.field public final d:Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/ra;->e:Z

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

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq p2, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)I
    .locals 2

    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/T10;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x83

    return p0

    :cond_0
    const/16 p0, 0x82

    return p0

    .line 20
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CfLogicalBinop has unknown opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/T10;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x81

    return p0

    :cond_3
    const/16 p0, 0x80

    return p0

    .line 22
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/T10;->a()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x7f

    return p0

    :cond_5
    const/16 p0, 0x7e

    return p0

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/T10;->a()Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x7d

    return p0

    :cond_7
    const/16 p0, 0x7c

    return p0

    .line 24
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/T10;->a()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x7b

    return p0

    :cond_9
    const/16 p0, 0x7a

    return p0

    .line 25
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/T10;->a()Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x79

    return p0

    :cond_b
    const/16 p0, 0x78

    return p0
.end method

.method public static a(I)Lcom/android/tools/r8/internal/ra;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong ASM opcode for CfLogicalBinop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->g:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 5
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->g:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 6
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->f:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 7
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->f:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 8
    :pswitch_4
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->e:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 9
    :pswitch_5
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->e:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 10
    :pswitch_6
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->d:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 11
    :pswitch_7
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->d:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 12
    :pswitch_8
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->c:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 13
    :pswitch_9
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->c:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 14
    :pswitch_a
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->b:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 15
    :pswitch_b
    new-instance p0, Lcom/android/tools/r8/internal/ra;

    sget-object v0, Lcom/android/tools/r8/internal/qa;->b:Lcom/android/tools/r8/internal/qa;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x78
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


# virtual methods
.method public final B()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ra;->a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)I

    move-result v0

    return v0
.end method

.method public V()Lcom/android/tools/r8/internal/T10;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 42
    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 43
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v1}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v1}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    iget-object p2, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/ra;->a(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)I

    move-result p1

    .line 17
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 26
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/ra;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 31
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->r(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 34
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/ra;->c:Lcom/android/tools/r8/internal/qa;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CfLogicalBinop has unknown opcode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->i(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->c(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->q(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->o(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 39
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/ra;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->n(Lcom/android/tools/r8/internal/T10;III)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
