.class public final Lcom/google/protobuf/H$x$b$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$x$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/H$x$b$b;",
        ">;",
        "Lcom/google/protobuf/H$x$c;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/google/protobuf/D0$g;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$x$b$b;-><init>()V

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
    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$x$b$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->L()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b$b;
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
    if-nez v0, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_9

    const/16 v4, 0xa

    if-eq v1, v4, :cond_7

    const/16 v4, 0x12

    if-eq v1, v4, :cond_6

    const/16 v4, 0x18

    if-eq v1, v4, :cond_5

    const/16 v4, 0x20

    if-eq v1, v4, :cond_4

    const/16 v3, 0x28

    if-eq v1, v3, :cond_2

    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/H$x$b$c;->a(I)Lcom/google/protobuf/H$x$b$c;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/w0$b;->mergeUnknownVarintField(II)V

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/google/protobuf/H$x$b$b;->g:I

    iget v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/H$x$b$b;->f:I

    iget v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/H$x$b$b;->e:I

    iget v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->O()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->u(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->y6()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/D0$g;->Cc(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->t(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->y6()V

    iget-object v2, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$g;->Cc(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B5()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/H$x$b$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$x$b;->B6()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/H$x$b;->t6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/H$x$b;->t6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->y6()V

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {p1}, Lcom/google/protobuf/H$x$b;->t6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/D0$g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->hasSourceFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/H$x$b;->v6(Lcom/google/protobuf/H$x$b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->B5()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->getBegin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$x$b$b;->E6(I)Lcom/google/protobuf/H$x$b$b;

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->getEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$x$b$b;->F6(I)Lcom/google/protobuf/H$x$b$b;

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->q1()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b;->Y0()Lcom/google/protobuf/H$x$b$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$x$b$b;->H6(Lcom/google/protobuf/H$x$b$c;)Lcom/google/protobuf/H$x$b$b;

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->D6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$x$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$x$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$x$b;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->B6(Lcom/google/protobuf/H$x$b;)Lcom/google/protobuf/H$x$b$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final D6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;
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

    check-cast p1, Lcom/google/protobuf/H$x$b$b;

    return-object p1
.end method

.method public E6(I)Lcom/google/protobuf/H$x$b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->e:I

    iget p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public F6(I)Lcom/google/protobuf/H$x$b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->f:I

    iget p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public G5()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public G6(II)Lcom/google/protobuf/H$x$b$b;
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

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->y6()V

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/D0$g;->setInt(II)I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public H6(Lcom/google/protobuf/H$x$b$c;)Lcom/google/protobuf/H$x$b$b;
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

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/H$x$b$c;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->g:I

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

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public I1(I)Lcom/google/protobuf/H$x$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->y6()V

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$g;->Cc(I)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I6(Ljava/lang/String;)Lcom/google/protobuf/H$x$b$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public J6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$x$b$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;
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

    check-cast p1, Lcom/google/protobuf/H$x$b$b;

    return-object p1
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

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    :goto_0
    return-object v0
.end method

.method public Y0()Lcom/google/protobuf/H$x$b$c;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->g:I

    invoke-static {v0}, Lcom/google/protobuf/H$x$b$c;->a(I)Lcom/google/protobuf/H$x$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/H$x$b$c;->NONE:Lcom/google/protobuf/H$x$b$c;

    :cond_0
    return-object v0
.end method

.method public a5()Lcom/google/protobuf/H$x$b;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$x$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$x$b;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$x$b$b;->r6(Lcom/google/protobuf/H$x$b;)V

    iget v1, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$x$b$b;->q6(Lcom/google/protobuf/H$x$b;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->v3()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->v3()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->a5()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->a5()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->s6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->s6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->s6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->s6()Lcom/google/protobuf/H$x$b$b;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->e:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->z6()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->z6()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->L()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->f:I

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasSourceFile()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->M()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$x$b;

    const-class v2, Lcom/google/protobuf/H$x$b$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1(Ljava/lang/Iterable;)Lcom/google/protobuf/H$x$b$b;
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
            "Lcom/google/protobuf/H$x$b$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->y6()V

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$x$b$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->C6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$x$b$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->C6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$x$b$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$x$b$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->D6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->D6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->D6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;

    move-result-object p1

    return-object p1
.end method

.method public o0()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q6(Lcom/google/protobuf/H$x$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/H$x$b;->w6(Lcom/google/protobuf/H$x$b;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/protobuf/H$x$b$b;->e:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$x$b;->x6(Lcom/google/protobuf/H$x$b;I)I

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/H$x$b$b;->f:I

    invoke-static {p1, v2}, Lcom/google/protobuf/H$x$b;->y6(Lcom/google/protobuf/H$x$b;I)I

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->g:I

    invoke-static {p1, v0}, Lcom/google/protobuf/H$x$b;->z6(Lcom/google/protobuf/H$x$b;I)I

    or-int/lit8 v1, v1, 0x8

    :cond_3
    invoke-static {p1, v1}, Lcom/google/protobuf/H$x$b;->A6(Lcom/google/protobuf/H$x$b;I)I

    return-void
.end method

.method public final r6(Lcom/google/protobuf/H$x$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-interface {v0}, Lcom/google/protobuf/D0$k;->r9()V

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {p1, v0}, Lcom/google/protobuf/H$x$b;->u6(Lcom/google/protobuf/H$x$b;Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    return-void
.end method

.method public s6()Lcom/google/protobuf/H$x$b$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->e:I

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->f:I

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->g:I

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$x$b$b;->K6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$x$b$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/H$x$b$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u6()Lcom/google/protobuf/H$x$b$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->f:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public v3()Lcom/google/protobuf/H$x$b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$x$b$b;->a5()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$x$b;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public v6()Lcom/google/protobuf/H$x$b$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/w0;->emptyIntList()Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public w6()Lcom/google/protobuf/H$x$b$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->g:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public x6()Lcom/google/protobuf/H$x$b$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$x$b;->B6()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$x$b;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final y6()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    invoke-static {v0}, Lcom/google/protobuf/w0;->mutableCopy(Lcom/google/protobuf/D0$g;)Lcom/google/protobuf/D0$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$x$b$b;->c:Lcom/google/protobuf/D0$g;

    iget v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$x$b$b;->b:I

    :cond_0
    return-void
.end method

.method public z6()Lcom/google/protobuf/H$x$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$x$b;->B6()Lcom/google/protobuf/H$x$b;

    move-result-object v0

    return-object v0
.end method
