.class public final Lcom/google/protobuf/r2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/b1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/r2$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public static q6()Lcom/google/protobuf/r2$b;
    .locals 1

    new-instance v0, Lcom/google/protobuf/r2$b;

    invoke-direct {v0}, Lcom/google/protobuf/r2$b;-><init>()V

    return-object v0
.end method

.method public static synthetic t()Lcom/google/protobuf/r2$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2$b;->q6()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A0(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "field"
        }
    .end annotation

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/google/protobuf/r2$c;->v(Lcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$c$a;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public A6(Lcom/google/protobuf/b1;)Lcom/google/protobuf/r2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/r2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/r2;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/r2;->t(Lcom/google/protobuf/r2;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/r2$c;

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/r2$b;->u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public C6(Ljava/io/InputStream;)Lcom/google/protobuf/r2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/C;->k(Ljava/io/InputStream;)Lcom/google/protobuf/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/C;->a(I)V

    return-object p0
.end method

.method public D6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->C6(Ljava/io/InputStream;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public E6([B)Lcom/google/protobuf/r2$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/C;->q([B)Lcom/google/protobuf/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/C;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public F6([BII)Lcom/google/protobuf/r2$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/C;->r([BII)Lcom/google/protobuf/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/C;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
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

    const-string p3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public G6([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "off",
            "len",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/r2$b;->F6([BII)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public H6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->E6([B)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public I1()Lcom/google/protobuf/r2$b;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    return-object p0
.end method

.method public I6(ILcom/google/protobuf/x;)Lcom/google/protobuf/r2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "value"
        }
    .end annotation

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/r2$c$a;->e(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$c$a;

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public J6(II)Lcom/google/protobuf/r2$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "value"
        }
    .end annotation

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/r2$c$a;->f(J)Lcom/google/protobuf/r2$c$a;

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public S0()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/r2$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c$a;

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public T0()Lcom/google/protobuf/r2;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c$a;

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/protobuf/r2;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/r2;-><init>(Ljava/util/TreeMap;Lcom/google/protobuf/r2$a;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public a5()Lcom/google/protobuf/r2$b;
    .locals 5

    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/r2$c$a;

    iget-object v4, v0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/google/protobuf/r2$c$a;->i()Lcom/google/protobuf/r2$c$a;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->m1()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->I1()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->a5()Lcom/google/protobuf/r2$b;

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

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->a5()Lcom/google/protobuf/r2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->r6()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()Lcom/google/protobuf/r2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/C;->P(ILjava/io/InputStream;)I

    move-result v0

    .line 3
    new-instance v1, Lcom/google/protobuf/b$a$a;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/b$a$a;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/r2$b;->C6(Ljava/io/InputStream;)Lcom/google/protobuf/r2$b;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Z
    .locals 0
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r2$b;->z6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/b1;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->A6(Lcom/google/protobuf/b1;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/x;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->w6(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r2$b;->x6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->C6(Ljava/io/InputStream;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
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

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r2$b;->D6(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->E6([B)Lcom/google/protobuf/r2$b;

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
            "data",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/r2$b;->F6([BII)Lcom/google/protobuf/r2$b;

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
            "data",
            "off",
            "len",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/r2$b;->G6([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r2$b;->H6([BLcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public r6()Lcom/google/protobuf/r2;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
.end method

.method public final s6(I)Lcom/google/protobuf/r2$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/r2$c$a;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public t6(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "number",
            "field"
        }
    .end annotation

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->t6(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/r2$c$a;->k(Lcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$c$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r2$b;->A0(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    :goto_0
    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public v3(I)Lcom/google/protobuf/r2$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/r2$b;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v6(ILcom/google/protobuf/C;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/A2;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/C;->B()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/r2$c$a;->b(I)Lcom/google/protobuf/r2$c$a;

    return v1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-static {}, Lcom/google/protobuf/r2;->Q1()Lcom/google/protobuf/r2$b;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/b0;->v()Lcom/google/protobuf/b0;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/protobuf/r2$b;->T0()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/r2$c$a;->d(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$c$a;

    return v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/r2$c$a;->e(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$c$a;

    return v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/C;->C()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/r2$c$a;->c(J)Lcom/google/protobuf/r2$c$a;

    return v1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/protobuf/r2$b;->s6(I)Lcom/google/protobuf/r2$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/C;->H()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/r2$c$a;->f(J)Lcom/google/protobuf/r2$c$a;

    return v1
.end method

.method public w6(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/x;->N()Lcom/google/protobuf/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/C;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public x6(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->w6(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method

.method public y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/r2$b;->v6(ILcom/google/protobuf/C;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method public z6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/r2$b;
    .locals 0
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/r2$b;->y6(Lcom/google/protobuf/C;)Lcom/google/protobuf/r2$b;

    move-result-object p1

    return-object p1
.end method
