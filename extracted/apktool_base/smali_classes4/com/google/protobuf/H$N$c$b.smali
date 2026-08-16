.class public final Lcom/google/protobuf/H$N$c$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$N$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$N$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/H$N$c$b;",
        ">;",
        "Lcom/google/protobuf/H$N$d;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/google/protobuf/D0$g;

.field public d:Lcom/google/protobuf/D0$g;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Lcom/google/protobuf/J0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    .line 5
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$N$c$b;-><init>()V

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

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 10
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    .line 11
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    .line 12
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$N$c$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private E6()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Lcom/google/protobuf/w0;->mutableCopy(Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->F()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$N$c;->E6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$N$c;->Z0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final D6()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->hc()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/J0;

    iget-object v1, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-direct {v0, v1}, Lcom/google/protobuf/J0;-><init>(Lcom/google/protobuf/K0;)V

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    :cond_0
    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    return-void
.end method

.method public F1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public F6()Lcom/google/protobuf/H$N$c;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$N$c;->E6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public G2(I)Lcom/google/protobuf/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->ub(I)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public G6()Lcom/google/protobuf/C1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/d;->r9()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    return-object v0
.end method

.method public H6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c$b;
    .locals 5
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
    if-nez v0, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_a

    const/16 v4, 0xa

    if-eq v1, v4, :cond_8

    const/16 v4, 0x10

    if-eq v1, v4, :cond_7

    const/16 v4, 0x12

    if-eq v1, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_4

    const/16 v4, 0x22

    if-eq v1, v4, :cond_3

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

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->D6()V

    iget-object v2, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/J0;->b3(Lcom/google/protobuf/x;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->O()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->u(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->ensureSpanIsMutable()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->t(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->ensureSpanIsMutable()V

    iget-object v2, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->O()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->u(I)I

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/H$N$c$b;->E6()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->t(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/H$N$c$b;->E6()V

    iget-object v2, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->Cc(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public I1(Ljava/lang/Iterable;)Lcom/google/protobuf/H$N$c$b;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/H$N$c$b;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$N$c$b;->E6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/H$N$c$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$N$c;->E6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->t6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->t6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/H$N$c$b;->E6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->t6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->v6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->v6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->ensureSpanIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->v6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/D0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->v2()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->x6(Lcom/google/protobuf/H$N$c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/H$N$c;->o2()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->z6(Lcom/google/protobuf/H$N$c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_6
    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->B6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/J0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->B6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->D6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-static {p1}, Lcom/google/protobuf/H$N$c;->B6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/J0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/J0;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public J6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$N$c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$N$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$N$c;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->I6(Lcom/google/protobuf/H$N$c;)Lcom/google/protobuf/H$N$c$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;
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

    check-cast p1, Lcom/google/protobuf/H$N$c$b;

    return-object p1
.end method

.method public L6(Ljava/lang/String;)Lcom/google/protobuf/H$N$c$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public M6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$N$c$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public N6(ILjava/lang/String;)Lcom/google/protobuf/H$N$c$b;
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

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->D6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/J0;->r(ILjava/lang/String;)Ljava/lang/String;

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public O6(II)Lcom/google/protobuf/H$N$c$b;
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

    invoke-direct {p0}, Lcom/google/protobuf/H$N$c$b;->E6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/D0$g;->setInt(II)I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public P6(II)Lcom/google/protobuf/H$N$c$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->ensureSpanIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/D0$g;->setInt(II)I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public Q6(Ljava/lang/String;)Lcom/google/protobuf/H$N$c$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public R1()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/J0;->size()I

    move-result v0

    return v0
.end method

.method public R6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$N$c$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public S()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    :goto_0
    return-object v0
.end method

.method public final S6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;
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

    check-cast p1, Lcom/google/protobuf/H$N$c$b;

    return-object p1
.end method

.method public V2()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public Z0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a5(Ljava/lang/String;)Lcom/google/protobuf/H$N$c$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->D6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->t6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->t6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->u6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->u6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->x6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->x6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->x6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->x6()Lcom/google/protobuf/H$N$c$b;

    move-result-object v0

    return-object v0
.end method

.method public final ensureSpanIsMutable()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Lcom/google/protobuf/w0;->mutableCopy(Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    :cond_0
    return-void
.end method

.method public f5(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->F6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->F6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->F()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getSpan(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    :goto_0
    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->G()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$N$c;

    const-class v2, Lcom/google/protobuf/H$N$c$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic l1()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->G6()Lcom/google/protobuf/C1;

    move-result-object v0

    return-object v0
.end method

.method public m1(Ljava/lang/Iterable;)Lcom/google/protobuf/H$N$c$b;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protobuf/H$N$c$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->D6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$N$c$b;->H6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->J6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$N$c$b;->H6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->J6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$N$c$b;->H6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$N$c$b;->H6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;

    move-result-object p1

    return-object p1
.end method

.method public o0()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public o2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$N$c$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->D6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/J0;->b3(Lcom/google/protobuf/x;)V

    iget p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6(I)Lcom/google/protobuf/H$N$c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/H$N$c$b;->E6()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->Cc(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6(I)Lcom/google/protobuf/H$N$c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->ensureSpanIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->Cc(I)V

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->S6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$N$c$b;->S6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$N$c$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/H$N$c;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->u6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$N$c;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public u6()Lcom/google/protobuf/H$N$c;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$N$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$N$c;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$N$c$b;->w6(Lcom/google/protobuf/H$N$c;)V

    iget v1, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$N$c$b;->v6(Lcom/google/protobuf/H$N$c;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public v2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v3(Ljava/lang/Iterable;)Lcom/google/protobuf/H$N$c$b;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/H$N$c$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$N$c$b;->ensureSpanIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final v6(Lcom/google/protobuf/H$N$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/H$N$c;->y6(Lcom/google/protobuf/H$N$c;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$N$c;->A6(Lcom/google/protobuf/H$N$c;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-virtual {v0}, Lcom/google/protobuf/d;->r9()V

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$N$c;->C6(Lcom/google/protobuf/H$N$c;Lcom/google/protobuf/J0;)Lcom/google/protobuf/J0;

    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/H$N$c;->D6(Lcom/google/protobuf/H$N$c;I)I

    return-void
.end method

.method public w5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public final w6(Lcom/google/protobuf/H$N$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Lcom/google/protobuf/D0$k;->r9()V

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$N$c;->u6(Lcom/google/protobuf/H$N$c;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Lcom/google/protobuf/D0$k;->r9()V

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$N$c;->w6(Lcom/google/protobuf/H$N$c;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    return-void
.end method

.method public x6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->d:Lcom/google/protobuf/D0$g;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->f:Ljava/lang/Object;

    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    return-object p0
.end method

.method public y6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$N$c;->E6()Lcom/google/protobuf/H$N$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$N$c;->F1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z6()Lcom/google/protobuf/H$N$c$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/J0;->n()Lcom/google/protobuf/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$N$c$b;->g:Lcom/google/protobuf/J0;

    iget v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$N$c$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
