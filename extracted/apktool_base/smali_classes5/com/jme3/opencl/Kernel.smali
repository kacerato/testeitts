.class public abstract Lcom/jme3/opencl/Kernel;
.super Lcom/jme3/opencl/AbstractOpenCLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/opencl/Kernel$WorkSize;,
        Lcom/jme3/opencl/Kernel$LocalMemPerElement;,
        Lcom/jme3/opencl/Kernel$LocalMem;
    }
.end annotation


# instance fields
.field protected final globalWorkSize:Lcom/jme3/opencl/Kernel$WorkSize;

.field protected final workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/jme3/opencl/AbstractOpenCLObject;-><init>(Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;)V

    new-instance p1, Lcom/jme3/opencl/Kernel$WorkSize;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/jme3/opencl/Kernel$WorkSize;-><init>(J)V

    iput-object p1, p0, Lcom/jme3/opencl/Kernel;->globalWorkSize:Lcom/jme3/opencl/Kernel$WorkSize;

    new-instance p1, Lcom/jme3/opencl/Kernel$WorkSize;

    invoke-direct {p1, v0, v1}, Lcom/jme3/opencl/Kernel$WorkSize;-><init>(J)V

    iput-object p1, p0, Lcom/jme3/opencl/Kernel;->workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;

    return-void
.end method

