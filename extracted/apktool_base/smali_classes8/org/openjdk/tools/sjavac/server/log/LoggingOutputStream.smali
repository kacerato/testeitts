.class public Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final LINE_SEP:[B


# instance fields
.field private buf:Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

.field private final level:Lorg/openjdk/tools/sjavac/Log$Level;

.field private final linePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->LINE_SEP:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;-><init>(Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$1;)V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->buf:Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->level:Lorg/openjdk/tools/sjavac/Log$Level;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->linePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->buf:Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->buf:Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;->access$100(Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->buf:Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->buf:Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sget-object v2, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->LINE_SEP:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->level:Lorg/openjdk/tools/sjavac/Log$Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->linePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/Log;->log(Lorg/openjdk/tools/sjavac/Log$Level;Ljava/lang/String;)V

    new-instance p1, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;-><init>(Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$1;)V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream;->buf:Lorg/openjdk/tools/sjavac/server/log/LoggingOutputStream$EolTrackingByteArrayOutputStream;

    :cond_0
    return-void
.end method
