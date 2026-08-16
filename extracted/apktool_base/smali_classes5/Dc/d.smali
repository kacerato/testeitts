.class public LDc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDc/d$b;,
        LDc/d$a;,
        LDc/d$c;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public transient e:I

.field public f:Lcom/itsmagic/engine/Engines/Native/Base/a;

.field public g:LDc/d$c;

.field public h:LDc/d$b;

.field public i:LDc/d$a;

.field public j:Z

.field public k:I

.field public transient l:Z

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, LDc/d;->a:I

    .line 14
    iput v0, p0, LDc/d;->b:I

    .line 15
    iput v0, p0, LDc/d;->c:I

    .line 16
    iput v0, p0, LDc/d;->d:I

    .line 17
    iput v0, p0, LDc/d;->e:I

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    .line 19
    iput-boolean v0, p0, LDc/d;->j:Z

    .line 20
    iput v0, p0, LDc/d;->k:I

    .line 21
    iput-boolean v0, p0, LDc/d;->l:Z

    return-void
.end method

.method public constructor <init>(LDc/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LDc/d;->a:I

    .line 3
    iput v0, p0, LDc/d;->b:I

    .line 4
    iput v0, p0, LDc/d;->c:I

    .line 5
    iput v0, p0, LDc/d;->d:I

    .line 6
    iput v0, p0, LDc/d;->e:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    .line 8
    iput-boolean v0, p0, LDc/d;->j:Z

    .line 9
    iput v0, p0, LDc/d;->k:I

    .line 10
    iput-boolean v0, p0, LDc/d;->l:Z

    .line 11
    iput-object p1, p0, LDc/d;->h:LDc/d$b;

    return-void
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/a;)Lcom/itsmagic/engine/Engines/Native/Base/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot clone buffer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(LDc/d$a;II)Lcom/itsmagic/engine/Engines/Native/Base/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "components",
            "numElements"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    mul-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized buffer format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Num components must be between 1 and 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static k(LDc/d$a;Lcom/itsmagic/engine/Engines/Native/Base/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "data"
        }
    .end annotation

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, LDc/d$a;->Float:LDc/d$a;

    if-ne p0, v0, :cond_2

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Format Float requires NativeFloatBuffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget-object v0, LDc/d$a;->Int:LDc/d$a;

    if-eq p0, v0, :cond_3

    sget-object v0, LDc/d$a;->UnsignedInt:LDc/d$a;

    if-ne p0, v0, :cond_4

    :cond_3
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_c

    :cond_4
    sget-object v0, LDc/d$a;->Short:LDc/d$a;

    if-eq p0, v0, :cond_5

    sget-object v0, LDc/d$a;->UnsignedShort:LDc/d$a;

    if-eq p0, v0, :cond_5

    sget-object v0, LDc/d$a;->Half:LDc/d$a;

    if-ne p0, v0, :cond_6

    :cond_5
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_b

    :cond_6
    sget-object v0, LDc/d$a;->Byte:LDc/d$a;

    if-eq p0, v0, :cond_7

    sget-object v0, LDc/d$a;->UnsignedByte:LDc/d$a;

    if-ne p0, v0, :cond_8

    :cond_7
    instance-of p1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz p1, :cond_a

    :cond_8
    sget-object p1, LDc/d$a;->Double:LDc/d$a;

    if-eq p0, p1, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Double format is not supported by NativeVertexBuffer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Format Byte requires NativeByteBuffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Format Short/Half requires NativeShortBuffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Format Int requires NativeIntBuffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_1
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget v0, p0, LDc/d;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, LDc/d;->j:Z

    return v0
.end method

.method public final C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Native/Base/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data buffer is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LDc/d;->l:Z

    return-void
.end method

