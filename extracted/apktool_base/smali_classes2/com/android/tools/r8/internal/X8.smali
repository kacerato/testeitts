.class public Lcom/android/tools/r8/internal/X8;
.super Lcom/android/tools/r8/internal/Y8;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/YV;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Y8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x31

    return v0

    :pswitch_1
    const/16 v0, 0x2f

    return v0

    :pswitch_2
    const/16 v0, 0x30

    return v0

    :pswitch_3
    const/16 v0, 0x2e

    return v0

    :pswitch_4
    const/16 v0, 0x35

    return v0

    :pswitch_5
    const/16 v0, 0x34

    return v0

    :pswitch_6
    const/16 v0, 0x33

    return v0

    :pswitch_7
    const/16 v0, 0x32

    return v0

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

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 3

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 19
    invoke-virtual {p1, p2, p3, v1}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Y8;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/P11;

    invoke-direct {v2, p0, p3, p2, v0}, Lcom/android/tools/r8/internal/P11;-><init>(Lcom/android/tools/r8/internal/X8;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;)V

    .line 21
    invoke-virtual {p1, p2, v1, p3, v2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 22
    invoke-interface {p5}, Lcom/android/tools/r8/internal/jy;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object p3, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 24
    sget-object p5, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne p3, p5, :cond_0

    .line 25
    sget-object p2, Lcom/android/tools/r8/internal/m10;->c:Lcom/android/tools/r8/internal/m10;

    invoke-virtual {p4, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/AD;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1

    .line 28
    :cond_1
    invoke-interface {p5}, Lcom/android/tools/r8/internal/jy;->B()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 29
    invoke-interface {p5}, Lcom/android/tools/r8/internal/jy;->p()Lcom/android/tools/r8/internal/CD;

    move-result-object p2

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/internal/CD;->c:Lcom/android/tools/r8/internal/ae0;

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 33
    invoke-virtual {p4, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1

    .line 34
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/X8;->e:Z

    if-nez p2, :cond_4

    invoke-interface {p5}, Lcom/android/tools/r8/internal/jy;->m()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_4
    :goto_0
    invoke-interface {p5}, Lcom/android/tools/r8/internal/jy;->b()Lcom/android/tools/r8/internal/DD;

    move-result-object p2

    .line 36
    iget-object p2, p2, Lcom/android/tools/r8/internal/DD;->c:Lcom/android/tools/r8/graph/M2;

    const/4 p5, 0x1

    .line 37
    invoke-virtual {p2, p5, p3}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 38
    invoke-virtual {p4, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/X8;->B()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/X8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 6

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/android/tools/r8/internal/X8;->e:Z

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 7
    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/YV;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/android/tools/r8/internal/ob;->c:Lcom/android/tools/r8/graph/M2;

    if-eqz v3, :cond_3

    .line 9
    iget-object v4, p1, Lcom/android/tools/r8/internal/aB;->p:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 11
    new-instance v4, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object v3

    if-nez v1, :cond_4

    .line 12
    iget-object p2, p2, Lcom/android/tools/r8/internal/ub;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/sb;->c()Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/internal/ob;->b:Lcom/android/tools/r8/internal/Kw0;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object v3

    .line 15
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 16
    iget v1, v3, Lcom/android/tools/r8/internal/ob;->a:I

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1, p2, v1, v0, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/YV;III)V

    return-void
.end method
