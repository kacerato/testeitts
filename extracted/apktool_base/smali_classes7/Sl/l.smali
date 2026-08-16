.class public LSl/l;
.super LBi/G;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final C:LSl/l;

.field public static final D:LSl/l;

.field public static final E:LSl/l;

.field public static final F:LSl/l;

.field public static final G:LSl/l;

.field public static final H:LSl/l;

.field public static final y:I = 0x0

.field public static final z:I = 0x1


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field public o:I

.field public p:D

.field public q:D

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:LBi/y;

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v16, LSl/l;

    new-instance v15, LIi/L;

    invoke-direct {v15}, LIi/L;-><init>()V

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x92

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide v6, 0x3fc51eb851eb851fL    # 0.165

    const-wide v8, 0x407ea00000000000L    # 490.0

    const-wide v10, 0x4071800000000000L    # 280.0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, LSl/l;-><init>(IIIIIDDDZZILBi/y;)V

    sput-object v16, LSl/l;->C:LSl/l;

    new-instance v0, LSl/l;

    move-object/from16 v17, v0

    new-instance v1, LIi/L;

    move-object/from16 v34, v1

    invoke-direct {v1}, LIi/L;-><init>()V

    const/16 v18, 0x1b7

    const/16 v19, 0x800

    const/16 v20, 0x9

    const/16 v21, 0x8

    const/16 v22, 0x5

    const/16 v23, 0x1

    const/16 v24, 0x1

    const-wide v25, 0x3fc51eb851eb851fL    # 0.165

    const-wide v27, 0x407ea00000000000L    # 490.0

    const-wide v29, 0x4071800000000000L    # 280.0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    invoke-direct/range {v17 .. v34}, LSl/l;-><init>(IIIIIIIDDDZZILBi/y;)V

    sput-object v0, LSl/l;->D:LSl/l;

    new-instance v0, LSl/l;

    new-instance v16, LIi/O;

    invoke-direct/range {v16 .. v16}, LIi/O;-><init>()V

    const/16 v2, 0x2e7

    const/16 v3, 0x800

    const/16 v4, 0xf8

    const/4 v6, 0x1

    const-wide v7, 0x3fc04189374bc6a8L    # 0.127

    const-wide v9, 0x4081800000000000L    # 560.0

    const-wide v11, 0x4076800000000000L    # 360.0

    const/4 v15, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, LSl/l;-><init>(IIIIIDDDZZILBi/y;)V

    sput-object v0, LSl/l;->E:LSl/l;

    new-instance v0, LSl/l;

    move-object/from16 v17, v0

    new-instance v1, LIi/O;

    move-object/from16 v34, v1

    invoke-direct {v1}, LIi/O;-><init>()V

    const/16 v18, 0x2e7

    const/16 v20, 0xb

    const/16 v21, 0xb

    const/16 v22, 0xf

    const-wide v25, 0x3fc04189374bc6a8L    # 0.127

    const-wide v27, 0x4081800000000000L    # 560.0

    const-wide v29, 0x4076800000000000L    # 360.0

    const/16 v31, 0x1

    const/16 v32, 0x0

    invoke-direct/range {v17 .. v34}, LSl/l;-><init>(IIIIIIIDDDZZILBi/y;)V

    sput-object v0, LSl/l;->F:LSl/l;

    new-instance v0, LSl/l;

    new-instance v16, LIi/L;

    invoke-direct/range {v16 .. v16}, LIi/L;-><init>()V

    const/16 v2, 0x9d

    const/16 v3, 0x100

    const/16 v4, 0x1d

    const-wide v7, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, LSl/l;-><init>(IIIIIDDDZZILBi/y;)V

    sput-object v0, LSl/l;->G:LSl/l;

    new-instance v0, LSl/l;

    move-object/from16 v17, v0

    new-instance v1, LIi/L;

    move-object/from16 v34, v1

    invoke-direct {v1}, LIi/L;-><init>()V

    const/16 v18, 0x9d

    const/16 v19, 0x100

    const/16 v20, 0x5

    const/16 v21, 0x5

    const/16 v22, 0x8

    const-wide v25, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v27, 0x4069000000000000L    # 200.0

    const-wide/high16 v29, 0x4054000000000000L    # 80.0

    const/16 v31, 0x0

    invoke-direct/range {v17 .. v34}, LSl/l;-><init>(IIIIIIIDDDZZILBi/y;)V

    sput-object v0, LSl/l;->H:LSl/l;

    return-void
