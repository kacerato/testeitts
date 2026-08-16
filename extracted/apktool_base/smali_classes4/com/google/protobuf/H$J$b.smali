.class public final Lcom/google/protobuf/H$J$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$K;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/H$J$b;",
        ">;",
        "Lcom/google/protobuf/H$K;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$B;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$B;",
            "Lcom/google/protobuf/H$B$b;",
            "Lcom/google/protobuf/H$C;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/google/protobuf/H$L;

.field public g:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$L;",
            "Lcom/google/protobuf/H$L$b;",
            "Lcom/google/protobuf/H$M;",
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

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/H$J$b;->I6()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$J$b;-><init>()V

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

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/H$J$b;->I6()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$J$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private H6()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$L;",
            "Lcom/google/protobuf/H$L$b;",
            "Lcom/google/protobuf/H$M;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->getOptions()Lcom/google/protobuf/H$L;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private I6()V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->F6()Lcom/google/protobuf/G1;

    invoke-direct {p0}, Lcom/google/protobuf/H$J$b;->H6()Lcom/google/protobuf/Q1;

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->e()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A6()Lcom/google/protobuf/H$J$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    iget-object v1, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final B6()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    :cond_0
    return-void
.end method

.method public C6()Lcom/google/protobuf/H$J;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$J;->z6()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public D6(I)Lcom/google/protobuf/H$B$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$B$b;

    return-object p1
.end method

.method public E6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$B$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final F6()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/google/protobuf/H$B;",
            "Lcom/google/protobuf/H$B$b;",
            "Lcom/google/protobuf/H$C;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v2, v2, 0x2

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

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public G6()Lcom/google/protobuf/H$L$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/H$J$b;->H6()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$L$b;

    return-object v0
.end method

.method public I1(ILcom/google/protobuf/H$B$b;)Lcom/google/protobuf/H$J$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public J6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$J$b;
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

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1a

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
    invoke-direct {p0}, Lcom/google/protobuf/H$J$b;->H6()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/H$J$b;->b:I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/protobuf/H$B;->r:Lcom/google/protobuf/w1;

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/H$B;

    iget-object v2, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v2, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$J$b;->b:I
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

