.class public final Lr3/a$d$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lr3/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lr3/a$d$b;",
        ">;",
        "Lr3/a$e;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:J

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr3/a$d$d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lr3/a$d$d;",
            "Lr3/a$d$d$b;",
            "Lr3/a$d$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

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

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr3/a$d$b;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lr3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr3/a$d$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr3/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lr3/a$d$b;-><init>()V

    return-void
.end method

.method private B6()V
    .locals 2

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$d$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr3/a$d$b;->b:I

    :cond_0
    return-void
.end method

.method private F6()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lr3/a$d$d;",
            "Lr3/a$d$d$b;",
            "Lr3/a$d$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lr3/a$d$b;->e:Ljava/util/List;

    iget v2, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lr3/a;->e()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lr3/a$d$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public A6()Lr3/a$d$b;
    .locals 2

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lr3/a$d$b;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr3/a$d$b;->d:J

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6()Lr3/a$d;
    .locals 1

    invoke-static {}, Lr3/a$d;->A6()Lr3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public D6(I)Lr3/a$d$d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lr3/a$d$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lr3/a$d$d$b;

    return-object p1
.end method

.method public E6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr3/a$d$d$b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lr3/a$d$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public G6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$d$b;
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
    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    const/16 v3, 0x7a

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
    sget-object v1, Lr3/a$d$d;->n:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lr3/a$d$d;

    iget-object v2, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v2, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->b0()J

    move-result-wide v1

    iput-wide v1, p0, Lr3/a$d$b;->d:J

    iget v1, p0, Lr3/a$d$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lr3/a$d$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    iget v1, p0, Lr3/a$d$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lr3/a$d$b;->b:I
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

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public H6(Lcom/google/protobuf/Y0;)Lr3/a$d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lr3/a$d;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/a$d;

    invoke-virtual {p0, p1}, Lr3/a$d$b;->I6(Lr3/a$d;)Lr3/a$d$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public I1(ILr3/a$d$d$b;)Lr3/a$d$b;
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

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-virtual {p2}, Lr3/a$d$d$b;->m1()Lr3/a$d$d;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lr3/a$d$d$b;->m1()Lr3/a$d$d;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public I6(Lr3/a$d;)Lr3/a$d$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lr3/a$d;->A6()Lr3/a$d;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lr3/a$d;->s4()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lr3/a$d;->v6(Lr3/a$d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    iget v0, p0, Lr3/a$d$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr3/a$d$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lr3/a$d;->a1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lr3/a$d;->h5()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lr3/a$d$b;->P6(J)Lr3/a$d$b;

    :cond_2
    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_4

    invoke-static {p1}, Lr3/a$d;->t6(Lr3/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lr3/a$d;->t6(Lr3/a$d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$d$b;->b:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-static {p1}, Lr3/a$d;->t6(Lr3/a$d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lr3/a$d;->t6(Lr3/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lr3/a$d;->t6(Lr3/a$d;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lr3/a$d$b;->e:Ljava/util/List;

    iget v1, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lr3/a$d$b;->b:I

    invoke-static {}, Lr3/a$d;->z6()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lr3/a$d$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lr3/a$d;->t6(Lr3/a$d;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr3/a$d$b;->J6(Lcom/google/protobuf/r2;)Lr3/a$d$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public J4()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public final J6(Lcom/google/protobuf/r2;)Lr3/a$d$b;
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

    check-cast p1, Lr3/a$d$b;

    return-object p1
.end method

.method public K6(I)Lr3/a$d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public L6(Ljava/lang/String;)Lr3/a$d$b;
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

    iput-object p1, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    iget p1, p0, Lr3/a$d$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr3/a$d$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public M6(Lcom/google/protobuf/x;)Lr3/a$d$b;
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

    iput-object p1, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    iget p1, p0, Lr3/a$d$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr3/a$d$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public N6(ILr3/a$d$d$b;)Lr3/a$d$b;
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

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-virtual {p2}, Lr3/a$d$d$b;->m1()Lr3/a$d$d;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lr3/a$d$d$b;->m1()Lr3/a$d$d;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public O6(ILr3/a$d$d;)Lr3/a$d$b;
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

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public P6(J)Lr3/a$d$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-wide p1, p0, Lr3/a$d$b;->d:J

    iget p1, p0, Lr3/a$d$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr3/a$d$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final Q6(Lcom/google/protobuf/r2;)Lr3/a$d$b;
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

    check-cast p1, Lr3/a$d$b;

    return-object p1
.end method

.method public U()I
    .locals 1

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public V(I)Lr3/a$d$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr3/a$d$d;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lr3/a$d$d;

    return-object p1
.end method

.method public a1()Z
    .locals 1

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a5(Lr3/a$d$d$b;)Lr3/a$d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-virtual {p1}, Lr3/a$d$d$b;->m1()Lr3/a$d$d;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lr3/a$d$d$b;->m1()Lr3/a$d$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$d$b;->t6()Lr3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$d$b;->t6()Lr3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$d$b;->u6()Lr3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$d$b;->u6()Lr3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lr3/a$d$b;->x6()Lr3/a$d$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$d$b;->x6()Lr3/a$d$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lr3/a$d$b;->x6()Lr3/a$d$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$d$b;->x6()Lr3/a$d$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$d$b;->C6()Lr3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$d$b;->C6()Lr3/a$d;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lr3/a;->e()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h5()J
    .locals 2

    iget-wide v0, p0, Lr3/a$d$b;->d:J

    return-wide v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lr3/a;->f()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lr3/a$d;

    const-class v2, Lr3/a$d$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1(Ljava/lang/Iterable;)Lr3/a$d$b;
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
            "Lr3/a$d$d;",
            ">;)",
            "Lr3/a$d$b;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$d$b;->G6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$b;->H6(Lcom/google/protobuf/Y0;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$d$b;->G6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$b;->H6(Lcom/google/protobuf/Y0;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$d$b;->G6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$d$b;->G6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$b;->J6(Lcom/google/protobuf/r2;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$b;->J6(Lcom/google/protobuf/r2;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$b;->J6(Lcom/google/protobuf/r2;)Lr3/a$d$b;

    move-result-object p1

    return-object p1
.end method

.method public n0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr3/a$d$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public q0(I)Lr3/a$d$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr3/a$d$e;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lr3/a$d$e;

    return-object p1
.end method

.method public q6(Lr3/a$d$d;)Lr3/a$d$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public r6()Lr3/a$d$d$b;
    .locals 2

    invoke-direct {p0}, Lr3/a$d$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lr3/a$d$d;->C6()Lr3/a$d$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lr3/a$d$d$b;

    return-object v0
.end method

.method public s4()Z
    .locals 2

    iget v0, p0, Lr3/a$d$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public s6(I)Lr3/a$d$d$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lr3/a$d$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lr3/a$d$d;->C6()Lr3/a$d$d;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lr3/a$d$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$b;->Q6(Lcom/google/protobuf/r2;)Lr3/a$d$b;

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
    invoke-virtual {p0, p1}, Lr3/a$d$b;->Q6(Lcom/google/protobuf/r2;)Lr3/a$d$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lr3/a$d;
    .locals 2

    invoke-virtual {p0}, Lr3/a$d$b;->u6()Lr3/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lr3/a$d;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public u6()Lr3/a$d;
    .locals 2

    new-instance v0, Lr3/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr3/a$d;-><init>(Lcom/google/protobuf/w0$b;Lr3/a$a;)V

    invoke-virtual {p0, v0}, Lr3/a$d$b;->w6(Lr3/a$d;)V

    iget v1, p0, Lr3/a$d$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lr3/a$d$b;->v6(Lr3/a$d;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public v3(ILr3/a$d$d;)Lr3/a$d$b;
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

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lr3/a$d$b;->B6()V

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final v6(Lr3/a$d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lr3/a$d;->w6(Lr3/a$d;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lr3/a$d$b;->d:J

    invoke-static {p1, v2, v3}, Lr3/a$d;->x6(Lr3/a$d;J)J

    or-int/lit8 v1, v1, 0x2

    :cond_1
    invoke-static {p1, v1}, Lr3/a$d;->y6(Lr3/a$d;I)I

    return-void
.end method

.method public final w6(Lr3/a$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$d$b;->b:I

    :cond_0
    iget-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lr3/a$d;->u6(Lr3/a$d;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lr3/a$d;->u6(Lr3/a$d;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method

.method public x6()Lr3/a$d$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lr3/a$d$b;->b:I

    const-string v0, ""

    iput-object v0, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr3/a$d$b;->d:J

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lr3/a$d$b;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$d$b;->b:I

    return-object p0
.end method

.method public y6()Lr3/a$d$b;
    .locals 1

    invoke-static {}, Lr3/a$d;->A6()Lr3/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lr3/a$d;->getError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->c:Ljava/lang/Object;

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lr3/a$d$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z6()Lr3/a$d$b;
    .locals 1

    iget-object v0, p0, Lr3/a$d$b;->f:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr3/a$d$b;->e:Ljava/util/List;

    iget v0, p0, Lr3/a$d$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$d$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method
