.class public Lcom/android/tools/r8/internal/Z8;
.super Lcom/android/tools/r8/internal/Y8;
.source "SourceFile"


# direct methods
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
    const/16 v0, 0x52

    return v0

    :pswitch_1
    const/16 v0, 0x50

    return v0

    :pswitch_2
    const/16 v0, 0x51

    return v0

    :pswitch_3
    const/16 v0, 0x4f

    return v0

    :pswitch_4
    const/16 v0, 0x56

    return v0

    :pswitch_5
    const/16 v0, 0x55

    return v0

    :pswitch_6
    const/16 v0, 0x54

    return v0

    :pswitch_7
    const/16 v0, 0x53

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

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/AD;

    move-result-object v1

    .line 14
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 15
    invoke-virtual {p1, p2, p3, v1}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-virtual {p1, p2, p3, v1}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Y8;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/Z8;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Z8;->B()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Z8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 2

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    .line 8
    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1, v1, p3, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(Lcom/android/tools/r8/internal/YV;III)V

    return-void
.end method
