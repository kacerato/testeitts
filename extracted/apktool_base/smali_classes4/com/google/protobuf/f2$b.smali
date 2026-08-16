.class public final Lcom/google/protobuf/f2$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/g2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/f2$b;",
        ">;",
        "Lcom/google/protobuf/g2;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/f2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/f2$b;-><init>()V

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

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/f2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/f2$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/h2;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method


# virtual methods
.method public D()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/f2$b;->d:I

    return v0
.end method

.method public I1()Lcom/google/protobuf/f2;
    .locals 2

    new-instance v0, Lcom/google/protobuf/f2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/f2;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/f2$a;)V

    iget v1, p0, Lcom/google/protobuf/f2$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f2$b;->v3(Lcom/google/protobuf/f2;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public T()J
    .locals 2

    iget-wide v0, p0, Lcom/google/protobuf/f2$b;->c:J

    return-wide v0
.end method

.method public a5()Lcom/google/protobuf/f2$b;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/f2$b;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/protobuf/f2$b;->c:J

    iput v0, p0, Lcom/google/protobuf/f2$b;->d:I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->m1()Lcom/google/protobuf/f2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->m1()Lcom/google/protobuf/f2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->I1()Lcom/google/protobuf/f2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->I1()Lcom/google/protobuf/f2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->a5()Lcom/google/protobuf/f2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->a5()Lcom/google/protobuf/f2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->a5()Lcom/google/protobuf/f2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->a5()Lcom/google/protobuf/f2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->s6()Lcom/google/protobuf/f2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->s6()Lcom/google/protobuf/f2;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/h2;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    sget-object v0, Lcom/google/protobuf/h2;->b:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/f2;

    const-class v2, Lcom/google/protobuf/f2$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()Lcom/google/protobuf/f2;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/f2$b;->I1()Lcom/google/protobuf/f2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/f2;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f2$b;->t6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f2$b;->t6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f2$b;->t6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f2$b;->t6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lcom/google/protobuf/f2$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/f2$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/f2$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/f2$b;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/f2$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/f2$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/f2$b;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/f2$b;->c:J

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6()Lcom/google/protobuf/f2;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/f2;->v6()Lcom/google/protobuf/f2;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;

    move-result-object p1

    return-object p1
.end method

.method public t6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/f2$b;
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
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    const/16 v3, 0x10

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
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/f2$b;->d:I

    iget v1, p0, Lcom/google/protobuf/f2$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/f2$b;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->H()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/protobuf/f2$b;->c:J

    iget v1, p0, Lcom/google/protobuf/f2$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/f2$b;->b:I
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

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/f2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/f2;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->v6(Lcom/google/protobuf/f2;)Lcom/google/protobuf/f2$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final v3(Lcom/google/protobuf/f2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/f2$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/protobuf/f2$b;->c:J

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/f2;->t6(Lcom/google/protobuf/f2;J)J

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/f2$b;->d:I

    invoke-static {p1, v0}, Lcom/google/protobuf/f2;->u6(Lcom/google/protobuf/f2;I)I

    :cond_1
    return-void
.end method

.method public v6(Lcom/google/protobuf/f2;)Lcom/google/protobuf/f2$b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/f2;->v6()Lcom/google/protobuf/f2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/f2;->T()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/f2;->T()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/f2$b;->y6(J)Lcom/google/protobuf/f2$b;

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/f2;->D()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/f2;->D()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/f2$b;->x6(I)Lcom/google/protobuf/f2$b;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f2$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;
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

    check-cast p1, Lcom/google/protobuf/f2$b;

    return-object p1
.end method

.method public x6(I)Lcom/google/protobuf/f2$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/f2$b;->d:I

    iget p1, p0, Lcom/google/protobuf/f2$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/f2$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public y6(J)Lcom/google/protobuf/f2$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput-wide p1, p0, Lcom/google/protobuf/f2$b;->c:J

    iget p1, p0, Lcom/google/protobuf/f2$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/f2$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/f2$b;
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

    check-cast p1, Lcom/google/protobuf/f2$b;

    return-object p1
.end method