.method private varargs setArgs([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/opencl/Kernel;->setArg(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract Run(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;
.end method

.method public varargs Run1(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Kernel$WorkSize;[Ljava/lang/Object;)Lcom/jme3/opencl/Event;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/jme3/opencl/Kernel;->setGlobalWorkSize(Lcom/jme3/opencl/Kernel$WorkSize;)V

    invoke-virtual {p0}, Lcom/jme3/opencl/Kernel;->setWorkGroupSizeToNull()V

    invoke-direct {p0, p3}, Lcom/jme3/opencl/Kernel;->setArgs([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Kernel;->Run(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public varargs Run1NoEvent(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Kernel$WorkSize;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/jme3/opencl/Kernel;->setGlobalWorkSize(Lcom/jme3/opencl/Kernel$WorkSize;)V

    invoke-virtual {p0}, Lcom/jme3/opencl/Kernel;->setWorkGroupSizeToNull()V

    invoke-direct {p0, p3}, Lcom/jme3/opencl/Kernel;->setArgs([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Kernel;->RunNoEvent(Lcom/jme3/opencl/CommandQueue;)V

    return-void
.end method

.method public varargs Run2(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Kernel$WorkSize;Lcom/jme3/opencl/Kernel$WorkSize;[Ljava/lang/Object;)Lcom/jme3/opencl/Event;
    .locals 0

    invoke-virtual {p0, p2}, Lcom/jme3/opencl/Kernel;->setGlobalWorkSize(Lcom/jme3/opencl/Kernel$WorkSize;)V

    invoke-virtual {p0, p3}, Lcom/jme3/opencl/Kernel;->setWorkGroupSize(Lcom/jme3/opencl/Kernel$WorkSize;)V

    invoke-direct {p0, p4}, Lcom/jme3/opencl/Kernel;->setArgs([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Kernel;->Run(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;

    move-result-object p1

    return-object p1
.end method

.method public varargs Run2NoEvent(Lcom/jme3/opencl/CommandQueue;Lcom/jme3/opencl/Kernel$WorkSize;Lcom/jme3/opencl/Kernel$WorkSize;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/jme3/opencl/Kernel;->setGlobalWorkSize(Lcom/jme3/opencl/Kernel$WorkSize;)V

    invoke-virtual {p0, p3}, Lcom/jme3/opencl/Kernel;->setWorkGroupSize(Lcom/jme3/opencl/Kernel$WorkSize;)V

    invoke-direct {p0, p4}, Lcom/jme3/opencl/Kernel;->setArgs([Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Kernel;->RunNoEvent(Lcom/jme3/opencl/CommandQueue;)V

    return-void
.end method

.method public RunNoEvent(Lcom/jme3/opencl/CommandQueue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/opencl/Kernel;->Run(Lcom/jme3/opencl/CommandQueue;)Lcom/jme3/opencl/Event;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/opencl/AbstractOpenCLObject;->release()V

    return-void
.end method

.method public abstract getArgCount()I
.end method

.method public getGlobalWorkSize()Lcom/jme3/opencl/Kernel$WorkSize;
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->globalWorkSize:Lcom/jme3/opencl/Kernel$WorkSize;

    return-object v0
.end method

.method public abstract getMaxWorkGroupSize(Lcom/jme3/opencl/Device;)J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getWorkGroupSize()Lcom/jme3/opencl/Kernel$WorkSize;
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;

    return-object v0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/AbstractOpenCLObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/opencl/Kernel;->register()Lcom/jme3/opencl/Kernel;

    move-result-object v0

    return-object v0
.end method

.method public register()Lcom/jme3/opencl/Kernel;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/jme3/opencl/AbstractOpenCLObject;->register()Lcom/jme3/opencl/AbstractOpenCLObject;

    return-object p0
.end method

.method public bridge synthetic register()Lcom/jme3/opencl/OpenCLObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/opencl/Kernel;->register()Lcom/jme3/opencl/Kernel;

    move-result-object v0

    return-object v0
.end method

.method public abstract setArg(IB)V
.end method

.method public abstract setArg(ID)V
.end method

.method public abstract setArg(IF)V
.end method

.method public abstract setArg(II)V
.end method

.method public abstract setArg(IJ)V
.end method

.method public setArg(ILcom/jme3/math/Matrix3f;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    .line 3
    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->zero()Lcom/jme3/math/Matrix4f;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    .line 4
    invoke-virtual {p2, v3, v5}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/jme3/math/Matrix4f;->set(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/math/Matrix4f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    .line 7
    throw p1
.end method

.method public abstract setArg(ILcom/jme3/math/Matrix4f;)V
.end method

.method public abstract setArg(ILcom/jme3/math/Quaternion;)V
.end method

.method public abstract setArg(ILcom/jme3/math/Vector2f;)V
.end method

.method public abstract setArg(ILcom/jme3/math/Vector4f;)V
.end method

.method public abstract setArg(ILcom/jme3/opencl/Buffer;)V
.end method

.method public abstract setArg(ILcom/jme3/opencl/Image;)V
.end method

.method public abstract setArg(ILcom/jme3/opencl/Kernel$LocalMem;)V
.end method

.method public abstract setArg(ILcom/jme3/opencl/Kernel$LocalMemPerElement;)V
.end method

.method public setArg(ILjava/lang/Object;)V
    .locals 2

    .line 8
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 9
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(IB)V

    goto/16 :goto_0

    .line 10
    :cond_0
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 11
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(IS)V

    goto/16 :goto_0

    .line 12
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 13
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(II)V

    goto/16 :goto_0

    .line 14
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 15
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/opencl/Kernel;->setArg(IJ)V

    goto/16 :goto_0

    .line 16
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 17
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(IF)V

    goto/16 :goto_0

    .line 18
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 19
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/opencl/Kernel;->setArg(ID)V

    goto :goto_0

    .line 20
    :cond_5
    instance-of v0, p2, Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_6

    .line 21
    check-cast p2, Lcom/jme3/math/Vector2f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/math/Vector2f;)V

    goto :goto_0

    .line 22
    :cond_6
    instance-of v0, p2, Lcom/jme3/math/Vector4f;

    if-eqz v0, :cond_7

    .line 23
    check-cast p2, Lcom/jme3/math/Vector4f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/math/Vector4f;)V

    goto :goto_0

    .line 24
    :cond_7
    instance-of v0, p2, Lcom/jme3/math/Quaternion;

    if-eqz v0, :cond_8

    .line 25
    check-cast p2, Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/math/Quaternion;)V

    goto :goto_0

    .line 26
    :cond_8
    instance-of v0, p2, Lcom/jme3/math/Matrix3f;

    if-eqz v0, :cond_9

    .line 27
    check-cast p2, Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/math/Matrix3f;)V

    goto :goto_0

    .line 28
    :cond_9
    instance-of v0, p2, Lcom/jme3/math/Matrix4f;

    if-eqz v0, :cond_a

    .line 29
    check-cast p2, Lcom/jme3/math/Matrix4f;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/math/Matrix4f;)V

    goto :goto_0

    .line 30
    :cond_a
    instance-of v0, p2, Lcom/jme3/opencl/Kernel$LocalMemPerElement;

    if-eqz v0, :cond_b

    .line 31
    check-cast p2, Lcom/jme3/opencl/Kernel$LocalMemPerElement;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/opencl/Kernel$LocalMemPerElement;)V

    goto :goto_0

    .line 32
    :cond_b
    instance-of v0, p2, Lcom/jme3/opencl/Kernel$LocalMem;

    if-eqz v0, :cond_c

    .line 33
    check-cast p2, Lcom/jme3/opencl/Kernel$LocalMem;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/opencl/Kernel$LocalMem;)V

    goto :goto_0

    .line 34
    :cond_c
    instance-of v0, p2, Lcom/jme3/opencl/Buffer;

    if-eqz v0, :cond_d

    .line 35
    check-cast p2, Lcom/jme3/opencl/Buffer;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/opencl/Buffer;)V

    goto :goto_0

    .line 36
    :cond_d
    instance-of v0, p2, Lcom/jme3/opencl/Image;

    if-eqz v0, :cond_e

    .line 37
    check-cast p2, Lcom/jme3/opencl/Image;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/opencl/Kernel;->setArg(ILcom/jme3/opencl/Image;)V

    :goto_0
    return-void

    .line 38
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown kernel argument type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setArg(ILjava/nio/ByteBuffer;J)V
.end method

.method public abstract setArg(IS)V
.end method

.method public setGlobalWorkSize(I)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->globalWorkSize:Lcom/jme3/opencl/Kernel$WorkSize;

    int-to-long v1, p1

    const/4 p1, 0x1

    new-array v3, p1, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-virtual {v0, p1, v3}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void
.end method

.method public setGlobalWorkSize(II)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->globalWorkSize:Lcom/jme3/opencl/Kernel$WorkSize;

    int-to-long v1, p1

    int-to-long p1, p2

    const/4 v3, 0x2

    new-array v4, v3, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    const/4 v1, 0x1

    aput-wide p1, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void
.end method

.method public setGlobalWorkSize(III)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->globalWorkSize:Lcom/jme3/opencl/Kernel$WorkSize;

    int-to-long v1, p1

    int-to-long p1, p2

    int-to-long v3, p3

    const/4 p3, 0x3

    new-array v5, p3, [J

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x1

    aput-wide p1, v5, v1

    const/4 p1, 0x2

    aput-wide v3, v5, p1

    invoke-virtual {v0, p3, v5}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void
.end method

.method public setGlobalWorkSize(Lcom/jme3/opencl/Kernel$WorkSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->globalWorkSize:Lcom/jme3/opencl/Kernel$WorkSize;

    invoke-virtual {v0, p1}, Lcom/jme3/opencl/Kernel$WorkSize;->set(Lcom/jme3/opencl/Kernel$WorkSize;)V

    return-void
.end method

.method public setWorkGroupSdize(III)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;

    int-to-long v1, p1

    int-to-long p1, p2

    int-to-long v3, p3

    const/4 p3, 0x3

    new-array v5, p3, [J

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x1

    aput-wide p1, v5, v1

    const/4 p1, 0x2

    aput-wide v3, v5, p1

    invoke-virtual {v0, p3, v5}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void
.end method

.method public setWorkGroupSize(I)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;

    int-to-long v1, p1

    const/4 p1, 0x1

    new-array v3, p1, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    invoke-virtual {v0, p1, v3}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void
.end method

.method public setWorkGroupSize(II)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;

    int-to-long v1, p1

    int-to-long p1, p2

    const/4 v3, 0x2

    new-array v4, v3, [J

    const/4 v5, 0x0

    aput-wide v1, v4, v5

    const/4 v1, 0x1

    aput-wide p1, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void
.end method

.method public setWorkGroupSize(Lcom/jme3/opencl/Kernel$WorkSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;

    invoke-virtual {v0, p1}, Lcom/jme3/opencl/Kernel$WorkSize;->set(Lcom/jme3/opencl/Kernel$WorkSize;)V

    return-void
.end method

.method public setWorkGroupSizeToNull()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/opencl/Kernel;->workGroupSize:Lcom/jme3/opencl/Kernel$WorkSize;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/jme3/opencl/Kernel$WorkSize;->set(I[J)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kernel ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/opencl/Kernel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
