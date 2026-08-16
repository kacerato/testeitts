.class public final Lcom/android/tools/r8/internal/q9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/re;

.field public final d:Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/q9;->e:Z

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

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-eq p2, v1, :cond_5

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq p2, v1, :cond_5

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne p2, v1, :cond_7

    sget-object v1, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-eq p2, v0, :cond_9

    sget-object v0, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    if-eq p1, v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    iput-object p1, p0, Lcom/android/tools/r8/internal/q9;->c:Lcom/android/tools/r8/internal/re;

    iput-object p2, p0, Lcom/android/tools/r8/internal/q9;->d:Lcom/android/tools/r8/internal/T10;

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/internal/q9;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong ASM opcode for CfCmp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/q9;

    sget-object v0, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 5
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/q9;

    sget-object v0, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 6
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/q9;

    sget-object v0, Lcom/android/tools/r8/internal/re;->c:Lcom/android/tools/r8/internal/re;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 7
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/q9;

    sget-object v0, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 8
    :pswitch_4
    new-instance p0, Lcom/android/tools/r8/internal/q9;

    sget-object v0, Lcom/android/tools/r8/internal/re;->b:Lcom/android/tools/r8/internal/re;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/q9;-><init>(Lcom/android/tools/r8/internal/re;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B()I
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/p9;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/q9;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/q9;->c:Lcom/android/tools/r8/internal/re;

    sget-object v1, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x97

    return v0

    :cond_0
    const/16 v0, 0x98

    return v0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/q9;->d:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CfCmp has unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/q9;->c:Lcom/android/tools/r8/internal/re;

    sget-object v1, Lcom/android/tools/r8/internal/re;->d:Lcom/android/tools/r8/internal/re;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x95

    return v0

    :cond_3
    const/16 v0, 0x96

    return v0

    :cond_4
    const/16 v0, 0x94

    return v0
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

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/q9;->d:Lcom/android/tools/r8/internal/T10;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/q9;->d:Lcom/android/tools/r8/internal/T10;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q9;->B()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/q9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 6

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    iget v5, p3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    iget v4, p3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/q9;->d:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/q9;->c:Lcom/android/tools/r8/internal/re;

    sget-object p3, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 15
    iget v3, p2, Lcom/android/tools/r8/internal/ob;->a:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/re;III)V

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
