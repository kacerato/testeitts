.class public interface abstract Lcom/google/protobuf/Y0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/b1$a;
.implements Lcom/google/protobuf/e1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation
.end method

.method public abstract build()Lcom/google/protobuf/Y0;
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/Y0$a;->build()Lcom/google/protobuf/Y0;

    move-result-object v0

    return-object v0
.end method

.method public abstract buildPartial()Lcom/google/protobuf/Y0;
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object v0

    return-object v0
.end method

.method public abstract clear()Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/Y0$a;->clear()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation
.end method

.method public abstract clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation
.end method

.method public abstract clone()Lcom/google/protobuf/Y0$a;
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/Y0$a;->clone()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
.end method

.method public abstract getFieldBuilder(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation
.end method

.method public abstract getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$f;I)Lcom/google/protobuf/Y0$a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "index"
        }
    .end annotation
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;)Z
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
.end method

.method public abstract mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Z
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
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/x;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom([B)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom([BII)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public abstract mergeFrom([BLcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
    invoke-interface {p0, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/x;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
    invoke-interface {p0, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/x;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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

    .line 5
    invoke-interface {p0, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Y0$a;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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

    .line 7
    invoke-interface {p0, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom([B)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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

    .line 8
    invoke-interface {p0, p1, p2, p3}, Lcom/google/protobuf/Y0$a;->mergeFrom([BII)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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

    .line 9
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Y0$a;->mergeFrom([BIILcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

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

    .line 10
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Y0$a;->mergeFrom([BLcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation
.end method

.method public abstract newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation
.end method

.method public abstract setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation
.end method

.method public abstract setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation
.end method

.method public abstract setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation
.end method