.end method

.method public constructor <init>(IIIIIDDDZZILBi/y;)V
    .locals 3

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {p0, v2, p1}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    const/16 v2, 0x64

    iput v2, v0, LSl/l;->o:I

    const/4 v2, 0x6

    iput v2, v0, LSl/l;->t:I

    iput v1, v0, LSl/l;->d:I

    move v1, p2

    iput v1, v0, LSl/l;->e:I

    move v1, p3

    iput v1, v0, LSl/l;->f:I

    move v1, p4

    iput v1, v0, LSl/l;->j:I

    move v1, p5

    iput v1, v0, LSl/l;->s:I

    move-wide v1, p6

    iput-wide v1, v0, LSl/l;->k:D

    move-wide v1, p8

    iput-wide v1, v0, LSl/l;->m:D

    move-wide v1, p10

    iput-wide v1, v0, LSl/l;->p:D

    move v1, p12

    iput-boolean v1, v0, LSl/l;->r:Z

    move/from16 v1, p13

    iput-boolean v1, v0, LSl/l;->u:Z

    move/from16 v1, p14

    iput v1, v0, LSl/l;->v:I

    move-object/from16 v1, p15

    iput-object v1, v0, LSl/l;->w:LBi/y;

    const/4 v1, 0x0

    iput v1, v0, LSl/l;->x:I

    invoke-direct {p0}, LSl/l;->e()V

    return-void
.end method

.method public constructor <init>(IIIIIIIDDDZZILBi/y;)V
    .locals 3

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {p0, v2, p1}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    const/16 v2, 0x64

    iput v2, v0, LSl/l;->o:I

    const/4 v2, 0x6

    iput v2, v0, LSl/l;->t:I

    iput v1, v0, LSl/l;->d:I

    move v1, p2

    iput v1, v0, LSl/l;->e:I

    move v1, p3

    iput v1, v0, LSl/l;->g:I

    move v1, p4

    iput v1, v0, LSl/l;->h:I

    move v1, p5

    iput v1, v0, LSl/l;->i:I

    move v1, p6

    iput v1, v0, LSl/l;->j:I

    move v1, p7

    iput v1, v0, LSl/l;->s:I

    move-wide v1, p8

    iput-wide v1, v0, LSl/l;->k:D

    move-wide v1, p10

    iput-wide v1, v0, LSl/l;->m:D

    move-wide v1, p12

    iput-wide v1, v0, LSl/l;->p:D

    move/from16 v1, p14

    iput-boolean v1, v0, LSl/l;->r:Z

    move/from16 v1, p15

    iput-boolean v1, v0, LSl/l;->u:Z

    move/from16 v1, p16

    iput v1, v0, LSl/l;->v:I

    move-object/from16 v1, p17

    iput-object v1, v0, LSl/l;->w:LBi/y;

    const/4 v1, 0x1

    iput v1, v0, LSl/l;->x:I

    invoke-direct {p0}, LSl/l;->e()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    const/16 v0, 0x64

    iput v0, p0, LSl/l;->o:I

    const/4 v0, 0x6

    iput v0, p0, LSl/l;->t:I

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->d:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->e:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->f:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->g:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->h:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->i:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->j:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->s:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, LSl/l;->k:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, LSl/l;->m:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, LSl/l;->p:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->o:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, LSl/l;->r:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, LSl/l;->u:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, LSl/l;->t:I

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, LSl/l;->v:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SHA-512"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, LIi/O;

    invoke-direct {p1}, LIi/O;-><init>()V

    :goto_0
    iput-object p1, p0, LSl/l;->w:LBi/y;

    goto :goto_1

    :cond_0
    const-string v1, "SHA-256"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, LIi/L;

    invoke-direct {p1}, LIi/L;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, LSl/l;->x:I

    invoke-direct {p0}, LSl/l;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-wide v0, p0, LSl/l;->k:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, LSl/l;->l:D

    iget-wide v0, p0, LSl/l;->m:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, LSl/l;->n:D

    iget-wide v0, p0, LSl/l;->p:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, LSl/l;->q:D

    return-void
