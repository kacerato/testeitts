.class public final Lcom/google/protobuf/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/E1;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation


# static fields
.field public static final g:I = 0x3

.field public static final h:I = 0x7

.field public static final i:I


# instance fields
.field public final c:Lcom/google/protobuf/C;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/C;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/C;

    iput-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    iput-object p0, p1, Lcom/google/protobuf/C;->d:Lcom/google/protobuf/D;

    return-void
.end method

.method public static U(Lcom/google/protobuf/C;)Lcom/google/protobuf/D;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/C;->d:Lcom/google/protobuf/D;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/D;

    invoke-direct {v0, p0}, Lcom/google/protobuf/D;-><init>(Lcom/google/protobuf/C;)V

    return-object v0
.end method

.method private X(Lcom/google/protobuf/A2$b;Ljava/lang/Class;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldType",
            "messageType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/A2$b;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/d0;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/D$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/D;->j()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/D;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/D;->T()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/D;->P()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/D;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/D;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/D;->S()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/D;->M(Ljava/lang/Class;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/D;->y()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/D;->J()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/D;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/D;->z()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/D;->N()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/D;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/D;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/D;->h()Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/D;->C()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method private Y(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/D;->V(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V

    return-object v0
.end method

.method private Z(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/D;->W(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V

    return-object v0
.end method

.method private b0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private c0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredWireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private d0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private e0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/C0;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/C0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->T()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/D;->d0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->T()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->T()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->d0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->T()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public B(Ljava/util/List;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/D;->Y(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/D;->f:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/D;->f:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public C()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->v()Z

    move-result v0

    return v0
.end method

.method public D(Ljava/util/List;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/D;->Z(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->j()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/D;->f:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/D;->f:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public E(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/O0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->b0()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->b0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->b0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->b0()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public F(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/O0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->H()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->H()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->H()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->H()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public G(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/C0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/C0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public H(Ljava/lang/Class;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/D;->Y(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/D;->a0(Ljava/util/List;Z)V

    return-void
.end method

.method public J()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->G()I

    move-result v0

    return v0
.end method

.method public K(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/O0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/D;->e0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->C()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->C()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->e0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->C()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->C()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public L(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/C0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/C0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public M(Ljava/lang/Class;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/D;->Z(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public N()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->B()I

    move-result v0

    return v0
.end method

.method public O(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "targetType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/D;->B(Ljava/util/List;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public P()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->W()J

    move-result-wide v0

    return-wide v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/D;->Z(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public S()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->T()I

    move-result v0

    return v0
.end method

.method public T()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/D;->e:I

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v1}, Lcom/google/protobuf/A2;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/A2;->c(II)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/D;->e:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/L1;->P1(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    iget p2, p0, Lcom/google/protobuf/D;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/protobuf/D;->e:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/protobuf/D;->e:I

    throw p1
.end method

.method public final W(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    iget v2, v1, Lcom/google/protobuf/C;->a:I

    iget v3, v1, Lcom/google/protobuf/C;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/C;->u(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    iget v2, v1, Lcom/google/protobuf/C;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/protobuf/C;->a:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/L1;->P1(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/C;->a(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    iget p2, p1, Lcom/google/protobuf/C;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/protobuf/C;->a:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/C;->t(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/O0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->W()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->W()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->W()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public a0(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "requireUtf8"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/protobuf/K0;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/K0;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/D;->h()Lcom/google/protobuf/x;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/K0;->b3(Lcom/google/protobuf/x;)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget p2, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/D;->T()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/D;->Q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->U()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->A()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->V()I

    move-result v0

    return v0
.end method

.method public f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/t;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/t;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t;->l4(Z)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/t;->l4(Z)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public g(Ljava/util/Map;Lcom/google/protobuf/R0$b;Lcom/google/protobuf/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "metadata",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/R0$b<",
            "TK;TV;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/C;->u(I)I

    move-result v1

    iget-object v2, p2, Lcom/google/protobuf/R0$b;->b:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/D;->q()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v5}, Lcom/google/protobuf/C;->j()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/D;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v4, p2, Lcom/google/protobuf/R0$b;->c:Lcom/google/protobuf/A2$b;

    iget-object v5, p2, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/protobuf/D;->X(Lcom/google/protobuf/A2$b;Ljava/lang/Class;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p2, Lcom/google/protobuf/R0$b;->a:Lcom/google/protobuf/A2$b;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/protobuf/D;->X(Lcom/google/protobuf/A2$b;Ljava/lang/Class;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/D;->v()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->t(I)V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p2, v1}, Lcom/google/protobuf/C;->t(I)V

    throw p1
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    return v0
.end method

.method public h()Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/C0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/C0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->V()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->V()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->V()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->V()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public j()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->b0()J

    move-result-wide v0

    return-wide v0
.end method

.method public k(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/D;->V(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public l(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/D;->Y(Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "targetType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/D;->D(Ljava/util/List;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/O0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/O0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/D;->e0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->U()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->U()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->x7(J)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->e0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->U()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/C0;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/C0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->G()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/protobuf/D;->b0(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->G()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/C0;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/C0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->B()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/D;->d0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->B()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/C0;->Cc(I)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->d0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public q()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/D;->f:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/protobuf/D;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/D;->d:I

    :goto_0
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/protobuf/D;->e:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/A2;->a(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/D;->a0(Ljava/util/List;Z)V

    return-void
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->z()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->D()F

    move-result v0

    return v0
.end method

.method public s(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/L1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/D;->W(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/q0;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/q0;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->D()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q0;->k9(F)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/D;->d0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->D()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q0;->k9(F)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->D()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->d0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->D()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->g0()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    iget v1, p0, Lcom/google/protobuf/D;->e:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/C;->h0(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public w(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/x;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/D;->h()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public x(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/J;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/J;

    iget p1, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/D;->e0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->z()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/J;->G7(D)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->i()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->z()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/J;->G7(D)V

    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/D;->f:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/D;->d:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->e0(I)V

    iget-object v1, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v1}, Lcom/google/protobuf/C;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->z()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->i()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->z()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/D;->d:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/D;->f:I

    return-void
.end method

.method public y()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->H()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/D;->c0(I)V

    iget-object v0, p0, Lcom/google/protobuf/D;->c:Lcom/google/protobuf/C;

    invoke-virtual {v0}, Lcom/google/protobuf/C;->C()J

    move-result-wide v0

    return-wide v0
.end method
