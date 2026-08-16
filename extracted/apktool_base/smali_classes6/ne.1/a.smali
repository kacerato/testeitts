.class public Lne/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/a;
.implements Ljava/io/Externalizable;


# static fields
.field public static final c:J = 0x1L

.field public static final d:I = 0xa


# instance fields
.field public b:Lce/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lne/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lce/a;

    invoke-direct {v0, p1}, Lce/a;-><init>(I)V

    iput-object v0, p0, Lne/a;->b:Lce/a;

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lce/a;

    invoke-direct {v0, p1, p2}, Lce/a;-><init>(IB)V

    iput-object v0, p0, Lne/a;->b:Lce/a;

    return-void
.end method

.method public constructor <init>(Lme/a;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    instance-of v0, p1, Lne/a;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lne/a;

    .line 9
    new-instance v0, Lce/a;

    iget-object p1, p1, Lne/a;->b:Lce/a;

    invoke-direct {v0, p1}, Lce/a;-><init>(LSd/a;)V

    iput-object v0, p0, Lne/a;->b:Lce/a;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only support TByteArrayStack"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public R0([B)V
    .locals 5

    invoke-virtual {p0}, Lne/a;->size()I

    move-result v0

    array-length v1, p1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    move v1, v2

    :cond_0
    array-length v3, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v4, p1, v1, v3}, Lce/a;->cd([BII)[B

    invoke-virtual {p0, p1, v2, v3}, Lne/a;->b([BII)V

    array-length v1, p1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v1}, Lce/a;->i()B

    move-result v1

    aput-byte v1, p1, v0

    :cond_1
    return-void
.end method

.method public a(B)V
    .locals 1

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0, p1}, Lce/a;->d1(B)Z

    return-void
.end method

.method public final b([BII)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-gt p2, p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lne/a;->c([BII)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "from cannot be greater than to"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c([BII)V
    .locals 2

    aget-byte v0, p1, p2

    aget-byte v1, p1, p3

    aput-byte v1, p1, p2

    aput-byte v0, p1, p3

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0}, Lce/a;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lne/a;

    iget-object v0, p0, Lne/a;->b:Lce/a;

    iget-object p1, p1, Lne/a;->b:Lce/a;

    invoke-virtual {v0, p1}, Lce/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0}, Lce/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0}, Lce/a;->i()B

    move-result v0

    return v0
.end method

.method public peek()B
    .locals 2

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0}, Lce/a;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lce/a;->get(I)B

    move-result v0

    return v0
.end method

.method public pop()B
    .locals 2

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0}, Lce/a;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lce/a;->B0(I)B

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lce/a;

    iput-object p1, p0, Lne/a;->b:Lce/a;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0}, Lce/a;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[B
    .locals 3

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v0}, Lce/a;->toArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lne/a;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lne/a;->b([BII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v1}, Lce/a;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_0

    iget-object v2, p0, Lne/a;->b:Lce/a;

    invoke-virtual {v2, v1}, Lce/a;->get(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lne/a;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lne/a;->b:Lce/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lce/a;->get(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Lne/a;->b:Lce/a;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