.end method


# virtual methods
.method public c()LSl/l;
    .locals 37

    move-object/from16 v0, p0

    iget v1, v0, LSl/l;->x:I

    if-nez v1, :cond_0

    new-instance v1, LSl/l;

    iget v3, v0, LSl/l;->d:I

    iget v4, v0, LSl/l;->e:I

    iget v5, v0, LSl/l;->f:I

    iget v6, v0, LSl/l;->j:I

    iget v7, v0, LSl/l;->s:I

    iget-wide v8, v0, LSl/l;->k:D

    iget-wide v10, v0, LSl/l;->m:D

    iget-wide v12, v0, LSl/l;->p:D

    iget-boolean v14, v0, LSl/l;->r:Z

    iget-boolean v15, v0, LSl/l;->u:Z

    iget v2, v0, LSl/l;->v:I

    move/from16 v16, v15

    iget-object v15, v0, LSl/l;->w:LBi/y;

    move/from16 v17, v2

    move-object v2, v1

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v2 .. v17}, LSl/l;-><init>(IIIIIDDDZZILBi/y;)V

    return-object v1

    :cond_0
    new-instance v1, LSl/l;

    move-object/from16 v19, v1

    iget v2, v0, LSl/l;->d:I

    move/from16 v20, v2

    iget v2, v0, LSl/l;->e:I

    move/from16 v21, v2

    iget v2, v0, LSl/l;->g:I

    move/from16 v22, v2

    iget v2, v0, LSl/l;->h:I

    move/from16 v23, v2

    iget v2, v0, LSl/l;->i:I

    move/from16 v24, v2

    iget v2, v0, LSl/l;->j:I

    move/from16 v25, v2

    iget v2, v0, LSl/l;->s:I

    move/from16 v26, v2

    iget-wide v2, v0, LSl/l;->k:D

    move-wide/from16 v27, v2

    iget-wide v2, v0, LSl/l;->m:D

    move-wide/from16 v29, v2

    iget-wide v2, v0, LSl/l;->p:D

    move-wide/from16 v31, v2

    iget-boolean v2, v0, LSl/l;->r:Z

    move/from16 v33, v2

    iget-boolean v2, v0, LSl/l;->u:Z

    move/from16 v34, v2

    iget v2, v0, LSl/l;->v:I

    move/from16 v35, v2

    iget-object v2, v0, LSl/l;->w:LBi/y;

    move-object/from16 v36, v2

    invoke-direct/range {v19 .. v36}, LSl/l;-><init>(IIIIIIIDDDZZILBi/y;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LSl/l;->c()LSl/l;

    move-result-object v0

    return-object v0
.end method

.method public d()LSl/n;
    .locals 11

    new-instance v10, LSl/n;

    iget v1, p0, LSl/l;->d:I

    iget v2, p0, LSl/l;->e:I

    iget v3, p0, LSl/l;->f:I

    iget v4, p0, LSl/l;->j:I

    iget-wide v5, p0, LSl/l;->k:D

    iget-wide v7, p0, LSl/l;->m:D

    iget-object v9, p0, LSl/l;->w:LBi/y;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, LSl/n;-><init>(IIIIDDLBi/y;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, LSl/l;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, LSl/l;

    iget v2, p0, LSl/l;->j:I

    iget v3, p1, LSl/l;->j:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, LSl/l;->d:I

    iget v3, p1, LSl/l;->d:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, LSl/l;->s:I

    iget v3, p1, LSl/l;->s:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, LSl/l;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, LSl/l;->k:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, LSl/l;->l:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, LSl/l;->l:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget v2, p0, LSl/l;->t:I

    iget v3, p1, LSl/l;->t:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, LSl/l;->f:I

    iget v3, p1, LSl/l;->f:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p0, LSl/l;->g:I

    iget v3, p1, LSl/l;->g:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, LSl/l;->h:I

    iget v3, p1, LSl/l;->h:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, LSl/l;->i:I

    iget v3, p1, LSl/l;->i:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, LSl/l;->w:LBi/y;

    if-nez v2, :cond_d

    iget-object v2, p1, LSl/l;->w:LBi/y;

    if-eqz v2, :cond_e

    return v1

    :cond_d
    invoke-interface {v2}, LBi/y;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, LSl/l;->w:LBi/y;

    invoke-interface {v3}, LBi/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget v2, p0, LSl/l;->v:I

    iget v3, p1, LSl/l;->v:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget-wide v2, p0, LSl/l;->p:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, LSl/l;->p:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    return v1

    :cond_10
    iget-wide v2, p0, LSl/l;->q:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, LSl/l;->q:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    return v1

    :cond_11
    iget-wide v2, p0, LSl/l;->m:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, LSl/l;->m:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    return v1

    :cond_12
    iget-wide v2, p0, LSl/l;->n:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, LSl/l;->n:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    return v1

    :cond_13
    iget v2, p0, LSl/l;->x:I

    iget v3, p1, LSl/l;->x:I

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget-boolean v2, p0, LSl/l;->r:Z

    iget-boolean v3, p1, LSl/l;->r:Z

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    iget v2, p0, LSl/l;->e:I

    iget v3, p1, LSl/l;->e:I

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget v2, p0, LSl/l;->o:I

    iget v3, p1, LSl/l;->o:I

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    iget-boolean v2, p0, LSl/l;->u:Z

    iget-boolean p1, p1, LSl/l;->u:Z

    if-eq v2, p1, :cond_18

    return v1

    :cond_18
    return v0
.end method

.method public f(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget p1, p0, LSl/l;->d:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->e:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->f:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->g:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->h:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->i:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->j:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->s:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v1, p0, LSl/l;->k:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v1, p0, LSl/l;->m:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v1, p0, LSl/l;->p:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget p1, p0, LSl/l;->o:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean p1, p0, LSl/l;->r:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean p1, p0, LSl/l;->u:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget p1, p0, LSl/l;->t:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p1, p0, LSl/l;->v:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object p1, p0, LSl/l;->w:LBi/y;

    invoke-interface {p1}, LBi/y;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget p1, p0, LSl/l;->x:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, LSl/l;->j:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->d:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->s:I

    add-int/2addr v0, v2

    iget-wide v2, p0, LSl/l;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, LSl/l;->l:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->t:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->g:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->h:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->i:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, LSl/l;->w:LBi/y;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, LBi/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->v:I

    add-int/2addr v0, v2

    iget-wide v2, p0, LSl/l;->p:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, LSl/l;->q:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, LSl/l;->m:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, LSl/l;->n:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->x:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, LSl/l;->r:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->e:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LSl/l;->o:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, LSl/l;->u:Z

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignatureParameters(N="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, LSl/l;->x:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " polyType=SIMPLE d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->f:I

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " polyType=PRODUCT d1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " d2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " d3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->i:I

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " B="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " basisType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LSl/l;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " beta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, LSl/l;->k:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " normBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, LSl/l;->m:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " keyNormBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, LSl/l;->p:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " prime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, LSl/l;->r:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " sparse="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, LSl/l;->u:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " keyGenAlg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LSl/l;->v:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hashAlg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LSl/l;->w:LBi/y;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
