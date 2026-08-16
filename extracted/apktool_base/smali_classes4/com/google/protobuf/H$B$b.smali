.class public final Lcom/google/protobuf/H$B$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/H$C;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/H$B$b;",
        ">;",
        "Lcom/google/protobuf/H$C;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Lcom/google/protobuf/H$D;

.field public g:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$D;",
            "Lcom/google/protobuf/H$D$b;",
            "Lcom/google/protobuf/H$E;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/H$B$b;->z6()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/H$B$b;-><init>()V

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

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/H$B$b;->z6()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/H$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/H$B$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->g()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private y6()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/H$D;",
            "Lcom/google/protobuf/H$D$b;",
            "Lcom/google/protobuf/H$E;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->getOptions()Lcom/google/protobuf/H$D;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private z6()V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/H$B$b;->y6()Lcom/google/protobuf/Q1;

    :cond_0
    return-void
.end method


# virtual methods
.method public A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$B$b;
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

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0x12

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x22

    if-eq v1, v3, :cond_4

    const/16 v3, 0x28

    if-eq v1, v3, :cond_3

    const/16 v3, 0x30

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
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$B$b;->i:Z

    iget v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/H$B$b;->h:Z

    iget v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/protobuf/H$B$b;->y6()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/H$B$b;->b:I
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

.method public B6(Lcom/google/protobuf/H$B;)Lcom/google/protobuf/H$B$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/H$B;->D6()Lcom/google/protobuf/H$B;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/H$B;->t6(Lcom/google/protobuf/H$B;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->E5()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/protobuf/H$B;->v6(Lcom/google/protobuf/H$B;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->m3()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/protobuf/H$B;->x6(Lcom/google/protobuf/H$B;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->getOptions()Lcom/google/protobuf/H$D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$B$b;->D6(Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$B$b;

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->i2()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->i6()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$B$b;->F6(Z)Lcom/google/protobuf/H$B$b;

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->t1()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/H$B;->K5()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$B$b;->O6(Z)Lcom/google/protobuf/H$B$b;

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->E6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$B$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/H$B;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/H$B;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->B6(Lcom/google/protobuf/H$B;)Lcom/google/protobuf/H$B$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public D6(Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$B$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$D;->H6()Lcom/google/protobuf/H$D;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->x6()Lcom/google/protobuf/H$D$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/H$D$b;->g7(Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$D$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E5()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final E6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;
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

    check-cast p1, Lcom/google/protobuf/H$B$b;

    return-object p1
.end method

.method public F6(Z)Lcom/google/protobuf/H$B$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$B$b;->h:Z

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public G6(Ljava/lang/String;)Lcom/google/protobuf/H$B$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public H4()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public H6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$B$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I1()Lcom/google/protobuf/H$B;
    .locals 2

    new-instance v0, Lcom/google/protobuf/H$B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H$B;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/H$a;)V

    iget v1, p0, Lcom/google/protobuf/H$B$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/H$B$b;->v3(Lcom/google/protobuf/H$B;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public I6(Ljava/lang/String;)Lcom/google/protobuf/H$B$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public J6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$B$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public K5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$B$b;->i:Z

    return v0
.end method

.method public K6(Lcom/google/protobuf/H$D$b;)Lcom/google/protobuf/H$B$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/H$D$b;->S6()Lcom/google/protobuf/H$D;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/H$D$b;->S6()Lcom/google/protobuf/H$D;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public L1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public L6(Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$B$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public M6(Ljava/lang/String;)Lcom/google/protobuf/H$B$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public N6(Lcom/google/protobuf/x;)Lcom/google/protobuf/H$B$b;
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

    iput-object p1, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public O6(Z)Lcom/google/protobuf/H$B$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/H$B$b;->i:Z

    iget p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final P6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;
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

    check-cast p1, Lcom/google/protobuf/H$B$b;

    return-object p1
.end method

.method public a5()Lcom/google/protobuf/H$B$b;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    iget-object v2, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->d()V

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    :cond_0
    iput-boolean v0, p0, Lcom/google/protobuf/H$B$b;->h:Z

    iput-boolean v0, p0, Lcom/google/protobuf/H$B$b;->i:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->m1()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->I1()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->I1()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->a5()Lcom/google/protobuf/H$B$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->a5()Lcom/google/protobuf/H$B$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->a5()Lcom/google/protobuf/H$B$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->a5()Lcom/google/protobuf/H$B$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/google/protobuf/H$E;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$E;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/H$D;->H6()Lcom/google/protobuf/H$D;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->w6()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->w6()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H;->g()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/H$D;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/H$D;->H6()Lcom/google/protobuf/H$D;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$D;

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i2()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/H$B$b;->h:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/H;->h()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/H$B;

    const-class v2, Lcom/google/protobuf/H$B$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->getOptions()Lcom/google/protobuf/H$D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$D;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public k6()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public m1()Lcom/google/protobuf/H$B;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H$B$b;->I1()Lcom/google/protobuf/H$B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public m3()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$B$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->C6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$B$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->C6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$B$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/H$B$b;->A6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->E6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->E6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->E6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lcom/google/protobuf/H$B$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$B$b;->h:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/H$B$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$B;->D6()Lcom/google/protobuf/H$B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->getInputType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6()Lcom/google/protobuf/H$B$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$B;->D6()Lcom/google/protobuf/H$B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->P6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H$B$b;->P6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/H$B$b;

    move-result-object p1

    return-object p1
.end method

.method public t1()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t6()Lcom/google/protobuf/H$B$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    iget-object v1, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u6()Lcom/google/protobuf/H$B$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$B;->D6()Lcom/google/protobuf/H$B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$B;->L1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final v3(Lcom/google/protobuf/H$B;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/H$B$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/H$B;->u6(Lcom/google/protobuf/H$B;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/H$B$b;->d:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$B;->w6(Lcom/google/protobuf/H$B;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/H$B$b;->e:Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/google/protobuf/H$B;->y6(Lcom/google/protobuf/H$B;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/H$B$b;->g:Lcom/google/protobuf/Q1;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/H$B$b;->f:Lcom/google/protobuf/H$D;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/H$D;

    :goto_1
    invoke-static {p1, v2}, Lcom/google/protobuf/H$B;->z6(Lcom/google/protobuf/H$B;Lcom/google/protobuf/H$D;)Lcom/google/protobuf/H$D;

    or-int/lit8 v1, v1, 0x8

    :cond_4
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/protobuf/H$B$b;->h:Z

    invoke-static {p1, v2}, Lcom/google/protobuf/H$B;->A6(Lcom/google/protobuf/H$B;Z)Z

    or-int/lit8 v1, v1, 0x10

    :cond_5
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/protobuf/H$B$b;->i:Z

    invoke-static {p1, v0}, Lcom/google/protobuf/H$B;->B6(Lcom/google/protobuf/H$B;Z)Z

    or-int/lit8 v1, v1, 0x20

    :cond_6
    invoke-static {p1, v1}, Lcom/google/protobuf/H$B;->C6(Lcom/google/protobuf/H$B;I)I

    return-void
.end method

.method public v6()Lcom/google/protobuf/H$B$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/H$B$b;->i:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public w6()Lcom/google/protobuf/H$B;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$B;->D6()Lcom/google/protobuf/H$B;

    move-result-object v0

    return-object v0
.end method

.method public x6()Lcom/google/protobuf/H$D$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/H$B$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/H$B$b;->y6()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/H$D$b;

    return-object v0
.end method
