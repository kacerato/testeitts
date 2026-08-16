.class public final Lcom/android/tools/r8/internal/va;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/T10;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/T10;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/va;->c:Lcom/android/tools/r8/internal/T10;

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/internal/va;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid opcode for CfNeg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/va;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/va;-><init>(Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 7
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/va;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/va;-><init>(Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 8
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/va;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/va;-><init>(Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 9
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/va;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/va;-><init>(Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B()I
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/ua;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/va;->c:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/va;->c:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type for CfNeg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x77

    return v0

    :pswitch_1
    const/16 v0, 0x76

    return v0

    :pswitch_2
    const/16 v0, 0x75

    return v0

    :pswitch_3
    const/16 v0, 0x74

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/va;->c:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/va;->c:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
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

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/va;->B()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/va;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/va;->c:Lcom/android/tools/r8/internal/T10;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 13
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;II)V

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
