.class public final Lcom/google/protobuf/i0$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/i0$b;",
        ">;",
        "Lcom/google/protobuf/n0;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:Z

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/u1;",
            "Lcom/google/protobuf/u1$b;",
            "Lcom/google/protobuf/v1;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/protobuf/i0$b;->c:I

    .line 5
    iput v0, p0, Lcom/google/protobuf/i0$b;->d:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/i0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i0$b;-><init>()V

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

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/protobuf/i0$b;->c:I

    .line 13
    iput p1, p0, Lcom/google/protobuf/i0$b;->d:I

    .line 14
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/i0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/i0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private I6()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    :cond_0
    return-void
.end method

.method private M6()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/u1;",
            "Lcom/google/protobuf/u1$b;",
            "Lcom/google/protobuf/v1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/k2;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method


# virtual methods
.method public A6()Lcom/google/protobuf/i0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/i0;->K6()Lcom/google/protobuf/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->v0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B6()Lcom/google/protobuf/i0$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/i0$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6()Lcom/google/protobuf/i0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/i0;->K6()Lcom/google/protobuf/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public D6()Lcom/google/protobuf/i0$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/i0$b;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E6()Lcom/google/protobuf/i0$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/i0$b;->h:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public F()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public F6()Lcom/google/protobuf/i0$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public G6()Lcom/google/protobuf/i0$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/i0$b;->i:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public H6()Lcom/google/protobuf/i0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/i0;->K6()Lcom/google/protobuf/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->O()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I1(ILcom/google/protobuf/u1$b;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->h:I

    return v0
.end method

.method public J6()Lcom/google/protobuf/i0;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/i0;->K6()Lcom/google/protobuf/i0;

    move-result-object v0

    return-object v0
.end method

.method public K()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public K6(I)Lcom/google/protobuf/u1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->M6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1$b;

    return-object p1
.end method

.method public L6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->M6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public N6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i0$b;
    .locals 3
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
    if-nez v0, :cond_2

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
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/google/protobuf/u1;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/u1;

    iget-object v2, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v2, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/i0$b;->i:Z

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/i0$b;->h:I

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/i0$b;->e:I

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/i0$b;->d:I

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/i0$b;->c:I

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I
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

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x22 -> :sswitch_7
        0x32 -> :sswitch_6
        0x38 -> :sswitch_5
        0x40 -> :sswitch_4
        0x4a -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method public O()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public O6(Lcom/google/protobuf/i0;)Lcom/google/protobuf/i0$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/i0;->K6()Lcom/google/protobuf/i0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/i0;->A6(Lcom/google/protobuf/i0;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/i0;->getKindValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/i0$b;->Z6(I)Lcom/google/protobuf/i0$b;

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/i0;->C6(Lcom/google/protobuf/i0;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/i0;->y1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/i0$b;->T6(I)Lcom/google/protobuf/i0$b;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->getNumber()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/i0;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/i0$b;->c7(I)Lcom/google/protobuf/i0$b;

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/i0;->F6(Lcom/google/protobuf/i0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/i0;->H6(Lcom/google/protobuf/i0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->J()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/i0;->J()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/i0$b;->d7(I)Lcom/google/protobuf/i0$b;

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->k0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/i0;->k0()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/i0$b;->g7(Z)Lcom/google/protobuf/i0$b;

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/google/protobuf/i0;->y6(Lcom/google/protobuf/i0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/google/protobuf/i0;->y6(Lcom/google/protobuf/i0;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/i0;->y6(Lcom/google/protobuf/i0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_9
    invoke-static {p1}, Lcom/google/protobuf/i0;->y6(Lcom/google/protobuf/i0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/i0;->y6(Lcom/google/protobuf/i0;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/protobuf/i0$b;->b:I

    sget-boolean v1, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->M6()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/i0;->y6(Lcom/google/protobuf/i0;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/google/protobuf/i0;->u6(Lcom/google/protobuf/i0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/i0;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/google/protobuf/i0;->w6(Lcom/google/protobuf/i0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->Q6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/i0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/i0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->O6(Lcom/google/protobuf/i0;)Lcom/google/protobuf/i0$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final Q6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;
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

    check-cast p1, Lcom/google/protobuf/i0$b;

    return-object p1
.end method

.method public R6(I)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public S6(Lcom/google/protobuf/i0$c;)Lcom/google/protobuf/i0$b;
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

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/i0$c;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/i0$b;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public T6(I)Lcom/google/protobuf/i0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/i0$b;->d:I

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public U6(Ljava/lang/String;)Lcom/google/protobuf/i0$b;
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

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public V6(Lcom/google/protobuf/x;)Lcom/google/protobuf/i0$b;
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

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public W6(Ljava/lang/String;)Lcom/google/protobuf/i0$b;
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

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public X6(Lcom/google/protobuf/x;)Lcom/google/protobuf/i0$b;
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

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Y6(Lcom/google/protobuf/i0$d;)Lcom/google/protobuf/i0$b;
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

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/i0$d;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/i0$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Z6(I)Lcom/google/protobuf/i0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/i0$b;->c:I

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public a5(Lcom/google/protobuf/u1$b;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public a7(Ljava/lang/String;)Lcom/google/protobuf/i0$b;
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

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public b7(Lcom/google/protobuf/x;)Lcom/google/protobuf/i0$b;
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

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->t6()Lcom/google/protobuf/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->t6()Lcom/google/protobuf/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->u6()Lcom/google/protobuf/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->u6()Lcom/google/protobuf/i0;

    move-result-object v0

    return-object v0
.end method

.method public c7(I)Lcom/google/protobuf/i0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/i0$b;->e:I

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->x6()Lcom/google/protobuf/i0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->x6()Lcom/google/protobuf/i0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->x6()Lcom/google/protobuf/i0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->x6()Lcom/google/protobuf/i0$b;

    move-result-object v0

    return-object v0
.end method

.method public d7(I)Lcom/google/protobuf/i0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/i0$b;->h:I

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public e7(ILcom/google/protobuf/u1$b;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public f7(ILcom/google/protobuf/u1;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public g7(Z)Lcom/google/protobuf/i0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/i0$b;->i:Z

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->J6()Lcom/google/protobuf/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->J6()Lcom/google/protobuf/i0;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/k2;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getKind()Lcom/google/protobuf/i0$d;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->c:I

    invoke-static {v0}, Lcom/google/protobuf/i0$d;->a(I)Lcom/google/protobuf/i0$d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/i0$d;->UNRECOGNIZED:Lcom/google/protobuf/i0$d;

    :cond_0
    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->c:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->e:I

    return v0
.end method

.method public h7(Ljava/lang/String;)Lcom/google/protobuf/i0$b;
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

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public i7(Lcom/google/protobuf/x;)Lcom/google/protobuf/i0$b;
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

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/i0$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    sget-object v0, Lcom/google/protobuf/k2;->d:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/i0;

    const-class v2, Lcom/google/protobuf/i0$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/u1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;
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

    check-cast p1, Lcom/google/protobuf/i0$b;

    return-object p1
.end method

.method public k(I)Lcom/google/protobuf/u1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1;

    return-object p1
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/i0$b;->i:Z

    return v0
.end method

.method public l(I)Lcom/google/protobuf/v1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/v1;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/v1;

    return-object p1
.end method

.method public m1(Ljava/lang/Iterable;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/u1;",
            ">;)",
            "Lcom/google/protobuf/i0$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i0$b;->N6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->P6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i0$b;->N6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->P6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i0$b;->N6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i0$b;->N6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->Q6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->Q6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->Q6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/v1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public q6(Lcom/google/protobuf/u1;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public r6()Lcom/google/protobuf/u1$b;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->M6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/u1;->w6()Lcom/google/protobuf/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u1$b;

    return-object v0
.end method

.method public s6(I)Lcom/google/protobuf/u1$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->M6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/u1;->w6()Lcom/google/protobuf/u1;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/u1$b;

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->j7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/i0$b;->j7(Lcom/google/protobuf/r2;)Lcom/google/protobuf/i0$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/i0;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/i0$b;->u6()Lcom/google/protobuf/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public u3()Lcom/google/protobuf/i0$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->d:I

    invoke-static {v0}, Lcom/google/protobuf/i0$c;->a(I)Lcom/google/protobuf/i0$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/i0$c;->UNRECOGNIZED:Lcom/google/protobuf/i0$c;

    :cond_0
    return-object v0
.end method

.method public u6()Lcom/google/protobuf/i0;
    .locals 2

    new-instance v0, Lcom/google/protobuf/i0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/i0;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/i0$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/i0$b;->w6(Lcom/google/protobuf/i0;)V

    iget v1, p0, Lcom/google/protobuf/i0$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/i0$b;->v6(Lcom/google/protobuf/i0;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public v3(ILcom/google/protobuf/u1;)Lcom/google/protobuf/i0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/protobuf/i0$b;->I6()V

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final v6(Lcom/google/protobuf/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/i0$b;->c:I

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->B6(Lcom/google/protobuf/i0;I)I

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/i0$b;->d:I

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->D6(Lcom/google/protobuf/i0;I)I

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/i0$b;->e:I

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->E6(Lcom/google/protobuf/i0;I)I

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->G6(Lcom/google/protobuf/i0;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->I6(Lcom/google/protobuf/i0;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/protobuf/i0$b;->h:I

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->J6(Lcom/google/protobuf/i0;I)I

    :cond_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/protobuf/i0$b;->i:Z

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->t6(Lcom/google/protobuf/i0;Z)Z

    :cond_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/i0;->v6(Lcom/google/protobuf/i0;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/protobuf/i0;->x6(Lcom/google/protobuf/i0;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public final w6(Lcom/google/protobuf/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/i0;->z6(Lcom/google/protobuf/i0;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/i0;->z6(Lcom/google/protobuf/i0;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method

.method public x6()Lcom/google/protobuf/i0$b;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    iput v0, p0, Lcom/google/protobuf/i0$b;->c:I

    iput v0, p0, Lcom/google/protobuf/i0$b;->d:I

    iput v0, p0, Lcom/google/protobuf/i0$b;->e:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->g:Ljava/lang/Object;

    iput v0, p0, Lcom/google/protobuf/i0$b;->h:I

    iput-boolean v0, p0, Lcom/google/protobuf/i0$b;->i:Z

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->k:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/protobuf/i0$b;->j:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public y0()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->l:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public y1()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->d:I

    return v0
.end method

.method public y6()Lcom/google/protobuf/i0$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/i0$b;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z6()Lcom/google/protobuf/i0$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/i0;->K6()Lcom/google/protobuf/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i0;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/i0$b;->m:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/i0$b;->b:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/protobuf/i0$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
