.class public final Lcom/google/protobuf/y2$c;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/z2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/y2$c;",
        ">;",
        "Lcom/google/protobuf/z2;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/X1;",
            "Lcom/google/protobuf/X1$b;",
            "Lcom/google/protobuf/Y1;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/M0;",
            "Lcom/google/protobuf/M0$b;",
            "Lcom/google/protobuf/N0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/protobuf/y2$c;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/y2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/y2$c;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/y2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/y2$c;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Z1;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method


# virtual methods
.method public A4()Lcom/google/protobuf/x;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iget v2, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v2, v1, :cond_1

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public final A6()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/M0;",
            "Lcom/google/protobuf/M0$b;",
            "Lcom/google/protobuf/N0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/M0;->v6()Lcom/google/protobuf/M0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/M0;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public B6()Lcom/google/protobuf/X1$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->C6()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/X1$b;

    return-object v0
.end method

.method public final C6()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/X1;",
            "Lcom/google/protobuf/X1$b;",
            "Lcom/google/protobuf/Y1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/X1;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public D6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2$c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_8

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_7

    const/16 v3, 0x11

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x20

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x32

    if-eq v1, v3, :cond_2

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->A6()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x6

    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->C6()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/protobuf/y2$c;->b:I

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->z()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v2, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E4()Lcom/google/protobuf/X1;
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/X1;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/X1;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public E6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/y2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/y2;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->F6(Lcom/google/protobuf/y2;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public F5()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F6(Lcom/google/protobuf/y2;)Lcom/google/protobuf/y2$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/y2;->w6()Lcom/google/protobuf/y2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/protobuf/y2$b;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/y2;->G4()Lcom/google/protobuf/y2$d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/y2;->P1()Lcom/google/protobuf/M0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y2$c;->G6(Lcom/google/protobuf/M0;)Lcom/google/protobuf/y2$c;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/y2;->E4()Lcom/google/protobuf/X1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y2$c;->H6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/y2$c;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/y2;->e6()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y2$c;->J6(Z)Lcom/google/protobuf/y2$c;

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-static {p1}, Lcom/google/protobuf/y2;->u6(Lcom/google/protobuf/y2;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/y2;->s5()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/y2$c;->O6(D)Lcom/google/protobuf/y2$c;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/y2;->L2()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y2$c;->N6(I)Lcom/google/protobuf/y2$c;

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->I6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public G4()Lcom/google/protobuf/y2$d;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-static {v0}, Lcom/google/protobuf/y2$d;->a(I)Lcom/google/protobuf/y2$d;

    move-result-object v0

    return-object v0
.end method

.method public G6(Lcom/google/protobuf/M0;)Lcom/google/protobuf/y2$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/M0;->v6()Lcom/google/protobuf/M0;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/M0;

    invoke-static {v0}, Lcom/google/protobuf/M0;->y6(Lcom/google/protobuf/M0;)Lcom/google/protobuf/M0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/M0$b;->F6(Lcom/google/protobuf/M0;)Lcom/google/protobuf/M0$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/M0$b;->u6()Lcom/google/protobuf/M0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    return-object p0
.end method

.method public H6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/y2$c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/X1;

    invoke-static {v0}, Lcom/google/protobuf/X1;->A6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/X1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/X1$b;->x6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/X1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/X1$b;->I1()Lcom/google/protobuf/X1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/google/protobuf/y2$c;->b:I

    return-object p0
.end method

.method public I1()Lcom/google/protobuf/y2;
    .locals 2

    new-instance v0, Lcom/google/protobuf/y2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/y2;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/y2$a;)V

    iget v1, p0, Lcom/google/protobuf/y2$c;->d:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/y2$c;->v3(Lcom/google/protobuf/y2;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/y2$c;->a5(Lcom/google/protobuf/y2;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public final I6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/y2$c;

    return-object p1
.end method

.method public J6(Z)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public K0()Lcom/google/protobuf/Y1;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Y1;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/X1;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public K4()Lcom/google/protobuf/N0;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/N0;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/M0;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/M0;->v6()Lcom/google/protobuf/M0;

    move-result-object v0

    return-object v0
.end method

.method public K6(Lcom/google/protobuf/M0$b;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/M0$b;->t6()Lcom/google/protobuf/M0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/M0$b;->t6()Lcom/google/protobuf/M0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/protobuf/y2$c;->b:I

    return-object p0
.end method

.method public L2()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public L6(Lcom/google/protobuf/M0;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/protobuf/y2$c;->b:I

    return-object p0
.end method

.method public M6(Lcom/google/protobuf/s1;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/s1;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public N6(I)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public O1()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O6(D)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P1()Lcom/google/protobuf/M0;
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/M0;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/M0;->v6()Lcom/google/protobuf/M0;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/M0;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/M0;->v6()Lcom/google/protobuf/M0;

    move-result-object v0

    return-object v0
.end method

.method public P6(Ljava/lang/String;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Q6(Lcom/google/protobuf/x;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public R6(Lcom/google/protobuf/X1$b;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/X1$b;->m1()Lcom/google/protobuf/X1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/X1$b;->m1()Lcom/google/protobuf/X1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/google/protobuf/y2$c;->b:I

    return-object p0
.end method

.method public S6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/y2$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    iput p1, p0, Lcom/google/protobuf/y2$c;->b:I

    return-object p0
.end method

.method public final T6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/y2$c;

    return-object p1
.end method

.method public final a5(Lcom/google/protobuf/y2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    invoke-static {p1, v0}, Lcom/google/protobuf/y2;->t6(Lcom/google/protobuf/y2;I)I

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/protobuf/y2;->v6(Lcom/google/protobuf/y2;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/y2;->v6(Lcom/google/protobuf/y2;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/y2;->v6(Lcom/google/protobuf/y2;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->m1()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->m1()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->I1()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->I1()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->q6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->q6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->q6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->q6()Lcom/google/protobuf/y2$c;

    move-result-object v0

    return-object v0
.end method

.method public e6()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->y6()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->y6()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Z1;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getNullValue()Lcom/google/protobuf/s1;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/s1;->a(I)Lcom/google/protobuf/s1;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/s1;->UNRECOGNIZED:Lcom/google/protobuf/s1;

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/protobuf/s1;->NULL_VALUE:Lcom/google/protobuf/s1;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v2, v1, :cond_1

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasNullValue()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    sget-object v0, Lcom/google/protobuf/Z1;->f:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/y2;

    const-class v2, Lcom/google/protobuf/y2$c;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()Lcom/google/protobuf/y2;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->I1()Lcom/google/protobuf/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/y2;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y2$c;->D6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->E6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y2$c;->D6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->E6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y2$c;->D6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y2$c;->D6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->I6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->I6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->I6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lcom/google/protobuf/y2$c;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/y2$c;->d:I

    iget-object v1, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_1
    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/y2$c;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public s5()D
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public s6()Lcom/google/protobuf/y2$c;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->T6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/y2$c;->T6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/y2$c;

    move-result-object p1

    return-object p1
.end method

.method public t2()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t6()Lcom/google/protobuf/y2$c;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->f:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/google/protobuf/y2$c;->b:I

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/google/protobuf/y2$c;->b:I

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public u2()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u6()Lcom/google/protobuf/y2$c;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public final v3(Lcom/google/protobuf/y2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    return-void
.end method

.method public v6()Lcom/google/protobuf/y2$c;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public w6()Lcom/google/protobuf/y2$c;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/y2$c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public x6()Lcom/google/protobuf/y2$c;
    .locals 5

    iget-object v0, p0, Lcom/google/protobuf/y2$c;->e:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/google/protobuf/y2$c;->b:I

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/protobuf/y2$c;->b:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/google/protobuf/y2$c;->b:I

    iput-object v1, p0, Lcom/google/protobuf/y2$c;->c:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public y6()Lcom/google/protobuf/y2;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/y2;->w6()Lcom/google/protobuf/y2;

    move-result-object v0

    return-object v0
.end method

.method public z6()Lcom/google/protobuf/M0$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/y2$c;->A6()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/M0$b;

    return-object v0
.end method
