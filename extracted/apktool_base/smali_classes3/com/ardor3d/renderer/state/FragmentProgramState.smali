.class public Lcom/ardor3d/renderer/state/FragmentProgramState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected _programID:I

.field protected parameters:[[F

.field protected program:Ljava/nio/ByteBuffer;

.field protected usingParameters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/state/FragmentProgramState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/state/FragmentProgramState;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->usingParameters:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->_programID:I

    const/16 v0, 0x18

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->parameters:[[F

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public _getParameters()[[F
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->parameters:[[F

    return-object v0
.end method

.method public _getProgramID()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->_programID:I

    return v0
.end method

.method public _setProgramID(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->_programID:I

    return-void
.end method

.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/FragmentProgramStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/FragmentProgramStateRecord;-><init>()V

    return-object v0
.end method

.method public getProgramAsBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->FragmentProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public isUsingParameters()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->usingParameters:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 6

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 23
    array-length v0, p1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 25
    iget-object p1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->_programID:I

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    .line 28
    sget-object v0, Lcom/ardor3d/renderer/state/FragmentProgramState;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load fragment program: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 29
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "load(URL)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public load(Ljava/net/URL;)V
    .locals 8

    .line 1
    const-string v0, "Failed to close the fragment program"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x4000

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    .line 4
    :try_start_1
    new-array p1, p1, [B

    .line 5
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, p1, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v7, p1

    move-object v1, v3

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 10
    array-length v1, p1

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    iget-object p1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->_programID:I

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 16
    sget-object v1, Lcom/ardor3d/renderer/state/FragmentProgramState;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v7, p1

    .line 17
    :goto_1
    :try_start_3
    sget-object v2, Lcom/ardor3d/renderer/state/FragmentProgramState;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load fragment program: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 18
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "load(URL)"

    const-string v6, "Exception"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 19
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 20
    sget-object v2, Lcom/ardor3d/renderer/state/FragmentProgramState;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_2
    :goto_4
    throw p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "usingParameters"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->usingParameters:Z

    const/16 v0, 0x18

    new-array v0, v0, [[F

    const-string v1, "parameters"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readFloatArray2D(Ljava/lang/String;[[F)[[F

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->parameters:[[F

    const-string v0, "program"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setParameter([FI)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 v0, 0x17

    if-gt p2, v0, :cond_2

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment program parameters must be of type float[4]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->usingParameters:Z

    iget-object v1, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->parameters:[[F

    aput-object p1, v1, p2

    invoke-virtual {p0, v0}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameter ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->usingParameters:Z

    const-string v1, "usingParameters"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->parameters:[[F

    const/16 v1, 0x18

    new-array v1, v1, [[F

    const-string v2, "parameters"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write([[FLjava/lang/String;[[F)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/FragmentProgramState;->program:Ljava/nio/ByteBuffer;

    const-string v1, "program"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method
