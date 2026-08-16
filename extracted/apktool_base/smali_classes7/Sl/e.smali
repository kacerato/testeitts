.class public LSl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:I

.field public B:LBi/y;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:[B

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(IIIIIIIIIIZ[BZZLBi/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LSl/e;->b:I

    iput p2, p0, LSl/e;->c:I

    iput p3, p0, LSl/e;->e:I

    iput p4, p0, LSl/e;->f:I

    iput p5, p0, LSl/e;->g:I

    iput p7, p0, LSl/e;->o:I

    iput p6, p0, LSl/e;->r:I

    iput p8, p0, LSl/e;->t:I

    iput p9, p0, LSl/e;->u:I

    iput p10, p0, LSl/e;->v:I

    iput-boolean p11, p0, LSl/e;->w:Z

    iput-object p12, p0, LSl/e;->x:[B

    iput-boolean p13, p0, LSl/e;->y:Z

    iput-boolean p14, p0, LSl/e;->z:Z

    const/4 p1, 0x1

    iput p1, p0, LSl/e;->A:I

    iput-object p15, p0, LSl/e;->B:LBi/y;

    invoke-virtual {p0}, LSl/e;->c()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIZ[BZZLBi/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LSl/e;->b:I

    iput p2, p0, LSl/e;->c:I

    iput p3, p0, LSl/e;->d:I

    iput p5, p0, LSl/e;->o:I

    iput p4, p0, LSl/e;->r:I

    iput p6, p0, LSl/e;->t:I

    iput p7, p0, LSl/e;->u:I

    iput p8, p0, LSl/e;->v:I

    iput-boolean p9, p0, LSl/e;->w:Z

    iput-object p10, p0, LSl/e;->x:[B

    iput-boolean p11, p0, LSl/e;->y:Z

    iput-boolean p12, p0, LSl/e;->z:Z

    const/4 p1, 0x0

    iput p1, p0, LSl/e;->A:I

    iput-object p13, p0, LSl/e;->B:LBi/y;

    invoke-virtual {p0}, LSl/e;->c()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->b:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->c:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->d:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->e:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->f:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->g:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->o:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->r:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->t:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->u:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/e;->v:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, LSl/e;->w:Z

    const/4 p1, 0x3

    new-array p1, p1, [B

    iput-object p1, p0, LSl/e;->x:[B

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, LSl/e;->y:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, LSl/e;->z:Z

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, LSl/e;->A:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SHA-512"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, LIi/O;

    invoke-direct {p1}, LIi/O;-><init>()V

    :goto_0
    iput-object p1, p0, LSl/e;->B:LBi/y;

    goto :goto_1

    :cond_0
    const-string v0, "SHA-256"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, LIi/L;

    invoke-direct {p1}, LIi/L;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, LSl/e;->c()V

    return-void
.end method


# virtual methods
.method public a()LSl/e;
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, LSl/e;->A:I

    if-nez v1, :cond_0

    new-instance v1, LSl/e;

    iget v3, v0, LSl/e;->b:I

    iget v4, v0, LSl/e;->c:I

    iget v5, v0, LSl/e;->d:I

    iget v6, v0, LSl/e;->r:I

    iget v7, v0, LSl/e;->o:I

    iget v8, v0, LSl/e;->t:I

    iget v9, v0, LSl/e;->u:I

    iget v10, v0, LSl/e;->v:I

    iget-boolean v11, v0, LSl/e;->w:Z

    iget-object v12, v0, LSl/e;->x:[B

    iget-boolean v13, v0, LSl/e;->y:Z

    iget-boolean v14, v0, LSl/e;->z:Z

    iget-object v2, v0, LSl/e;->B:LBi/y;

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/g;->a(LBi/y;)LBi/y;

    move-result-object v15

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, LSl/e;-><init>(IIIIIIIIZ[BZZLBi/y;)V

    return-object v1

    :cond_0
    new-instance v1, LSl/e;

    iget v2, v0, LSl/e;->b:I

    iget v3, v0, LSl/e;->c:I

    iget v4, v0, LSl/e;->e:I

    iget v5, v0, LSl/e;->f:I

    iget v6, v0, LSl/e;->g:I

    iget v7, v0, LSl/e;->r:I

    iget v8, v0, LSl/e;->o:I

    iget v9, v0, LSl/e;->t:I

    iget v10, v0, LSl/e;->u:I

    iget v11, v0, LSl/e;->v:I

    iget-boolean v12, v0, LSl/e;->w:Z

    iget-object v13, v0, LSl/e;->x:[B

    iget-boolean v14, v0, LSl/e;->y:Z

    iget-boolean v15, v0, LSl/e;->z:Z

    move/from16 v30, v15

    iget-object v15, v0, LSl/e;->B:LBi/y;

    invoke-static {v15}, Lorg/bouncycastle/crypto/util/g;->a(LBi/y;)LBi/y;

    move-result-object v31

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v28, v13

    move/from16 v29, v14

    invoke-direct/range {v16 .. v31}, LSl/e;-><init>(IIIIIIIIIIZ[BZZLBi/y;)V

    return-object v1
.end method

.method public b()I
    .locals 1

    iget v0, p0, LSl/e;->n:I

    return v0
.end method

.method public final c()V
    .locals 5

    iget v0, p0, LSl/e;->d:I

    iput v0, p0, LSl/e;->h:I

    iget v0, p0, LSl/e;->e:I

    iput v0, p0, LSl/e;->i:I

    iget v0, p0, LSl/e;->f:I

    iput v0, p0, LSl/e;->j:I

    iget v0, p0, LSl/e;->g:I

    iput v0, p0, LSl/e;->k:I

    iget v0, p0, LSl/e;->b:I

    div-int/lit8 v1, v0, 0x3

    iput v1, p0, LSl/e;->l:I

    const/4 v1, 0x1

    iput v1, p0, LSl/e;->m:I

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, v1

    iget v3, p0, LSl/e;->o:I

    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iput v2, p0, LSl/e;->n:I

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    iput v2, p0, LSl/e;->p:I

    sub-int/2addr v0, v1

    iput v0, p0, LSl/e;->q:I

    iput v3, p0, LSl/e;->s:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LSl/e;->a()LSl/e;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget p1, p0, LSl/e;->b:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->c:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->d:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->e:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->f:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->g:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->o:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->r:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->t:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->u:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/e;->v:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean p1, p0, LSl/e;->w:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object p1, p0, LSl/e;->x:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-boolean p1, p0, LSl/e;->y:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean p1, p0, LSl/e;->z:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget p1, p0, LSl/e;->A:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object p1, p0, LSl/e;->B:LBi/y;

    invoke-interface {p1}, LBi/y;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, LSl/e;

    iget v2, p0, LSl/e;->b:I

    iget v3, p1, LSl/e;->b:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, LSl/e;->p:I

    iget v3, p1, LSl/e;->p:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, LSl/e;->q:I

    iget v3, p1, LSl/e;->q:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, LSl/e;->t:I

    iget v3, p1, LSl/e;->t:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, LSl/e;->o:I

    iget v3, p1, LSl/e;->o:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, LSl/e;->d:I

    iget v3, p1, LSl/e;->d:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, LSl/e;->e:I

    iget v3, p1, LSl/e;->e:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p0, LSl/e;->f:I

    iget v3, p1, LSl/e;->f:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, LSl/e;->g:I

    iget v3, p1, LSl/e;->g:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, LSl/e;->l:I

    iget v3, p1, LSl/e;->l:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget v2, p0, LSl/e;->r:I

    iget v3, p1, LSl/e;->r:I

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget v2, p0, LSl/e;->h:I

    iget v3, p1, LSl/e;->h:I

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget v2, p0, LSl/e;->i:I

    iget v3, p1, LSl/e;->i:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget v2, p0, LSl/e;->j:I

    iget v3, p1, LSl/e;->j:I

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    iget v2, p0, LSl/e;->k:I

    iget v3, p1, LSl/e;->k:I

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    iget-boolean v2, p0, LSl/e;->z:Z

    iget-boolean v3, p1, LSl/e;->z:Z

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    iget-object v2, p0, LSl/e;->B:LBi/y;

    if-nez v2, :cond_13

    iget-object v2, p1, LSl/e;->B:LBi/y;

    if-eqz v2, :cond_14

    return v1

    :cond_13
    invoke-interface {v2}, LBi/y;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, LSl/e;->B:LBi/y;

    invoke-interface {v3}, LBi/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    :cond_14
    iget-boolean v2, p0, LSl/e;->w:Z

    iget-boolean v3, p1, LSl/e;->w:Z

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    iget v2, p0, LSl/e;->m:I

    iget v3, p1, LSl/e;->m:I

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget v2, p0, LSl/e;->n:I

    iget v3, p1, LSl/e;->n:I

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    iget v2, p0, LSl/e;->v:I

    iget v3, p1, LSl/e;->v:I

    if-eq v2, v3, :cond_18

    return v1

    :cond_18
    iget v2, p0, LSl/e;->u:I

    iget v3, p1, LSl/e;->u:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget-object v2, p0, LSl/e;->x:[B

    iget-object v3, p1, LSl/e;->x:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    :cond_1a
    iget v2, p0, LSl/e;->s:I

    iget v3, p1, LSl/e;->s:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget v2, p0, LSl/e;->A:I

    iget v3, p1, LSl/e;->A:I

    if-eq v2, v3, :cond_1c

    return v1

    :cond_1c
    iget v2, p0, LSl/e;->c:I

    iget v3, p1, LSl/e;->c:I

    if-eq v2, v3, :cond_1d

    return v1

    :cond_1d
    iget-boolean v2, p0, LSl/e;->y:Z

    iget-boolean p1, p1, LSl/e;->y:Z

    if-eq v2, p1, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, LSl/e;->b:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->p:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->q:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->t:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->o:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->d:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->e:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->g:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->l:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->r:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->h:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->i:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->j:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->k:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, LSl/e;->z:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, LSl/e;->B:LBi/y;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, LBi/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, LSl/e;->w:Z

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->m:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->n:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->v:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->u:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, LSl/e;->x:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->s:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->A:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/e;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, LSl/e;->y:Z

    if-eqz v1, :cond_3

    move v3, v4

    :cond_3
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncryptionParameters(N="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LSl/e;->A:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " polyType=SIMPLE df="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->d:I

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " polyType=PRODUCT df1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " df2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " df3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->g:I

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dm0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minCallsR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minCallsMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LSl/e;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hashSeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, LSl/e;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hashAlg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LSl/e;->B:LBi/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LSl/e;->x:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sparse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, LSl/e;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