.method public E(IILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elementIndex",
            "componentIndex",
            "val"
        }
    .end annotation

    iget v0, p0, LDc/d;->d:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    iget-object p2, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized buffer format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    goto :goto_0

    :pswitch_2
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    goto :goto_0

    :pswitch_3
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    goto :goto_0

    :pswitch_4
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(IS)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public F(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iput p1, p0, LDc/d;->k:I

    return-void
.end method

.method public G(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanced"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, LDc/d;->k:I

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, LDc/d;->k:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, LDc/d;->k:I

    :cond_1
    :goto_0
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, LDc/d;->m:Ljava/lang/String;

    return-void
.end method

.method public I(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalized"
        }
    .end annotation

    iput-boolean p1, p0, LDc/d;->j:Z

    return-void
.end method

.method public J(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    iput p1, p0, LDc/d;->a:I

    return-void
.end method

.method public K(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stride"
        }
    .end annotation

    iput p1, p0, LDc/d;->c:I

    return-void
.end method

.method public L(LDc/d$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    iput-object p1, p0, LDc/d;->g:LDc/d$c;

    const/4 p1, 0x1

    iput-boolean p1, p0, LDc/d;->l:Z

    return-void
.end method

.method public M(LDc/d$c;ILDc/d$a;Lcom/itsmagic/engine/Engines/Native/Base/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "usage",
            "components",
            "format",
            "data"
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    sget-object v1, LDc/d$a;->Double:LDc/d$a;

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "components must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, LDc/d;->h:LDc/d$b;

    sget-object v2, LDc/d$b;->InstanceData:LDc/d$b;

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    if-gt p2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "components must be between 1 and 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object v1, LDc/d$a;->Float:LDc/d$a;

    if-ne p3, v1, :cond_5

    instance-of v1, p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Format Float requires NativeFloatBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    sget-object v1, LDc/d$a;->Int:LDc/d$a;

    if-eq p3, v1, :cond_6

    sget-object v1, LDc/d$a;->UnsignedInt:LDc/d$a;

    if-ne p3, v1, :cond_7

    :cond_6
    instance-of v1, p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v1, :cond_f

    :cond_7
    sget-object v1, LDc/d$a;->Short:LDc/d$a;

    if-eq p3, v1, :cond_8

    sget-object v1, LDc/d$a;->UnsignedShort:LDc/d$a;

    if-eq p3, v1, :cond_8

    sget-object v1, LDc/d$a;->Half:LDc/d$a;

    if-ne p3, v1, :cond_9

    :cond_8
    instance-of v1, p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v1, :cond_e

    :cond_9
    sget-object v1, LDc/d$a;->Byte:LDc/d$a;

    if-eq p3, v1, :cond_a

    sget-object v1, LDc/d$a;->UnsignedByte:LDc/d$a;

    if-ne p3, v1, :cond_b

    :cond_a
    instance-of v1, p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v1, :cond_d

    :cond_b
    sget-object v1, LDc/d$a;->Double:LDc/d$a;

    if-eq p3, v1, :cond_c

    iput-object p4, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    iput p2, p0, LDc/d;->d:I

    iput-object p1, p0, LDc/d;->g:LDc/d$c;

    iput-object p3, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {p3}, LDc/d$a;->b()I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, LDc/d;->e:I

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result p1

    iput p1, p0, LDc/d;->b:I

    iput-boolean v0, p0, LDc/d;->l:Z

    return-void

    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Double format is not supported by NativeVertexBuffer"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Format Byte requires NativeByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Format Short/Half requires NativeShortBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Format Int requires NativeIntBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "None of the arguments can be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(Lcom/itsmagic/engine/Engines/Native/Base/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    iput-boolean v0, p0, LDc/d;->l:Z

    return-void

    :cond_0
    iget-object v1, p0, LDc/d;->i:LDc/d$a;

    invoke-static {v1, p1}, LDc/d;->k(LDc/d$a;Lcom/itsmagic/engine/Engines/Native/Base/a;)V

    iget-object v1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result v1

    iget v2, p0, LDc/d;->b:I

    if-eq v1, v2, :cond_2

    :cond_1
    iput-boolean v0, p0, LDc/d;->l:Z

    :cond_2
    iput-object p1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result p1

    iput p1, p0, LDc/d;->b:I

    iput-boolean v0, p0, LDc/d;->l:Z

    return-void
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LDc/d;->l:Z

    return-void
.end method

.method public b()LDc/d;
    .locals 2

    new-instance v0, LDc/d;

    iget-object v1, p0, LDc/d;->h:LDc/d$b;

    invoke-direct {v0, v1}, LDc/d;-><init>(LDc/d$b;)V

    iget v1, p0, LDc/d;->d:I

    iput v1, v0, LDc/d;->d:I

    iget v1, p0, LDc/d;->e:I

    iput v1, v0, LDc/d;->e:I

    invoke-virtual {p0}, LDc/d;->o()Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v1

    invoke-static {v1}, LDc/d;->d(Lcom/itsmagic/engine/Engines/Native/Base/a;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v1

    iput-object v1, v0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    iget-object v1, p0, LDc/d;->i:LDc/d$a;

    iput-object v1, v0, LDc/d;->i:LDc/d$a;

    iget-boolean v1, p0, LDc/d;->j:Z

    iput-boolean v1, v0, LDc/d;->j:Z

    iget v1, p0, LDc/d;->k:I

    iput v1, v0, LDc/d;->k:I

    iget v1, p0, LDc/d;->a:I

    iput v1, v0, LDc/d;->a:I

    iget v1, p0, LDc/d;->c:I

    iput v1, v0, LDc/d;->c:I

    iget-object v1, p0, LDc/d;->g:LDc/d$c;

    iput-object v1, v0, LDc/d;->g:LDc/d$c;

    iget v1, p0, LDc/d;->b:I

    iput v1, v0, LDc/d;->b:I

    iget-boolean v1, p0, LDc/d;->l:Z

    iput-boolean v1, v0, LDc/d;->l:Z

    iget-object v1, p0, LDc/d;->m:Ljava/lang/String;

    iput-object v1, v0, LDc/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c(LDc/d$b;)LDc/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overrideType"
        }
    .end annotation

    new-instance v0, LDc/d;

    invoke-direct {v0, p1}, LDc/d;-><init>(LDc/d$b;)V

    iget p1, p0, LDc/d;->d:I

    iput p1, v0, LDc/d;->d:I

    iget p1, p0, LDc/d;->e:I

    iput p1, v0, LDc/d;->e:I

    invoke-virtual {p0}, LDc/d;->o()Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p1

    invoke-static {p1}, LDc/d;->d(Lcom/itsmagic/engine/Engines/Native/Base/a;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p1

    iput-object p1, v0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    iget-object p1, p0, LDc/d;->i:LDc/d$a;

    iput-object p1, v0, LDc/d;->i:LDc/d$a;

    iget-boolean p1, p0, LDc/d;->j:Z

    iput-boolean p1, v0, LDc/d;->j:Z

    iget p1, p0, LDc/d;->k:I

    iput p1, v0, LDc/d;->k:I

    iget p1, p0, LDc/d;->a:I

    iput p1, v0, LDc/d;->a:I

    iget p1, p0, LDc/d;->c:I

    iput p1, v0, LDc/d;->c:I

    iget-object p1, p0, LDc/d;->g:LDc/d$c;

    iput-object p1, v0, LDc/d;->g:LDc/d$c;

    iget p1, p0, LDc/d;->b:I

    iput p1, v0, LDc/d;->b:I

    iget-boolean p1, p0, LDc/d;->l:Z

    iput-boolean p1, v0, LDc/d;->l:Z

    iget-object p1, p0, LDc/d;->m:Ljava/lang/String;

    iput-object p1, v0, LDc/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LDc/d;->b()LDc/d;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numElements"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, LDc/d;->d:I

    mul-int/2addr v0, p1

    iget-object p1, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized buffer format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const-class p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0, p1}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual {v2, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    iput-object v2, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    goto :goto_1

    :pswitch_2
    const-class p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, p1}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    goto :goto_1

    :pswitch_3
    const-class p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0, p1}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v2, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    iput-object v2, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    goto :goto_1

    :pswitch_4
    const-class p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, p1}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    invoke-virtual {v2, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    iput-object v2, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    :goto_1
    iget-object p1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result p1

    iput p1, p0, LDc/d;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LDc/d;->l:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "numElements must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, LDc/d;->i:LDc/d$a;

    sget-object v1, LDc/d$a;->Float:LDc/d$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    iget v2, p0, LDc/d;->d:I

    div-int/2addr v1, v2

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v3, p0, LDc/d;->d:I

    mul-int/2addr v3, v1

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    invoke-static {v3}, LNc/a;->i(F)S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    sget-object v0, LDc/d$a;->Half:LDc/d$a;

    iput-object v0, p0, LDc/d;->i:LDc/d$a;

    iget v1, p0, LDc/d;->d:I

    invoke-virtual {v0}, LDc/d$a;->b()I

    move-result v0

    mul-int/2addr v1, v0

    iput v1, p0, LDc/d;->e:I

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v0

    iput v0, p0, LDc/d;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LDc/d;->l:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data must be NativeFloatBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Format must be float!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(ILDc/d;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inIndex",
            "outVb",
            "outIndex"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, LDc/d;->h(ILDc/d;II)V

    return-void
.end method

.method public h(ILDc/d;II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inIndex",
            "outVb",
            "outIndex",
            "len"
        }
    .end annotation

    iget-object v0, p2, LDc/d;->i:LDc/d$a;

    iget-object v1, p0, LDc/d;->i:LDc/d$a;

    if-ne v0, v1, :cond_1

    iget v0, p2, LDc/d;->d:I

    iget v2, p0, LDc/d;->d:I

    if-ne v0, v2, :cond_1

    mul-int/2addr p1, v2

    mul-int/2addr p3, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized buffer format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const-class v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p2, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    mul-int/2addr v2, p4

    invoke-virtual {p2, p3, v3, p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    goto :goto_1

    :pswitch_2
    const-class v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    :goto_0
    mul-int v0, v2, p4

    if-ge v1, v0, :cond_0

    add-int v0, p3, v1

    add-int v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {p2, v0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p2, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    mul-int/2addr v2, p4

    invoke-virtual {p2, p3, v3, p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    goto :goto_1

    :pswitch_4
    const-class v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p2, v0}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    mul-int/2addr v2, p4

    invoke-virtual {p2, p3, v3, p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer format mismatch. Cannot copy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    return-void
.end method

.method public l()I
    .locals 2

    iget v0, p0, LDc/d;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, LDc/d;->u()I

    move-result v0

    iget v1, p0, LDc/d;->k:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public m()LDc/d$b;
    .locals 1

    iget-object v0, p0, LDc/d;->h:LDc/d$b;

    return-object v0
.end method

.method public n()Lcom/itsmagic/engine/Engines/Native/Base/a;
    .locals 1

    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    return-object v0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Native/Base/a;
    .locals 1

    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    invoke-static {v0}, LDc/d;->d(Lcom/itsmagic/engine/Engines/Native/Base/a;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v0

    return-object v0
.end method

.method public p(II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elementIndex",
            "componentIndex"
        }
    .end annotation

    iget v0, p0, LDc/d;->d:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    iget-object p2, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized buffer format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_3
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-class p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, p2}, LDc/d;->C(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public q()LDc/d$a;
    .locals 1

    iget-object v0, p0, LDc/d;->i:LDc/d$a;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, LDc/d;->k:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LDc/d;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LDc/d;->m()LDc/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDc/d;->m:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LDc/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, LDc/d;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[fmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LDc/d;->i:LDc/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LDc/d;->h:LDc/d$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LDc/d;->g:LDc/d$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 2

    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    if-eqz v0, :cond_1

    iget v1, p0, LDc/d;->d:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result v0

    iget v1, p0, LDc/d;->d:I

    div-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, LDc/d;->a:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, LDc/d;->c:I

    return v0
.end method

.method public x()LDc/d$c;
    .locals 1

    iget-object v0, p0, LDc/d;->g:LDc/d$c;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, LDc/d;->l:Z

    return v0
.end method

.method public z()Z
    .locals 3

    iget-object v0, p0, LDc/d;->h:LDc/d$b;

    if-eqz v0, :cond_11

    iget-object v0, p0, LDc/d;->i:LDc/d$a;

    if-eqz v0, :cond_11

    iget-object v0, p0, LDc/d;->g:LDc/d$c;

    if-eqz v0, :cond_11

    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    if-eqz v0, :cond_10

    iget v1, p0, LDc/d;->a:I

    if-ltz v1, :cond_f

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result v0

    if-gt v1, v0, :cond_f

    iget-object v0, p0, LDc/d;->h:LDc/d$b;

    sget-object v1, LDc/d$b;->InstanceData:LDc/d$b;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, LDc/d;->d:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->capacity()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, LDc/d;->i:LDc/d$a;

    sget-object v1, LDc/d$a;->Float:LDc/d$a;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    instance-of v1, v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    sget-object v1, LDc/d$a;->Int:LDc/d$a;

    if-eq v0, v1, :cond_c

    sget-object v1, LDc/d$a;->UnsignedInt:LDc/d$a;

    if-ne v0, v1, :cond_4

    goto :goto_4

    :cond_4
    sget-object v1, LDc/d$a;->Short:LDc/d$a;

    if-eq v0, v1, :cond_a

    sget-object v1, LDc/d$a;->UnsignedShort:LDc/d$a;

    if-eq v0, v1, :cond_a

    sget-object v1, LDc/d$a;->Half:LDc/d$a;

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    sget-object v1, LDc/d$a;->Byte:LDc/d$a;

    if-eq v0, v1, :cond_8

    sget-object v1, LDc/d$a;->UnsignedByte:LDc/d$a;

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, LDc/d$a;->Double:LDc/d$a;

    if-eq v0, v1, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_2
    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_3
    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_4
    iget-object v0, p0, LDc/d;->f:Lcom/itsmagic/engine/Engines/Native/Base/a;

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_d

    :goto_5
    return v2

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
