.class final Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;
.super Lorg/luaj/vm2/lib/IoLib$File;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/jse/JseIoLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FileImpl"
.end annotation


# instance fields
.field private closed:Z

.field private final file:Ljava/io/RandomAccessFile;

.field private final is:Ljava/io/InputStream;

.field private nobuffer:Z

.field private final os:Ljava/io/OutputStream;

.field private final synthetic this$0:Lorg/luaj/vm2/lib/jse/JseIoLib;


# direct methods
.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/InputStream;Lorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/OutputStream;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/OutputStream;Lorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/luaj/vm2/lib/IoLib$File;-><init>(Lorg/luaj/vm2/lib/IoLib;)V

    iput-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->this$0:Lorg/luaj/vm2/lib/jse/JseIoLib;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->closed:Z

    iput-boolean p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->nobuffer:Z

    iput-object p2, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p3, p1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;Lorg/luaj/vm2/lib/jse/JseIoLib$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;-><init>(Lorg/luaj/vm2/lib/jse/JseIoLib;Ljava/io/RandomAccessFile;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->closed:Z

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public isclosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->closed:Z

    return v0
.end method

.method public isstdfile()Z
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    iget-object v3, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return v2

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    return p3
.end method

.method public remaining()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public seek(Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    const-string v0, "set"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    int-to-long v0, p2

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    :cond_0
    const-string v0, "end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    :goto_1
    int-to-long v2, p2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    long-to-int p1, p1

    return p1

    :cond_2
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    const/4 p1, 0x0

    return p1
.end method

.method public setvbuf(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "no"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->nobuffer:Z

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "file ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/luaj/vm2/LuaString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget p1, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v2, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    iget p1, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JseIoLib;->access$500()V

    :goto_0
    iget-boolean p1, p0, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->nobuffer:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/jse/JseIoLib$FileImpl;->flush()V

    :cond_2
    return-void
.end method
