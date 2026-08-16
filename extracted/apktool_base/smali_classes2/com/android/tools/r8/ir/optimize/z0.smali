.class public final Lcom/android/tools/r8/ir/optimize/z0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/androidapi/a;

.field public final f:Lcom/android/tools/r8/graph/o2;

.field public final g:Lcom/android/tools/r8/graph/O1;

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/z0;->e:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o6:Lcom/android/tools/r8/graph/o2;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/z0;->f:Lcom/android/tools/r8/graph/o2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->p6:Lcom/android/tools/r8/graph/O1;

    iput-object v1, p0, Lcom/android/tools/r8/ir/optimize/z0;->g:Lcom/android/tools/r8/graph/O1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    iget-object v0, v0, Lcom/android/tools/r8/graph/o2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/F4;->c:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/ir/optimize/z0;->h:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->O:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p2, :cond_1

    return v1

    .line 50
    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 51
    iget-object v3, v2, Lcom/android/tools/r8/internal/Yx0;->b:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 53
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 54
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/W5;

    if-ne p0, p2, :cond_2

    return v1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    instance-of v0, p1, Lcom/android/tools/r8/internal/C4;

    if-nez v0, :cond_1

    .line 155
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v5, p0

    .line 185
    iget-object v6, v5, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 186
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    .line 187
    sget v7, Lcom/android/tools/r8/internal/hC;->c:I

    .line 188
    new-instance v7, Lcom/android/tools/r8/internal/eC;

    .line 189
    invoke-direct {v7}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 190
    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 191
    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 192
    new-instance v10, Lcom/android/tools/r8/internal/z9;

    .line 193
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v11, v11

    sget-object v13, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v10, v11, v12, v13}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v11, Lcom/android/tools/r8/internal/xa;

    const/4 v12, 0x1

    move-object/from16 v13, p1

    .line 194
    invoke-virtual {v6, v12, v13}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    const/4 v13, 0x3

    new-array v14, v13, [Lcom/android/tools/r8/internal/W9;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    aput-object v10, v14, v12

    const/4 v10, 0x2

    aput-object v11, v14, v10

    .line 195
    invoke-static {v13, v14}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 196
    invoke-virtual {v7, v13, v14}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    move v11, v15

    .line 197
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_0

    .line 198
    new-instance v14, Lcom/android/tools/r8/internal/kb;

    sget-object v2, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v14, v2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v4, Lcom/android/tools/r8/internal/z9;

    int-to-long v12, v11

    sget-object v10, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v4, v12, v13, v10}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v10, Lcom/android/tools/r8/internal/wa;

    .line 199
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/E0;

    iget-object v12, v12, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v10, v12}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v12, Lcom/android/tools/r8/internal/kb;

    invoke-direct {v12, v2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v2, Lcom/android/tools/r8/internal/ga;

    .line 200
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/E0;

    iget-object v13, v13, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v1, v15, [Lcom/android/tools/r8/graph/M2;

    .line 201
    invoke-virtual {v6, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 202
    invoke-virtual {v6, v13, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    const/16 v3, 0xb7

    invoke-direct {v2, v3, v1, v15}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v1, Lcom/android/tools/r8/internal/Z8;

    sget-object v3, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    const/4 v3, 0x6

    new-array v13, v3, [Lcom/android/tools/r8/internal/W9;

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v4, 0x2

    aput-object v10, v13, v4

    const/4 v4, 0x3

    aput-object v12, v13, v4

    const/4 v4, 0x4

    aput-object v2, v13, v4

    const/4 v2, 0x5

    aput-object v1, v13, v2

    .line 203
    invoke-static {v3, v13}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    invoke-virtual {v7, v3, v13}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    add-int/2addr v11, v14

    move v12, v14

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    iget-object v1, v6, Lcom/android/tools/r8/graph/u1;->k5:Lcom/android/tools/r8/graph/W1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/W1;->a:Lcom/android/tools/r8/graph/A2;

    const/16 v2, 0xb8

    invoke-direct {v0, v2, v1, v15}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget-object v2, v6, Lcom/android/tools/r8/graph/u1;->R3:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v6, Lcom/android/tools/r8/graph/u1;->M3:Lcom/android/tools/r8/graph/M2;

    new-array v4, v15, [Lcom/android/tools/r8/graph/M2;

    .line 206
    invoke-virtual {v6, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 207
    const-string v4, "iterator"

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 208
    invoke-virtual {v6, v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v2, Lcom/android/tools/r8/internal/ab;

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/4 v10, 0x4

    new-array v11, v10, [Lcom/android/tools/r8/internal/W9;

    aput-object v0, v11, v15

    aput-object v1, v11, v4

    const/4 v0, 0x2

    aput-object v9, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    .line 209
    invoke-static {v10, v11}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 210
    invoke-virtual {v7, v10, v11}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 211
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 212
    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v1

    iget-object v2, v6, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    .line 213
    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/yb;

    invoke-direct {v2, v3, v15}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/wa;

    iget-object v10, v6, Lcom/android/tools/r8/graph/u1;->V2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v4, v10}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v10, Lcom/android/tools/r8/internal/kb;

    sget-object v11, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v10, v11}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v11, v3, v15}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/ga;

    iget-object v13, v6, Lcom/android/tools/r8/graph/u1;->M4:Lcom/android/tools/r8/graph/u1$e;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1$e;->b:Lcom/android/tools/r8/graph/A2;

    const/16 v14, 0xb6

    invoke-direct {v12, v14, v13, v15}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v13, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v13, v3, v15}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v3, Lcom/android/tools/r8/internal/ga;

    iget-object v14, v6, Lcom/android/tools/r8/graph/u1;->V2:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v6, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v6, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v17, v8

    iget-object v8, v6, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 215
    invoke-virtual {v6, v15, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v8, v6, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 216
    invoke-virtual {v6, v14, v5, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    const/16 v8, 0xb7

    const/4 v14, 0x0

    invoke-direct {v3, v8, v5, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v5, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    const/16 v8, 0xa

    new-array v15, v8, [Lcom/android/tools/r8/internal/W9;

    aput-object v0, v15, v14

    const/4 v8, 0x1

    aput-object v1, v15, v8

    const/4 v1, 0x2

    aput-object v2, v15, v1

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v10, v15, v1

    const/4 v1, 0x5

    aput-object v11, v15, v1

    const/4 v1, 0x6

    aput-object v12, v15, v1

    const/4 v1, 0x7

    aput-object v13, v15, v1

    const/16 v1, 0x8

    aput-object v3, v15, v1

    const/16 v1, 0x9

    aput-object v5, v15, v1

    const/16 v1, 0xa

    .line 217
    invoke-static {v1, v15}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    invoke-virtual {v7, v1, v15}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 219
    new-instance v1, Lcom/android/tools/r8/internal/Db;

    iget-object v2, v6, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    .line 220
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 221
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    .line 222
    invoke-direct {v1, v0, v9, v3, v2}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    .line 223
    new-instance v0, Lcom/android/tools/r8/graph/G;

    .line 224
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v14

    .line 225
    new-instance v15, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v15, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 226
    sget-object v16, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x1

    move-object v10, v0

    .line 227
    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/j1;
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 171
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M3:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 173
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 174
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 175
    new-instance v2, Lv/j2;

    invoke-direct {v2}, Lv/j2;-><init>()V

    .line 176
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lv/k2;

    invoke-direct {v5, p0, v0, p2, p1}, Lv/k2;-><init>(Lcom/android/tools/r8/ir/optimize/z0;Lcom/android/tools/r8/graph/I2;Ljava/util/List;Lcom/android/tools/r8/graph/M2;)V

    .line 177
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 178
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/dX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 179
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object p2

    .line 180
    iget-object p3, p4, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 181
    invoke-interface {p2, p1, p3}, Lcom/android/tools/r8/ir/optimize/A0;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 182
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/y0;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;
    .locals 0

    .line 163
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/y0;->d:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p0, p5, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 165
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 166
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 167
    instance-of p2, p2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object p2

    .line 169
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/Ib;)V

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/gK;)Lcom/android/tools/r8/ir/optimize/y0;
    .locals 10

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/android/tools/r8/internal/uH0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/uH0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    const-string p2, "The service loader type could not be determined"

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 84
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v1

    .line 85
    iget-object v7, v1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/z0;->f:Lcom/android/tools/r8/graph/o2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/o2;->b:Lcom/android/tools/r8/graph/A2;

    .line 87
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 89
    const-string p2, "Inlining is only supported for `java.util.ServiceLoader.load(java.lang.Class, java.lang.ClassLoader)`"

    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 90
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v2

    const-string v4, "The returned ServiceLoader instance must only be used in a call to `java.util.Iterator java.lang.ServiceLoader.iterator()`"

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 92
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 93
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/z0;->f:Lcom/android/tools/r8/graph/o2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/o2;->d:Lcom/android/tools/r8/graph/A2;

    .line 94
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->P:Z

    if-nez v1, :cond_5

    .line 96
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 98
    sget-boolean v2, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v2, :cond_4

    .line 99
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->c()V

    .line 100
    :cond_4
    iget-object v2, v1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 101
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    const-string p2, "The service loader type is kept"

    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 103
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-nez v1, :cond_6

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    const-string p2, "Service type could not be resolved"

    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 105
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v1

    if-nez v1, :cond_7

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    const-string p2, "Service type must be public"

    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 107
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NJ;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    const-string v4, ".class.getClassLoader()"

    const-string v5, "The java.lang.ClassLoader argument must be defined locally as null or "

    if-eqz v2, :cond_8

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 110
    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 111
    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    instance-of v2, v2, Lcom/android/tools/r8/internal/Zd0;

    .line 113
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v6

    const/4 v1, 0x1

    if-eqz v6, :cond_9

    .line 114
    iget-object v8, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v1, :cond_9

    .line 116
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 117
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 118
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 119
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    .line 120
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v8

    .line 121
    iget-object v8, v8, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 122
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v0, v1

    :cond_9
    if-nez v2, :cond_a

    if-nez v0, :cond_a

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 126
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    .line 127
    invoke-virtual {p0, p1, v7, v2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v3

    .line 128
    :cond_b
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 131
    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-nez v4, :cond_c

    .line 132
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 133
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find definition for service implementation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 135
    :cond_c
    iget-object v5, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v2, v7}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 137
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation is not a subtype of the service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 139
    :cond_d
    sget-object v5, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    if-nez v5, :cond_e

    .line 140
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 141
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation has no default constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 143
    :cond_e
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    .line 144
    iget v5, v5, Lcom/android/tools/r8/graph/g;->b:I

    .line 145
    invoke-static {v5, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v5

    if-nez v5, :cond_f

    .line 146
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 147
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation\'s default constructor is not public: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 149
    :cond_f
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 150
    :cond_10
    new-instance p1, Lcom/android/tools/r8/ir/optimize/y0;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/ir/optimize/y0;-><init>(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/internal/mK;Lcom/android/tools/r8/graph/M2;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/mK;)V

    return-object p1

    .line 151
    :cond_11
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but found other usages"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v7, p2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3

    .line 152
    :cond_12
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p0, p1, v7, v4}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return-object v3
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "ServiceLoaderRewriter"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 33
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z0;->f:Lcom/android/tools/r8/graph/o2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/o2;->a:Lcom/android/tools/r8/graph/A2;

    .line 34
    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    .line 35
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z0;->f:Lcom/android/tools/r8/graph/o2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/o2;->b:Lcom/android/tools/r8/graph/A2;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 40
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 41
    new-instance v1, Lcom/android/tools/r8/ir/optimize/ServiceLoaderRewriterDiagnostic;

    .line 42
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    if-nez p2, :cond_2

    .line 44
    const-string p2, ""

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not inline ServiceLoader.load"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/ir/optimize/ServiceLoaderRewriterDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    sget-object p1, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 57
    iput-object v0, p4, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 58
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 59
    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 60
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 61
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 62
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/z0;->e:Lcom/android/tools/r8/androidapi/a;

    new-instance v0, Lv/h2;

    invoke-direct {v0}, Lv/h2;-><init>()V

    .line 63
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v1, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/androidapi/a;->a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    .line 66
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 67
    new-instance p1, Lv/i2;

    invoke-direct {p1, p0, p3, p2}, Lv/i2;-><init>(Lcom/android/tools/r8/ir/optimize/z0;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    .line 68
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Ljava/util/IdentityHashMap;Ljava/util/HashMap;Lcom/android/tools/r8/ir/optimize/y0;)V
    .locals 8

    .line 156
    iget-object v0, p6, Lcom/android/tools/r8/ir/optimize/y0;->c:Lcom/android/tools/r8/graph/M2;

    new-instance v7, Lv/g2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lv/g2;-><init>(Lcom/android/tools/r8/ir/optimize/z0;Lcom/android/tools/r8/ir/optimize/y0;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/fB;)V

    .line 157
    invoke-interface {p4, v0, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 158
    new-instance p2, Lcom/android/tools/r8/internal/gK;

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p3, p6, Lcom/android/tools/r8/ir/optimize/y0;->e:Lcom/android/tools/r8/internal/mK;

    .line 160
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 161
    sget-object p4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 162
    iget-object p1, p6, Lcom/android/tools/r8/ir/optimize/y0;->e:Lcom/android/tools/r8/internal/mK;

    invoke-virtual {p5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Z)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 4
    iget-object v2, v1, Lcom/android/tools/r8/internal/Zd;->a:Ljava/util/IdentityHashMap;

    .line 5
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    .line 8
    iget-object v2, v2, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    .line 9
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_8

    .line 10
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v4, p2}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    .line 12
    :cond_2
    iget-object v5, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 13
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v5

    .line 14
    invoke-interface {v4}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz p3, :cond_3

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result v6

    if-nez v6, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 17
    const-string p3, "ClassLoader arg was null and service interface is in non-base feature"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return v5

    .line 18
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/FeatureSplit;

    .line 20
    invoke-virtual {v7}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz p3, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 22
    const-string p3, "ClassLoader arg was null and META-INF/ service entry found in non-base feature"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return v5

    :cond_5
    if-eq v7, v4, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 24
    const-string p3, "META-INF/ service found in different feature from service interface"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return v5

    .line 25
    :cond_6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    .line 26
    iget-object v8, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 27
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v8

    .line 28
    invoke-virtual {v1, v7, v8}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v8

    if-eq v8, v4, :cond_7

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Implementation found in different feature from service interface: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;)V

    return v5

    :cond_8
    :goto_0
    return v3
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 71
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->O:Z

    if-eqz p2, :cond_0

    .line 74
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0xc

    .line 75
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x26

    .line 77
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x28

    .line 79
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/hB;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/hB;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v7, Lcom/android/tools/r8/ir/optimize/z0;->f:Lcom/android/tools/r8/graph/o2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/o2;->a:Lcom/android/tools/r8/graph/A2;

    if-eq v2, v3, :cond_1

    iget-object v3, v1, Lcom/android/tools/r8/graph/o2;->b:Lcom/android/tools/r8/graph/A2;

    if-eq v2, v3, :cond_1

    iget-object v1, v1, Lcom/android/tools/r8/graph/o2;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v2, v1, :cond_0

    :cond_1
    invoke-virtual {v7, v8, v0}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/gK;)Lcom/android/tools/r8/ir/optimize/y0;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, v7, Lcom/android/tools/r8/ir/optimize/z0;->h:Z

    if-nez v0, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v0, v6, Lcom/android/tools/r8/ir/optimize/y0;->e:Lcom/android/tools/r8/internal/mK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v13

    invoke-static {v5, v4, v13}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v15, Lcom/android/tools/r8/internal/C4;

    if-eqz v1, :cond_6

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/W5;->c(Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v1

    if-nez v1, :cond_8

    goto/16 :goto_9

    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v15, v7, Lcom/android/tools/r8/ir/optimize/z0;->g:Lcom/android/tools/r8/graph/O1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/O1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v15}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v13, :cond_9

    goto/16 :goto_9

    :cond_9
    if-eqz v5, :cond_a

    move-object v13, v1

    goto :goto_1

    :cond_a
    move-object v5, v1

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v15, v7, Lcom/android/tools/r8/ir/optimize/z0;->g:Lcom/android/tools/r8/graph/O1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/O1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v15}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v14, :cond_c

    goto/16 :goto_9

    :cond_c
    move-object v14, v1

    goto :goto_1

    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_2

    :cond_e
    const/4 v1, 0x0

    :goto_2
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    :goto_3
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    :goto_4
    if-eqz v1, :cond_1d

    if-eqz v4, :cond_1d

    if-eqz v2, :cond_19

    if-ne v1, v2, :cond_11

    goto/16 :goto_9

    :cond_11
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_5

    :cond_12
    move-object/from16 v16, v13

    move-object v13, v5

    move-object/from16 v5, v16

    :goto_5
    if-ne v4, v2, :cond_15

    iget-object v15, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/tools/r8/internal/Y5;

    iget-object v15, v15, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-direct {v3, v15, v14}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    :cond_13
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Y5;->next()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v5, :cond_13

    move-object v3, v5

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_18

    goto/16 :goto_9

    :cond_15
    sget-object v3, Lcom/android/tools/r8/internal/at;->a:Lcom/android/tools/r8/internal/at;

    if-ne v4, v2, :cond_16

    const/4 v3, 0x1

    goto :goto_7

    :cond_16
    if-ne v0, v2, :cond_17

    const/4 v3, 0x0

    goto :goto_7

    :cond_17
    new-instance v3, Lcom/android/tools/r8/internal/Yx0;

    const/4 v15, 0x2

    invoke-direct {v3, v15}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-static {v0, v2, v4, v3}, Lcom/android/tools/r8/internal/Zs;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Yx0;)Z

    move-result v3

    :goto_7
    if-nez v3, :cond_18

    goto :goto_9

    :cond_18
    move-object/from16 v16, v13

    move-object v13, v5

    move-object/from16 v5, v16

    :cond_19
    if-ne v1, v4, :cond_1c

    iget-object v3, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/tools/r8/internal/Y5;

    iget-object v3, v3, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-direct {v15, v3, v14}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    :cond_1a
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/Y5;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_1a

    move-object v3, v5

    goto :goto_8

    :cond_1b
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_1d

    goto :goto_9

    :cond_1c
    invoke-static {v0, v1, v4}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_9

    :cond_1d
    if-eqz v1, :cond_1e

    invoke-static {v0, v1, v1}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_9

    :cond_1e
    if-eqz v4, :cond_1f

    invoke-static {v0, v4, v4}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_9

    :cond_1f
    if-eqz v2, :cond_21

    invoke-static {v0, v2, v2}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    :goto_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_21
    new-instance v0, Lcom/android/tools/r8/ir/optimize/x0;

    invoke-direct {v0, v5, v14, v13}, Lcom/android/tools/r8/ir/optimize/x0;-><init>(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/VJ;)V

    :goto_a
    iget-object v1, v6, Lcom/android/tools/r8/ir/optimize/y0;->a:Lcom/android/tools/r8/internal/gK;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v8, v3, v4, v2}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/android/tools/r8/ir/optimize/y0;->b:Lcom/android/tools/r8/internal/mK;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lv/l2;

    invoke-direct {v2, v11}, Lv/l2;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v6, Lcom/android/tools/r8/ir/optimize/y0;->b:Lcom/android/tools/r8/internal/mK;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v2

    invoke-virtual {v8, v3, v4, v2}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    if-eqz v0, :cond_29

    iget-object v1, v6, Lcom/android/tools/r8/ir/optimize/y0;->e:Lcom/android/tools/r8/internal/mK;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v2

    invoke-virtual {v8, v3, v4, v2}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/x0;->a:Lcom/android/tools/r8/internal/VJ;

    if-eqz v1, :cond_24

    iget-object v2, v6, Lcom/android/tools/r8/ir/optimize/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    const-wide/16 v13, 0x1

    goto :goto_b

    :cond_23
    move-wide v13, v3

    :goto_b
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v2

    new-instance v5, Lcom/android/tools/r8/internal/qh;

    const/4 v15, 0x0

    invoke-virtual {v8, v2, v15}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-direct {v5, v2, v13, v14}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {v11, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/x0;->b:Lcom/android/tools/r8/internal/VJ;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    iget-object v2, v6, Lcom/android/tools/r8/ir/optimize/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/x0;->b:Lcom/android/tools/r8/internal/VJ;

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    invoke-virtual {v8, v3, v4, v5}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    invoke-virtual {v11, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/tZ;

    iget-object v5, v7, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->w3:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v14

    invoke-static {v5, v14, v13}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v8, v13, v14}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-direct {v2, v5, v13}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    new-instance v5, Lcom/android/tools/r8/internal/QJ;

    iget-object v13, v7, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v13, Lcom/android/tools/r8/graph/u1;->x3:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    invoke-static {v15}, Lv/c2;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/4 v3, 0x0

    invoke-direct {v5, v13, v14, v15, v3}, Lcom/android/tools/r8/internal/QJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    new-instance v3, Lcom/android/tools/r8/internal/Or0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/x0;->b:Lcom/android/tools/r8/internal/VJ;

    invoke-static {v2, v5, v3}, Lv/d2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const/4 v13, 0x0

    goto :goto_c

    :cond_26
    iget-object v2, v6, Lcom/android/tools/r8/ir/optimize/y0;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/tZ;

    iget-object v4, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/ir/optimize/x0;->b:Lcom/android/tools/r8/internal/VJ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    iget-object v4, v0, Lcom/android/tools/r8/ir/optimize/x0;->b:Lcom/android/tools/r8/internal/VJ;

    invoke-virtual {v11, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/QJ;

    iget-object v5, v7, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    const/4 v13, 0x0

    new-array v14, v13, [Lcom/android/tools/r8/graph/M2;

    iget-object v15, v5, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v15, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    iget-object v15, v5, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5, v2, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-static {v3}, Lv/e2;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3, v13}, Lcom/android/tools/r8/internal/QJ;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;Z)V

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/x0;->b:Lcom/android/tools/r8/internal/VJ;

    invoke-static {v4}, Lv/f2;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/x0;->c:Lcom/android/tools/r8/internal/VJ;

    if-eqz v0, :cond_0

    iget-object v1, v6, Lcom/android/tools/r8/ir/optimize/y0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_27

    move v1, v2

    goto :goto_d

    :cond_27
    move v1, v13

    :goto_d
    if-eqz v1, :cond_28

    const-wide/16 v3, 0x1

    goto :goto_e

    :cond_28
    const-wide/16 v3, 0x0

    :goto_e
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/qh;

    const/4 v5, 0x0

    invoke-virtual {v8, v1, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-direct {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Ljava/util/IdentityHashMap;Ljava/util/HashMap;Lcom/android/tools/r8/ir/optimize/y0;)V

    goto/16 :goto_0

    :cond_2a
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_2b
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v1

    :cond_2c
    :goto_f
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hB;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hB;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    if-nez v3, :cond_2d

    goto :goto_f

    :cond_2d
    iget-object v4, v1, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v4, v3, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2c

    iget-object v3, v7, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v1, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    iget-object v5, v1, Lcom/android/tools/r8/internal/hB;->d:Lcom/android/tools/r8/internal/fB;

    iget-object v6, v1, Lcom/android/tools/r8/internal/hB;->b:Lcom/android/tools/r8/internal/Z5;

    invoke-interface {v4, v5, v6, v2, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-static {v2}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v2

    if-eqz v2, :cond_2c

    :goto_10
    iget-object v2, v1, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/tools/r8/internal/hB;->c:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/EE;->s()V

    goto :goto_10

    :cond_2e
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    iget-object v1, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/z0;->i:Z

    if-nez v0, :cond_30

    iget-object v0, v7, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_11

    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_30
    :goto_11
    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method
