.class public final Lcom/google/protobuf/H$n$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/H$n$b;",
        ">;",
        "Lcom/google/protobuf/H$o;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public k:Ljava/lang/Object;

.field public l:Lcom/google/protobuf/H$p;

.field public m:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$p;",
            "Lcom/google/protobuf/H$p$b;",
            "Lcom/google/protobuf/H$q;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/protobuf/H$n$b;->e:I

    .line 6
    iput v1, p0, Lcom/google/protobuf/H$n$b;->f:I

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/H$n$b;->E6()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$n$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 13
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/google/protobuf/H$n$b;->e:I

    .line 15
    iput v0, p0, Lcom/google/protobuf/H$n$b;->f:I

    .line 16
    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/H$n$b;->E6()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$n$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private D6()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$p;",
            "Lcom/google/protobuf/H$p$b;",
            "Lcom/google/protobuf/H$q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private E6()V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$n$b;->D6()Lcom/google/protobuf/Q1;

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->T()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A6()Lcom/google/protobuf/H$n$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B6()Lcom/google/protobuf/H$n;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public C6()Lcom/google/protobuf/H$p$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/H$n$b;->D6()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$p$b;

    return-object v0
.end method

.method public F()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public F6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n$b;
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
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$n$b;->n:Z

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/H$n$b;->j:I

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/H$n$b;->D6()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$n$d;->a(I)Lcom/google/protobuf/H$n$d;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/protobuf/H$n$b;->f:I

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$n$c;->a(I)Lcom/google/protobuf/H$n$c;

    move-result-object v2

    const/4 v3, 0x4

    if-nez v2, :cond_2

    invoke-virtual {p0, v3, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto/16 :goto_0

    :cond_2
    iput v1, p0, Lcom/google/protobuf/H$n$b;->e:I

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/H$n$b;->d:I

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$n$b;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

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

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x32 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x48 -> :sswitch_3
        0x52 -> :sswitch_2
        0x88 -> :sswitch_1
    .end sparse-switch
.end method

.method public G6(Lcom/google/protobuf/H$n;)Lcom/google/protobuf/H$n$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/H$n;->t6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->p0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$n$b;->T6(I)Lcom/google/protobuf/H$n$b;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->N0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getLabel()Lcom/google/protobuf/H$n$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$n$b;->Q6(Lcom/google/protobuf/H$n$c;)Lcom/google/protobuf/H$n$b;

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->j2()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getType()Lcom/google/protobuf/H$n$d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$n$b;->Y6(Lcom/google/protobuf/H$n$d;)Lcom/google/protobuf/H$n$b;

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->n4()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/H$n;->y6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->W3()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/google/protobuf/H$n;->A6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->h3()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/H$n;->C6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->z5()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->J()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$n$b;->U6(I)Lcom/google/protobuf/H$n$b;

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->w3()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/google/protobuf/H$n;->F6(Lcom/google/protobuf/H$n;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$n$b;->I6(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$n$b;

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->S3()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/protobuf/H$n;->c2()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$n$b;->X6(Z)Lcom/google/protobuf/H$n$b;

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->J6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public H6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$n$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$n;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->G6(Lcom/google/protobuf/H$n;)Lcom/google/protobuf/H$n$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public I1()Lcom/google/protobuf/H$n;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$n;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V

    iget v1, p0, Lcom/google/protobuf/H$n$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$n$b;->v3(Lcom/google/protobuf/H$n;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public I2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public I5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public I6(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$n$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$p;->P6()Lcom/google/protobuf/H$p;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->C6()Lcom/google/protobuf/H$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/H$p$b;->o7(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->j:I

    return v0
.end method

.method public final J6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;
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

    check-cast p1, Lcom/google/protobuf/H$n$b;

    return-object p1
.end method

.method public K6(Ljava/lang/String;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public L6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public M6(Ljava/lang/String;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public N0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public O6(Ljava/lang/String;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Q6(Lcom/google/protobuf/H$n$c;)Lcom/google/protobuf/H$n$b;
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

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$n$c;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$n$b;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public R6(Ljava/lang/String;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public S3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public T6(I)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/H$n$b;->d:I

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public U6(I)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/H$n$b;->j:I

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public V6(Lcom/google/protobuf/H$p$b;)Lcom/google/protobuf/H$n$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/H$p$b;->S6()Lcom/google/protobuf/H$p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$p$b;->S6()Lcom/google/protobuf/H$p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public W3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W6(Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$n$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public X6(Z)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$n$b;->n:Z

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y6(Lcom/google/protobuf/H$n$d;)Lcom/google/protobuf/H$n$b;
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

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$n$d;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$n$b;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Z6(Ljava/lang/String;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a5()Lcom/google/protobuf/H$n$b;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    iput v0, p0, Lcom/google/protobuf/H$n$b;->d:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/protobuf/H$n$b;->e:I

    iput v2, p0, Lcom/google/protobuf/H$n$b;->f:I

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    iput v0, p0, Lcom/google/protobuf/H$n$b;->j:I

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    iget-object v2, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->d()V

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    :cond_0
    iput-boolean v0, p0, Lcom/google/protobuf/H$n$b;->n:Z

    return-object p0
.end method

.method public a7(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$n$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final b7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;
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

    check-cast p1, Lcom/google/protobuf/H$n$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->m1()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->I1()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->I1()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public c2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$n$b;->n:Z

    return v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->a5()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->a5()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->a5()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->a5()Lcom/google/protobuf/H$n$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/google/protobuf/H$q;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$q;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/H$p;->P6()Lcom/google/protobuf/H$p;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->B6()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->B6()Lcom/google/protobuf/H$n;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->T()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/google/protobuf/H$n$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->e:I

    invoke-static {v0}, Lcom/google/protobuf/H$n$c;->a(I)Lcom/google/protobuf/H$n$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$n$c;->LABEL_OPTIONAL:Lcom/google/protobuf/H$n$c;

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->d:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/H$p;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$p;->P6()Lcom/google/protobuf/H$p;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$p;

    return-object v0
.end method

.method public getType()Lcom/google/protobuf/H$n$d;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->f:I

    invoke-static {v0}, Lcom/google/protobuf/H$n$d;->a(I)Lcom/google/protobuf/H$n$d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$n$d;->TYPE_DOUBLE:Lcom/google/protobuf/H$n$d;

    :cond_0
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->U()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$n;

    const-class v2, Lcom/google/protobuf/H$n$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->getOptions()Lcom/google/protobuf/H$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public j2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m1()Lcom/google/protobuf/H$n;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$n$b;->I1()Lcom/google/protobuf/H$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$n$b;->F6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->H6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$n$b;->F6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->H6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$n$b;->F6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$n$b;->F6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->J6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->J6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->J6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;

    move-result-object p1

    return-object p1
.end method

.method public n4()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p0()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q6()Lcom/google/protobuf/H$n$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/H$n$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->I5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6()Lcom/google/protobuf/H$n$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->v0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->b7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$n$b;->b7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$n$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/H$n$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$n$b;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u6()Lcom/google/protobuf/H$n$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$n;->K6()Lcom/google/protobuf/H$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$n;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public v0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final v3(Lcom/google/protobuf/H$n;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$n$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/H$n;->u6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/protobuf/H$n$b;->d:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->v6(Lcom/google/protobuf/H$n;I)I

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/H$n$b;->e:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->w6(Lcom/google/protobuf/H$n;I)I

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/protobuf/H$n$b;->f:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->x6(Lcom/google/protobuf/H$n;I)I

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->z6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/protobuf/H$n$b;->h:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->B6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x20

    :cond_5
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/H$n$b;->i:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->D6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x40

    :cond_6
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/google/protobuf/H$n$b;->j:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->E6(Lcom/google/protobuf/H$n;I)I

    or-int/lit16 v1, v1, 0x80

    :cond_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->G6(Lcom/google/protobuf/H$n;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit16 v1, v1, 0x100

    :cond_8
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/H$p;

    :goto_1
    invoke-static {p1, v2}, Lcom/google/protobuf/H$n;->H6(Lcom/google/protobuf/H$n;Lcom/google/protobuf/H$p;)Lcom/google/protobuf/H$p;

    or-int/lit16 v1, v1, 0x200

    :cond_a
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/protobuf/H$n$b;->n:Z

    invoke-static {p1, v0}, Lcom/google/protobuf/H$n;->I6(Lcom/google/protobuf/H$n;Z)Z

    or-int/lit16 v1, v1, 0x400

    :cond_b
    invoke-static {p1, v1}, Lcom/google/protobuf/H$n;->J6(Lcom/google/protobuf/H$n;I)I

    return-void
.end method

.method public v6()Lcom/google/protobuf/H$n$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$n$b;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public w3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w6()Lcom/google/protobuf/H$n$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$n$b;->j:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public x5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public x6()Lcom/google/protobuf/H$n$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->l:Lcom/google/protobuf/H$p;

    iget-object v1, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->m:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public y0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$n$b;->k:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public y6()Lcom/google/protobuf/H$n$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$n$b;->n:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z5()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z6()Lcom/google/protobuf/H$n$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$n$b;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$n$b;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
