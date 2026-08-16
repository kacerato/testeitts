.class public abstract Lcom/google/protobuf/v0$b;
.super Lcom/google/protobuf/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/v0<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/v0$b<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/b$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public c:Lcom/google/protobuf/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/v0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/b$a;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/v0$b;->b:Lcom/google/protobuf/v0;

    invoke-virtual {p1}, Lcom/google/protobuf/v0;->F6()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/v0$b;->x6()Lcom/google/protobuf/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w6(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private x6()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->b:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->O6()Lcom/google/protobuf/v0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public I1()Lcom/google/protobuf/v0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->q6()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->M6()Lcom/google/protobuf/v0$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->T0()Lcom/google/protobuf/v0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public final S0()Lcom/google/protobuf/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->T0()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/b$a;->newUninitializedMessageException(Lcom/google/protobuf/b1;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public T0()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->F6()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->G6()V

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public a5()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/v0$b;->x6()Lcom/google/protobuf/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-static {v0, v1}, Lcom/google/protobuf/v0$b;->w6(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    return-void
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->S0()Lcom/google/protobuf/v0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->T0()Lcom/google/protobuf/v0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->m1()Lcom/google/protobuf/v0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->I1()Lcom/google/protobuf/v0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->I1()Lcom/google/protobuf/v0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->I1()Lcom/google/protobuf/v0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->q6()Lcom/google/protobuf/v0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic internalMergeFrom(Lcom/google/protobuf/b;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    check-cast p1, Lcom/google/protobuf/v0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$b;->r6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/v0;->E6(Lcom/google/protobuf/v0;Z)Z

    move-result v0

    return v0
.end method

.method public final m1()Lcom/google/protobuf/v0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->b:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->F6()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/v0$b;->x6()Lcom/google/protobuf/v0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v0$b;->s6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/v0$b;->u6([BII)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/v0$b;->v6([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0$b;

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

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v0$b;->s6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/v0$b;->u6([BII)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/v0$b;->v6([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->b:Lcom/google/protobuf/v0;

    return-object v0
.end method

.method public r6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$b;->t6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public s6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/v0$b;
    .locals 2
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-static {p1}, Lcom/google/protobuf/D;->U(Lcom/google/protobuf/C;)Lcom/google/protobuf/D;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/protobuf/L1;->P1(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    throw p1
.end method

.method public t6(Lcom/google/protobuf/v0;)Lcom/google/protobuf/v0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->q6()Lcom/google/protobuf/v0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-static {v0, p1}, Lcom/google/protobuf/v0$b;->w6(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public u6([BII)Lcom/google/protobuf/v0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/v0$b;->v6([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0$b;

    move-result-object p1

    return-object p1
.end method

.method public final v3()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->F6()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->a5()V

    :cond_0
    return-void
.end method

.method public v6([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/v0$b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/d0;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/z1;->j(Ljava/lang/Object;)Lcom/google/protobuf/L1;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    add-int v6, p2, p3

    new-instance v7, Lcom/google/protobuf/m$b;

    invoke-direct {v7, p4}, Lcom/google/protobuf/m$b;-><init>(Lcom/google/protobuf/d0;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/protobuf/L1;->L1(Ljava/lang/Object;[BIILcom/google/protobuf/m$b;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :goto_1
    throw p1
.end method