.method public K6(Lcom/google/protobuf/H$J;)Lcom/google/protobuf/H$J$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$J;->z6()Lcom/google/protobuf/H$J;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$J;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/H$J;->v6(Lcom/google/protobuf/H$J;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/H$J;->t6(Lcom/google/protobuf/H$J;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/H$J;->t6(Lcom/google/protobuf/H$J;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/H$J;->t6(Lcom/google/protobuf/H$J;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/H$J;->t6(Lcom/google/protobuf/H$J;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$J;->t6(Lcom/google/protobuf/H$J;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protobuf/H$J$b;->b:I

    sget-boolean v1, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/google/protobuf/H$J;->t6(Lcom/google/protobuf/H$J;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$J;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/H$J;->getOptions()Lcom/google/protobuf/H$L;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$J$b;->M6(Lcom/google/protobuf/H$L;)Lcom/google/protobuf/H$J$b;

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->N6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public L5()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public L6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$J$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$J;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$J;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->K6(Lcom/google/protobuf/H$J;)Lcom/google/protobuf/H$J$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public M6(Lcom/google/protobuf/H$L;)Lcom/google/protobuf/H$J$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$L;->G6()Lcom/google/protobuf/H$L;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->G6()Lcom/google/protobuf/H$L$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/H$L$b;->f7(Lcom/google/protobuf/H$L;)Lcom/google/protobuf/H$L$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final N6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;
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

    check-cast p1, Lcom/google/protobuf/H$J$b;

    return-object p1
.end method

.method public O6(I)Lcom/google/protobuf/H$J$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public P6(ILcom/google/protobuf/H$B$b;)Lcom/google/protobuf/H$J$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public Q6(ILcom/google/protobuf/H$B;)Lcom/google/protobuf/H$J$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public R6(Ljava/lang/String;)Lcom/google/protobuf/H$J$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public S6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$J$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public T6(Lcom/google/protobuf/H$L$b;)Lcom/google/protobuf/H$J$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/H$L$b;->S6()Lcom/google/protobuf/H$L;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$L$b;->S6()Lcom/google/protobuf/H$L;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public U6(Lcom/google/protobuf/H$L;)Lcom/google/protobuf/H$J$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final V6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;
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

    check-cast p1, Lcom/google/protobuf/H$J$b;

    return-object p1
.end method

.method public a3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/H$B;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a5(Lcom/google/protobuf/H$B$b;)Lcom/google/protobuf/H$J$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->t6()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->u6()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->u6()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->x6()Lcom/google/protobuf/H$J$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->x6()Lcom/google/protobuf/H$J$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->x6()Lcom/google/protobuf/H$J$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->x6()Lcom/google/protobuf/H$J$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/google/protobuf/H$M;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$M;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/H$L;->G6()Lcom/google/protobuf/H$L;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public f6(I)Lcom/google/protobuf/H$B;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$B;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$B;

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->C6()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->C6()Lcom/google/protobuf/H$J;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->e()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/H$L;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$L;->G6()Lcom/google/protobuf/H$L;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$L;

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

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

    invoke-static {}, Lcom/google/protobuf/H;->f()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$J;

    const-class v2, Lcom/google/protobuf/H$J$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->L5()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/H$J$b;->f6(I)Lcom/google/protobuf/H$B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/H$B;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->getOptions()Lcom/google/protobuf/H$L;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/H$L;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public m1(Ljava/lang/Iterable;)Lcom/google/protobuf/H$J$b;
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
            "Lcom/google/protobuf/H$B;",
            ">;)",
            "Lcom/google/protobuf/H$J$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$J$b;->J6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->L6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$J$b;->J6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->L6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$J$b;->J6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$J$b;->J6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->N6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->N6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->N6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;

    move-result-object p1

    return-object p1
.end method

.method public q6(Lcom/google/protobuf/H$B;)Lcom/google/protobuf/H$J$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public r6()Lcom/google/protobuf/H$B$b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$B;->D6()Lcom/google/protobuf/H$B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$B$b;

    return-object v0
.end method

.method public s3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/H$C;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public s6(I)Lcom/google/protobuf/H$B$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->F6()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$B;->D6()Lcom/google/protobuf/H$B;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->V6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$J$b;->V6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$J$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/H$J;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->u6()Lcom/google/protobuf/H$J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$J;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public u6()Lcom/google/protobuf/H$J;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$J;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$J$b;->w6(Lcom/google/protobuf/H$J;)V

    iget v1, p0, Lcom/google/protobuf/H$J$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$J$b;->v6(Lcom/google/protobuf/H$J;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public v3(ILcom/google/protobuf/H$B;)Lcom/google/protobuf/H$J$b;
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

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$J$b;->B6()V

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public final v6(Lcom/google/protobuf/H$J;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/H$J;->w6(Lcom/google/protobuf/H$J;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$L;

    :goto_1
    invoke-static {p1, v0}, Lcom/google/protobuf/H$J;->x6(Lcom/google/protobuf/H$J;Lcom/google/protobuf/H$L;)Lcom/google/protobuf/H$L;

    or-int/lit8 v1, v1, 0x2

    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/H$J;->y6(Lcom/google/protobuf/H$J;I)I

    return-void
.end method

.method public final w6(Lcom/google/protobuf/H$J;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$J;->u6(Lcom/google/protobuf/H$J;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/H$J;->u6(Lcom/google/protobuf/H$J;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method

.method public x3(I)Lcom/google/protobuf/H$C;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$C;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/H$C;

    return-object p1
.end method

.method public x6()Lcom/google/protobuf/H$J$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    iput-object v1, p0, Lcom/google/protobuf/H$J$b;->f:Lcom/google/protobuf/H$L;

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->d()V

    iput-object v1, p0, Lcom/google/protobuf/H$J$b;->g:Lcom/google/protobuf/Q1;

    :cond_1
    return-object p0
.end method

.method public y6()Lcom/google/protobuf/H$J$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$J$b;->e:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public z6()Lcom/google/protobuf/H$J$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$J;->z6()Lcom/google/protobuf/H$J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$J;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$J$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$J$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
