.class public final Lcom/google/protobuf/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/o0$b;,
        Lcom/google/protobuf/o0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/o0$c<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:I = 0x10

.field public static final e:Lcom/google/protobuf/o0;


# instance fields
.field public final a:Lcom/google/protobuf/R1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/R1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/o0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/o0;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/o0;->e:Lcom/google/protobuf/o0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/R1;->t(I)Lcom/google/protobuf/R1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/R1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/R1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/o0;->J()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/R1;Lcom/google/protobuf/o0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/o0;-><init>(Lcom/google/protobuf/R1;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dummy"
        }
    .end annotation

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/R1;->t(I)Lcom/google/protobuf/R1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o0;-><init>(Lcom/google/protobuf/R1;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/o0;->J()V

    return-void
.end method

.method public static A(Lcom/google/protobuf/A2$b;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "type",
            "isPacked"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/A2$b;->b()I

    move-result p0

    return p0
.end method

.method public static F(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/o0;->G(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/o0;->G(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static G(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/protobuf/c1;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/c1;

    invoke-interface {p0}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/protobuf/H0;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/D0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/o0$a;->a:[I

    invoke-virtual {p0}, Lcom/google/protobuf/A2$b;->a()Lcom/google/protobuf/A2$c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    instance-of p0, p1, Lcom/google/protobuf/b1;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/google/protobuf/H0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lcom/google/protobuf/D0$c;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0

    :pswitch_2
    instance-of p0, p1, Lcom/google/protobuf/x;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0

    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static M()Lcom/google/protobuf/o0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>()",
            "Lcom/google/protobuf/o0$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/o0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/o0$b;-><init>(Lcom/google/protobuf/o0$a;)V

    return-object v0
.end method

.method public static N()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>()",
            "Lcom/google/protobuf/o0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/o0;

    invoke-direct {v0}, Lcom/google/protobuf/o0;-><init>()V

    return-object v0
.end method

.method public static O(Lcom/google/protobuf/C;Lcom/google/protobuf/A2$b;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "input",
            "type",
            "checkUtf8"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/protobuf/A2$d;->STRICT:Lcom/google/protobuf/A2$d;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/A2;->d(Lcom/google/protobuf/C;Lcom/google/protobuf/A2$b;Lcom/google/protobuf/A2$d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/google/protobuf/A2$d;->LOOSE:Lcom/google/protobuf/A2$d;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/A2;->d(Lcom/google/protobuf/C;Lcom/google/protobuf/A2$b;Lcom/google/protobuf/A2$d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static S(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/A2$b;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "output",
            "type",
            "number",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/A2$b;->GROUP:Lcom/google/protobuf/A2$b;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/google/protobuf/b1;

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->F1(ILcom/google/protobuf/b1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/o0;->A(Lcom/google/protobuf/A2$b;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->g2(II)V

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/o0;->T(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static T(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "output",
            "type",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o0$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    instance-of p1, p2, Lcom/google/protobuf/D0$c;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/protobuf/D0$c;

    invoke-interface {p2}, Lcom/google/protobuf/D0$c;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->B1(I)V

    goto/16 :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->B1(I)V

    goto/16 :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->e2(J)V

    goto/16 :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->d2(I)V

    goto/16 :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->c2(J)V

    goto/16 :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->b2(I)V

    goto/16 :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    goto/16 :goto_0

    :pswitch_6
    instance-of p1, p2, Lcom/google/protobuf/x;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/google/protobuf/x;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->z1(Lcom/google/protobuf/x;)V

    goto/16 :goto_0

    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->w1([B)V

    goto/16 :goto_0

    :pswitch_7
    instance-of p1, p2, Lcom/google/protobuf/x;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/google/protobuf/x;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->z1(Lcom/google/protobuf/x;)V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->f2(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    check-cast p2, Lcom/google/protobuf/b1;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->N1(Lcom/google/protobuf/b1;)V

    goto :goto_0

    :pswitch_9
    check-cast p2, Lcom/google/protobuf/b1;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->H1(Lcom/google/protobuf/b1;)V

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->t1(Z)V

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->C1(I)V

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->D1(J)V

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->J1(I)V

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->i2(J)V

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->K1(J)V

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->E1(F)V

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->A1(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static U(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "value",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0$c<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v1

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->i2()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {p2, v1, p0}, Lcom/google/protobuf/CodedOutputStream;->g2(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/o0;->p(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/o0;->T(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/o0;->S(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/A2$b;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of p0, p1, Lcom/google/protobuf/H0;

    if-eqz p0, :cond_4

    check-cast p1, Lcom/google/protobuf/H0;

    invoke-virtual {p1}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/google/protobuf/o0;->S(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/A2$b;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/o0;->S(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/A2$b;ILjava/lang/Object;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/R1;Z)Lcom/google/protobuf/R1;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/o0;->l(Lcom/google/protobuf/R1;Z)Lcom/google/protobuf/R1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/protobuf/o0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/o0;->c:Z

    return p0
.end method

.method public static synthetic c(Lcom/google/protobuf/o0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/o0;->c:Z

    return p1
.end method

.method public static synthetic d(Lcom/google/protobuf/o0;)Lcom/google/protobuf/R1;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/o0;->H(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/o0;->F(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/o0;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcom/google/protobuf/R1;Z)Lcom/google/protobuf/R1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fields",
            "copyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Lcom/google/protobuf/R1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/google/protobuf/R1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/protobuf/R1;->t(I)Lcom/google/protobuf/R1;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/R1;->m()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/google/protobuf/o0;->m(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/o0;->m(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static m(Ljava/util/Map;Ljava/util/Map$Entry;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "entry",
            "copyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/protobuf/H0;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/protobuf/H0;

    invoke-virtual {p1}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static o(Lcom/google/protobuf/A2$b;ILjava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "type",
            "number",
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result p1

    sget-object v0, Lcom/google/protobuf/A2$b;->GROUP:Lcom/google/protobuf/A2$b;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/o0;->p(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static p(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o0$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of p0, p1, Lcom/google/protobuf/D0$c;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/protobuf/D0$c;

    invoke-interface {p1}, Lcom/google/protobuf/D0$c;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->l0(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->l0(I)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->U0(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->S0(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->Q0(J)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->O0(I)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lcom/google/protobuf/x;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/protobuf/x;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->h0(Lcom/google/protobuf/x;)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->d0([B)I

    move-result p0

    return p0

    :pswitch_7
    instance-of p0, p1, Lcom/google/protobuf/x;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/protobuf/x;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->h0(Lcom/google/protobuf/x;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->W0(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    instance-of p0, p1, Lcom/google/protobuf/H0;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/google/protobuf/H0;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->C0(Lcom/google/protobuf/I0;)I

    move-result p0

    return p0

    :cond_3
    check-cast p1, Lcom/google/protobuf/b1;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->H0(Lcom/google/protobuf/b1;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lcom/google/protobuf/b1;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->u0(Lcom/google/protobuf/b1;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->b0(Z)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->n0(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->p0(J)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->x0(I)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->b1(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->z0(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->r0(F)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->j0(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static q(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0$c<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v1

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->i2()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/protobuf/o0;->p(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/o0;->o(Lcom/google/protobuf/A2$b;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/o0;->o(Lcom/google/protobuf/A2$b;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static s()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>()",
            "Lcom/google/protobuf/o0<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o0;->e:Lcom/google/protobuf/o0;

    return-object v0
.end method


# virtual methods
.method public B(Lcom/google/protobuf/o0$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/R1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/o0;->b:Z

    return v0
.end method

.method public E()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2}, Lcom/google/protobuf/R1;->m()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/o0;->F(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lcom/google/protobuf/o0;->F(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public I()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H0$c;

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/H0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public J()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/protobuf/o0;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->m()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/protobuf/v0;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/v0;

    invoke-virtual {v1}, Lcom/google/protobuf/v0;->G6()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->s()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/o0;->b:Z

    return-void
.end method

.method public K(Lcom/google/protobuf/o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->m()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/o0;->L(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {p1}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o0;->L(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final L(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/protobuf/H0;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/protobuf/H0;

    invoke-virtual {p1}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/o0;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/R1;->v(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-static {p1}, Lcom/google/protobuf/o0;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/R1;->v(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    check-cast v1, Lcom/google/protobuf/b1;

    invoke-interface {v1}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object v1

    check-cast p1, Lcom/google/protobuf/b1;

    invoke-interface {v0, v1, p1}, Lcom/google/protobuf/o0$c;->n(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/b1$a;->build()Lcom/google/protobuf/b1;

    move-result-object p1

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/R1;->v(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-static {p1}, Lcom/google/protobuf/o0;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/R1;->v(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "descriptor",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/o0;->R(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o0;->R(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lcom/google/protobuf/H0;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/R1;->v(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Q(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/o0;->R(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final R(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/o0;->H(Lcom/google/protobuf/A2$b;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/A2$b;->a()Lcom/google/protobuf/A2$c;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->m()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/o0;->W(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/o0;->W(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final W(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entry",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->i2()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/H0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/H0;

    invoke-virtual {v0}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result p1

    check-cast v0, Lcom/google/protobuf/b1;

    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->P1(ILcom/google/protobuf/b1;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/o0;->U(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    :goto_0
    return-void
.end method

.method public X(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->m()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o0$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/o0;->U(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o0$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/o0;->U(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o0;->k()Lcom/google/protobuf/o0;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/o0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/o0;

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    iget-object p1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/R1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o0;->R(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/R1;->v(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    return-void
.end method

.method public j(Lcom/google/protobuf/o0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/R1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/o0;->c:Z

    :cond_0
    return-void
.end method

.method public k()Lcom/google/protobuf/o0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/o0;->N()Lcom/google/protobuf/o0;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2}, Lcom/google/protobuf/R1;->m()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/o0;->c:Z

    iput-boolean v1, v0, Lcom/google/protobuf/o0;->c:Z

    return-object v0
.end method

.method public r()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/H0$c;

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/H0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->j()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/o0;->l(Lcom/google/protobuf/R1;Z)Lcom/google/protobuf/R1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v1}, Lcom/google/protobuf/R1;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->s()V

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/R1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/protobuf/H0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H0;

    invoke-virtual {p1}, Lcom/google/protobuf/H0;->p()Lcom/google/protobuf/b1;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public v()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2}, Lcom/google/protobuf/R1;->m()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/o0;->w(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/o0;->w(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final w(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->i2()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/protobuf/H0;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result p1

    check-cast v1, Lcom/google/protobuf/H0;

    invoke-static {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->A0(ILcom/google/protobuf/I0;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result p1

    check-cast v1, Lcom/google/protobuf/b1;

    invoke-static {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->E0(ILcom/google/protobuf/b1;)I

    move-result p1

    return p1

    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/o0;->q(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public x(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Lcom/google/protobuf/o0$c;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2}, Lcom/google/protobuf/R1;->m()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/R1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/o0;->q(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/R1;

    invoke-virtual {v0}, Lcom/google/protobuf/R1;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/o0;->q(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method
