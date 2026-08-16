.class public abstract Lcom/android/tools/r8/internal/F9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/F9;->c:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public static a(ILcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/U9;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/U9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0

    .line 4
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/T9;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0

    .line 5
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/wb;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0

    .line 6
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/vb;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/lE0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lE0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/mE0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mE0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final I()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/kE0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/kE0;-><init>()V

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/F9;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p4, p5, p1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 11
    iget-object p2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p7, p2}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-object p3, p0, Lcom/android/tools/r8/internal/F9;->c:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p7, p3}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p7, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W9;->B()I

    move-result p4

    invoke-virtual {p9, p4, p2, p3, p1}, Lcom/android/tools/r8/internal/EX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/F9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/kE0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kE0;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final f()Lcom/android/tools/r8/internal/F9;
    .locals 0

    return-object p0
.end method

.method public getField()Lcom/android/tools/r8/graph/l1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/F9;->c:Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
