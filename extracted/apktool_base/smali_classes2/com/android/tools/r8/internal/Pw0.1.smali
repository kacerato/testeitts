.class public final Lcom/android/tools/r8/internal/Pw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;
.implements Lcom/android/tools/r8/internal/j9;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 273
    new-instance v0, Lcom/android/tools/r8/internal/UR0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/UR0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 274
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 275
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->c:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    const/4 p1, 0x2

    .line 276
    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 277
    new-instance p1, Lcom/android/tools/r8/internal/wa;

    iget-object p2, p0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance p2, Lcom/android/tools/r8/internal/kb;

    sget-object p3, Lcom/android/tools/r8/internal/kb$a;->f:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance p3, Lcom/android/tools/r8/internal/kb;

    sget-object p4, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance p4, Lcom/android/tools/r8/internal/ga;

    iget-object p5, p0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    iget-object p6, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object p7, p0, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p7

    .line 278
    invoke-virtual {p0, p6, p7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p6

    iget-object p7, p0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 279
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 p5, 0xb7

    const/4 p6, 0x0

    invoke-direct {p4, p5, p0, p6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 280
    invoke-static {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V
    .locals 10

    .line 134
    sget-boolean v0, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/QR0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/QR0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 135
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 137
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 138
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/android/tools/r8/internal/bS0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bS0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/cS0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/cS0;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    new-instance v7, Lcom/android/tools/r8/internal/dS0;

    invoke-direct {v7, p0}, Lcom/android/tools/r8/internal/dS0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/tools/r8/internal/eS0;

    invoke-direct {v8, p1}, Lcom/android/tools/r8/internal/eS0;-><init>(Lcom/android/tools/r8/internal/Rw0;)V

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v9

    move-object v5, p2

    move-object v6, p0

    .line 144
    invoke-virtual/range {v1 .. v9}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/M2;Ljava/util/Collection;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    .line 145
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/D5;

    .line 146
    invoke-interface {p1, p0, v0}, Lcom/android/tools/r8/internal/Rw0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/W;)V
    .locals 29

    move-object/from16 v0, p1

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 150
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 151
    sget-object v2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 152
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 156
    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v10, 0x0

    new-array v5, v10, [Lcom/android/tools/r8/graph/M2;

    .line 157
    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 158
    const-string v11, "<init>"

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 159
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 160
    iget-object v4, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 161
    const-string v12, "Ljava/lang/invoke/VarHandle;"

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 162
    const-string v6, "Ljava/lang/Class;"

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 163
    const-string v8, "Ljava/lang/String;"

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 164
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 165
    invoke-virtual {v1, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 166
    const-string v7, "findVarHandle"

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 167
    invoke-virtual {v1, v4, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    .line 168
    iget-object v4, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 169
    const-string v5, "Ljava/lang/invoke/MethodHandles$Lookup;"

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 170
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 171
    invoke-virtual {v1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 172
    const-string v6, "toPrivateLookupIn"

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 173
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    .line 174
    sget-object v4, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    const/4 v15, 0x1

    .line 175
    invoke-static {v3, v15}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    const/16 v9, 0x1001

    .line 176
    invoke-static {v9, v15}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    .line 177
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    .line 178
    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 179
    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 180
    new-instance v7, Lcom/android/tools/r8/graph/G;

    iget-object v6, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    sget-object v15, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v15, v10}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v9, Lcom/android/tools/r8/internal/ga;

    move-object/from16 v16, v8

    iget-object v8, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v17, v14

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v18, v15

    new-array v15, v10, [Lcom/android/tools/r8/graph/M2;

    .line 181
    invoke-virtual {v1, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    .line 182
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 183
    invoke-virtual {v1, v8, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    const/16 v14, 0xb7

    invoke-direct {v9, v14, v8, v10}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v8, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/bb;-><init>()V

    .line 184
    invoke-static {v4, v3, v9, v8, v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v8

    const/4 v5, 0x1

    const/4 v9, 0x1

    move-object v3, v7

    move-object v4, v6

    move v6, v9

    move-object v15, v7

    move-object v7, v8

    move-object/from16 v9, v16

    move-object v8, v2

    move-object v10, v9

    const/16 v14, 0x1001

    move-object v9, v2

    .line 185
    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 186
    invoke-virtual {v10, v15}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    .line 189
    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;

    .line 191
    new-instance v3, Lcom/android/tools/r8/graph/j1$a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 192
    invoke-virtual {v3, v13}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    const/4 v4, 0x0

    .line 193
    invoke-static {v14, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    .line 194
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v10

    .line 195
    new-instance v19, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v19 .. v19}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 196
    new-instance v27, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v27 .. v27}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 197
    new-instance v15, Lcom/android/tools/r8/graph/G;

    iget-object v4, v13, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/internal/wa;

    .line 198
    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v5, Lcom/android/tools/r8/internal/kb;

    sget-object v6, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v13, v18

    const/4 v7, 0x1

    invoke-direct {v6, v13, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/pa;

    const/4 v8, 0x2

    invoke-direct {v7, v13, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    const/4 v9, 0x3

    invoke-direct {v8, v13, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v9, Lcom/android/tools/r8/internal/ga;

    .line 199
    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v28, v10

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v10, v0}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 200
    invoke-virtual {v1, v14, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 201
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 202
    invoke-virtual {v1, v12, v0, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v10, 0xb7

    invoke-direct {v9, v10, v0, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v0, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v0, v13}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/16 v1, 0x9

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v0

    .line 203
    filled-new-array/range {v19 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    .line 204
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 205
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    const/4 v5, 0x5

    const/4 v6, 0x4

    move-object v3, v15

    move-object v8, v2

    move-object v9, v2

    .line 206
    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v28

    .line 207
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    move-object/from16 v1, v17

    const/4 v3, 0x1

    .line 210
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x1001

    .line 211
    invoke-static {v5, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    .line 212
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v10

    .line 213
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 214
    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 215
    new-instance v11, Lcom/android/tools/r8/graph/G;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v6, v13, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v4, v13}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    .line 216
    invoke-static {v3, v6, v4, v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v3, v11

    move-object v4, v1

    .line 217
    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 218
    invoke-virtual {v10, v11}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    move-object/from16 v1, p1

    .line 222
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/synthesis/m;->b(Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Rw0;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 223
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/D5;

    .line 224
    invoke-interface {p1, p2, v0}, Lcom/android/tools/r8/internal/Rw0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 5

    .line 128
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 130
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 131
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 132
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 133
    invoke-static {p0, v4}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->k6:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 126
    sget-boolean p0, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-eqz p0, :cond_0

    return v1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 127
    :cond_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->Q2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z
    .locals 0

    .line 147
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->d:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V
    .locals 10

    .line 18
    sget-boolean v0, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/WR0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/WR0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/XR0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/XR0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/YR0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/YR0;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    new-instance v7, Lcom/android/tools/r8/internal/ZR0;

    invoke-direct {v7, p0}, Lcom/android/tools/r8/internal/ZR0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/tools/r8/internal/eS0;

    invoke-direct {v8, p1}, Lcom/android/tools/r8/internal/eS0;-><init>(Lcom/android/tools/r8/internal/Rw0;)V

    new-instance v9, Lcom/android/tools/r8/internal/aS0;

    invoke-direct {v9, p2, p1}, Lcom/android/tools/r8/internal/aS0;-><init>(Ljava/util/Collection;Lcom/android/tools/r8/internal/Rw0;)V

    move-object v5, p2

    move-object v6, p0

    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/M2;Ljava/util/Collection;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/W;)V
    .locals 125

    move-object/from16 v0, p1

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 30
    sget-object v2, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 31
    new-instance v2, Lcom/android/tools/r8/graph/g1$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 32
    iget-object v4, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 33
    const-string v5, "Lsun/misc/Unsafe;"

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 34
    const-string v6, "U"

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 35
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 36
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v2

    const/16 v4, 0x1011

    .line 37
    invoke-static {v4}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v5

    .line 38
    iput-object v5, v2, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 39
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 41
    new-instance v5, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 42
    iget-object v6, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 43
    const-string v7, "Ljava/lang/Class;"

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 44
    const-string v9, "recv"

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 45
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v5

    .line 47
    invoke-static {v4}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v6

    .line 48
    iput-object v6, v5, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 49
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v5

    .line 51
    new-instance v6, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 52
    iget-object v8, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 53
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 54
    const-string v10, "type"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 55
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v8

    .line 56
    invoke-virtual {v6, v8}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v6

    .line 57
    invoke-static {v4}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v8

    .line 58
    iput-object v8, v6, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 59
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v6

    .line 60
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v6

    .line 61
    new-instance v8, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v8, v3}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 62
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 63
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    const-string v11, "offset"

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 64
    invoke-virtual {v1, v9, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v9

    .line 65
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v8

    .line 66
    invoke-static {v4}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v9

    .line 67
    iput-object v9, v8, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 68
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v8

    .line 69
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v8

    .line 70
    new-instance v9, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v9, v3}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 71
    iget-object v10, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 72
    iget-object v11, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    .line 73
    const-string v12, "arrayIndexScale"

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    .line 74
    invoke-virtual {v1, v10, v11, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v10

    .line 75
    invoke-virtual {v9, v10}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v9

    .line 76
    invoke-static {v4}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v4

    .line 77
    iput-object v4, v9, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 78
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    .line 80
    invoke-static {v2, v5, v6, v8, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 81
    iget-object v4, v0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v4, v0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v2, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 84
    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 85
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 86
    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 87
    const-string v5, "<init>"

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 88
    invoke-virtual {v1, v2, v4, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 89
    iget-object v4, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 90
    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 91
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 92
    const-string v9, "Ljava/lang/String;"

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 93
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    filled-new-array {v8, v10, v11}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 94
    invoke-virtual {v1, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 95
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 96
    invoke-virtual {v1, v4, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 97
    iget-object v6, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 98
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    .line 99
    const-string v10, "arrayRequiringNativeSupport"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 100
    invoke-virtual {v1, v6, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 101
    iget-object v8, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 102
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 103
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    filled-new-array {v11, v12}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 104
    invoke-virtual {v1, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 105
    const-string v11, "boxIntIfPossible"

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 106
    invoke-virtual {v1, v8, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 107
    iget-object v10, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 108
    iget-object v11, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    .line 109
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    filled-new-array {v12, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 110
    invoke-virtual {v1, v11, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v11

    .line 111
    const-string v12, "boxLongIfPossible"

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    .line 112
    invoke-virtual {v1, v10, v11, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    .line 113
    iget-object v11, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 114
    iget-object v12, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v13, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 115
    invoke-virtual {v1, v12, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    .line 116
    const-string v13, "compareAndSet"

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    .line 117
    invoke-virtual {v1, v11, v12, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    .line 118
    iget-object v12, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 119
    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v15, v3, v15, v15}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 120
    invoke-virtual {v1, v14, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 121
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    .line 122
    invoke-virtual {v1, v12, v3, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 123
    iget-object v12, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 124
    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    .line 125
    const-string v15, "[I"

    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    move-object/from16 v17, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v5, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 126
    invoke-virtual {v1, v14, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 127
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 128
    invoke-virtual {v1, v12, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 129
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 130
    iget-object v12, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    .line 131
    const-string v14, "[J"

    move-object/from16 v18, v5

    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v20, v11

    iget-object v11, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v3, v11, v11}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 132
    invoke-virtual {v1, v12, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 133
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 134
    invoke-virtual {v1, v9, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 135
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 136
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v11, v12, v12}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 137
    invoke-virtual {v1, v9, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 138
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 139
    invoke-virtual {v1, v5, v9, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 140
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 141
    iget-object v11, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v21, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v12, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 142
    invoke-virtual {v1, v11, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 143
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 144
    invoke-virtual {v1, v9, v5, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 145
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 146
    const-string v11, "Ljava/lang/RuntimeException;"

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    move-object/from16 v22, v5

    const/4 v13, 0x0

    new-array v5, v13, [Lcom/android/tools/r8/graph/M2;

    .line 147
    invoke-virtual {v1, v12, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 148
    const-string v12, "desugarWrongMethodTypeException"

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 149
    invoke-virtual {v1, v9, v5, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 150
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 151
    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v23, v5

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 152
    invoke-virtual {v1, v13, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 153
    const-string v13, "get"

    move-object/from16 v24, v3

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 154
    invoke-virtual {v1, v9, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 155
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 156
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v25, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 157
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 158
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 159
    invoke-virtual {v1, v5, v3, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 160
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 161
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v26, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v27, v10

    .line 162
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    filled-new-array {v9, v3, v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 163
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 164
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 165
    invoke-virtual {v1, v5, v3, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 166
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 167
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 168
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v28, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 169
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 171
    invoke-virtual {v1, v5, v3, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 172
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 173
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    .line 174
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v29, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 175
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 176
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 177
    invoke-virtual {v1, v5, v3, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 178
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 179
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 180
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    filled-new-array {v9, v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 181
    invoke-virtual {v1, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 182
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 183
    invoke-virtual {v1, v5, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 184
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 185
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v30, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 186
    invoke-virtual {v1, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 187
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 188
    invoke-virtual {v1, v9, v5, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 189
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 190
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v31, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 191
    invoke-virtual {v1, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 192
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 193
    invoke-virtual {v1, v9, v5, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 194
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 195
    const-string v10, "Ljava/lang/reflect/Field;"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v32, v5

    const/4 v13, 0x0

    new-array v5, v13, [Lcom/android/tools/r8/graph/M2;

    .line 196
    invoke-virtual {v1, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 197
    const-string v10, "getUnsafeField"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 198
    invoke-virtual {v1, v9, v5, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 199
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 200
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 201
    invoke-virtual {v1, v10, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 202
    const-string v13, "getVolatile"

    move-object/from16 v33, v5

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 203
    invoke-virtual {v1, v9, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 204
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 205
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v34, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 206
    invoke-virtual {v1, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 207
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 208
    invoke-virtual {v1, v9, v5, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 209
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 210
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v35, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v36, v3

    .line 211
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    filled-new-array {v10, v5, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 212
    invoke-virtual {v1, v10, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 213
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 214
    invoke-virtual {v1, v9, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 215
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 216
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    .line 217
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v37, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 218
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 219
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 220
    invoke-virtual {v1, v5, v3, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 221
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 222
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    .line 223
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v38, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 224
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 225
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 226
    invoke-virtual {v1, v5, v3, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 227
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 228
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 229
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    filled-new-array {v9, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 230
    invoke-virtual {v1, v9, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 231
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 232
    invoke-virtual {v1, v5, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 233
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 234
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 235
    invoke-virtual {v1, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 236
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 237
    invoke-virtual {v1, v7, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 238
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 239
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v39, v7

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 240
    invoke-virtual {v1, v10, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 241
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 242
    invoke-virtual {v1, v9, v7, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 243
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 244
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 245
    invoke-virtual {v1, v10, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 246
    const-string v13, "set"

    move-object/from16 v40, v7

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 247
    invoke-virtual {v1, v9, v10, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 248
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 249
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v41, v7

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v42, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v5, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 250
    invoke-virtual {v1, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 251
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 252
    invoke-virtual {v1, v9, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 253
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 254
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 255
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v43, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 256
    invoke-virtual {v1, v9, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 257
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 258
    invoke-virtual {v1, v7, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 259
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 260
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 261
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v44, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v45, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v5, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 262
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 263
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 264
    invoke-virtual {v1, v7, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 265
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 266
    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 267
    invoke-virtual {v1, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 268
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 269
    invoke-virtual {v1, v5, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 270
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 271
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v46, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 272
    invoke-virtual {v1, v9, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 273
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 274
    invoke-virtual {v1, v7, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 275
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 276
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 277
    invoke-virtual {v1, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 278
    const-string v10, "setRelease"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 279
    invoke-virtual {v1, v7, v9, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 280
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 281
    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v47, v7

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v48, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v5, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 282
    invoke-virtual {v1, v13, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 283
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 284
    invoke-virtual {v1, v9, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 285
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 286
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 287
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object/from16 v49, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 288
    invoke-virtual {v1, v9, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 289
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 290
    invoke-virtual {v1, v7, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 291
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 292
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 293
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object/from16 v50, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v51, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v5, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 294
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 295
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 296
    invoke-virtual {v1, v7, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 297
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 298
    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 299
    invoke-virtual {v1, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 300
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 301
    invoke-virtual {v1, v5, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 302
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 303
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v52, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 304
    invoke-virtual {v1, v9, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 305
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 306
    invoke-virtual {v1, v7, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 307
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 308
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 309
    invoke-virtual {v1, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 310
    const-string v10, "setVolatile"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 311
    invoke-virtual {v1, v7, v9, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 312
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 313
    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v53, v7

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v54, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v5, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 314
    invoke-virtual {v1, v13, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 315
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 316
    invoke-virtual {v1, v9, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 317
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 318
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 319
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object/from16 v55, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v5, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 320
    invoke-virtual {v1, v9, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 321
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 322
    invoke-virtual {v1, v7, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 323
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 324
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 325
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object/from16 v56, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v57, v3

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v5, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 326
    invoke-virtual {v1, v9, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 327
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 328
    invoke-virtual {v1, v7, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 329
    iget-object v5, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 330
    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 331
    invoke-virtual {v1, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 332
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 333
    invoke-virtual {v1, v5, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 334
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 335
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v58, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 336
    invoke-virtual {v1, v9, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 337
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 338
    invoke-virtual {v1, v7, v5, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 339
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 340
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 341
    invoke-virtual {v1, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 342
    const-string v10, "toIntIfPossible"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 343
    invoke-virtual {v1, v7, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 344
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 345
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v59, v7

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 346
    invoke-virtual {v1, v10, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 347
    const-string v10, "toLongIfPossible"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 348
    invoke-virtual {v1, v9, v7, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 349
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 350
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v13, v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 351
    invoke-virtual {v1, v10, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 352
    const-string v13, "weakCompareAndSet"

    move-object/from16 v60, v7

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 353
    invoke-virtual {v1, v9, v10, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 354
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 355
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v61, v7

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v62, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7, v5, v7, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 356
    invoke-virtual {v1, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 357
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 358
    invoke-virtual {v1, v9, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 359
    iget-object v7, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 360
    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    .line 361
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v15, v15, v15}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 362
    invoke-virtual {v1, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 363
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 364
    invoke-virtual {v1, v7, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 365
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 366
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    .line 367
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v63, v7

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14, v15, v7, v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 368
    invoke-virtual {v1, v10, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 369
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 370
    invoke-virtual {v1, v9, v7, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 371
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 372
    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14, v15, v15}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 373
    invoke-virtual {v1, v10, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 374
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    .line 375
    invoke-virtual {v1, v9, v10, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    .line 376
    iget-object v10, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 377
    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v64, v9

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v15, v9, v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 378
    invoke-virtual {v1, v14, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 379
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 380
    invoke-virtual {v1, v10, v9, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    .line 381
    sget-object v10, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    const/4 v10, 0x1

    .line 382
    invoke-static {v2, v10}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    const/16 v14, 0x1001

    .line 383
    invoke-static {v14, v10}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v15

    .line 384
    invoke-virtual {v13, v15}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 385
    invoke-static {v1, v2}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->h(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 388
    invoke-static {v4, v10}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 389
    invoke-static {v14, v10}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v15

    .line 390
    invoke-virtual {v13, v15}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 391
    invoke-static {v1, v4}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->i(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 392
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 393
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    .line 394
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 395
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;

    .line 396
    invoke-static {v6, v10}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    const/4 v4, 0x0

    .line 397
    invoke-static {v14, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v10

    .line 398
    invoke-virtual {v2, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 399
    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 400
    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 401
    new-instance v13, Lcom/android/tools/r8/graph/G;

    iget-object v6, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v15, Lcom/android/tools/r8/internal/A9;

    .line 402
    const-string v14, "requires native VarHandle support available from Android 13. VarHandle desugaring only supports single dimensional arrays of primitive typesint and long and reference types."

    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    invoke-direct {v15, v14}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    new-instance v14, Lcom/android/tools/r8/internal/ab;

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v14, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    .line 403
    invoke-static {v4, v15, v14, v10}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v69

    .line 404
    sget-object v4, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/16 v67, 0x1

    const/16 v68, 0x1

    move-object/from16 v65, v13

    move-object/from16 v66, v6

    move-object/from16 v70, v4

    move-object/from16 v71, v4

    .line 405
    invoke-direct/range {v65 .. v71}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 406
    invoke-virtual {v2, v13}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    const/4 v6, 0x1

    .line 409
    invoke-static {v8, v6}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v10

    const/4 v6, 0x0

    const/16 v13, 0x1001

    .line 410
    invoke-static {v13, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v14

    .line 411
    invoke-virtual {v10, v14}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v6

    .line 412
    new-instance v72, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v72 .. v72}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 413
    new-instance v76, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v76 .. v76}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 414
    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 415
    new-instance v13, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 416
    new-instance v14, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 417
    new-instance v15, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/ka;-><init>()V

    move-object/from16 v65, v2

    .line 418
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 419
    new-instance v66, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v66 .. v66}, Lcom/android/tools/r8/internal/ka;-><init>()V

    move-object/from16 v67, v9

    .line 420
    new-instance v9, Lcom/android/tools/r8/graph/G;

    iget-object v8, v8, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v68, v7

    new-instance v7, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v69, v5

    const/4 v5, 0x2

    invoke-direct {v7, v0, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/t9;

    move-object/from16 v71, v3

    .line 421
    const-string v3, "Ljava/lang/Long;"

    move-object/from16 v85, v6

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    move-object/from16 v86, v4

    const/4 v4, 0x0

    .line 422
    invoke-direct {v5, v6, v4}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 423
    new-instance v4, Lcom/android/tools/r8/internal/Q9;

    sget-object v6, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v4, v6, v0, v10}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    move-object/from16 v87, v8

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v88, v9

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    move-object/from16 v81, v10

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v10, Lcom/android/tools/r8/internal/Ba;

    move-object/from16 v77, v8

    sget-object v8, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    move-object/from16 v75, v4

    sget-object v4, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v10, v8, v4}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    move-object/from16 v78, v10

    .line 424
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 425
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    move-object/from16 v74, v5

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 426
    const-string v5, "valueOf"

    move-object/from16 v73, v7

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 427
    invoke-virtual {v1, v10, v3, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    const/16 v7, 0xb8

    const/4 v10, 0x0

    invoke-direct {v4, v7, v3, v10}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v3, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-instance v7, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v80, v3

    new-instance v3, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v82, v4

    move-object/from16 v84, v13

    move-object/from16 v83, v15

    const/4 v4, 0x1

    const/4 v15, 0x2

    filled-new-array {v10, v4, v15}, [I

    move-result-object v13

    .line 428
    const-string v15, "Ljava/lang/invoke/VarHandle;"

    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v16

    .line 429
    invoke-static/range {v16 .. v16}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v16

    .line 430
    sget-object v89, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    .line 431
    invoke-static {v4}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v4

    move-object/from16 v90, v12

    const/4 v12, 0x3

    move-object/from16 v91, v11

    new-array v11, v12, [Lcom/android/tools/r8/internal/jy;

    aput-object v16, v11, v10

    const/16 v16, 0x1

    aput-object v89, v11, v16

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-direct {v3, v13, v11}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v7, v3}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v3, v0, v12}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/t9;

    .line 432
    const-string v11, "Ljava/lang/Float;"

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 433
    invoke-direct {v4, v12, v10}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 434
    new-instance v10, Lcom/android/tools/r8/internal/Q9;

    invoke-direct {v10, v6, v0, v14}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v12, Lcom/android/tools/r8/internal/pa;

    const/4 v13, 0x1

    invoke-direct {v12, v9, v13}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v13, Lcom/android/tools/r8/internal/Ba;

    move-object/from16 v93, v3

    sget-object v3, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v13, v8, v3}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    new-instance v3, Lcom/android/tools/r8/internal/ga;

    move-object/from16 v94, v7

    .line 435
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 436
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    move-object/from16 v95, v14

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v1, v11, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v11

    .line 437
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    .line 438
    invoke-virtual {v1, v7, v11, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    const/4 v11, 0x0

    const/16 v14, 0xb8

    invoke-direct {v3, v14, v7, v11}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v7, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v96, v7

    new-instance v7, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v97, v3

    move-object/from16 v99, v12

    move-object/from16 v98, v13

    const/4 v3, 0x1

    const/4 v13, 0x2

    filled-new-array {v11, v3, v13}, [I

    move-result-object v12

    .line 439
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v16

    .line 440
    invoke-static/range {v16 .. v16}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v16

    .line 441
    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    .line 442
    invoke-static {v13}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v13

    move-object/from16 v100, v10

    const/4 v3, 0x3

    new-array v10, v3, [Lcom/android/tools/r8/internal/jy;

    aput-object v16, v10, v11

    const/4 v3, 0x1

    aput-object v89, v10, v3

    const/4 v3, 0x2

    aput-object v13, v10, v3

    invoke-direct {v7, v12, v10}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v14, v7}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v7, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v7, v0, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v3, Lcom/android/tools/r8/internal/t9;

    .line 443
    const-string v10, "Ljava/lang/Double;"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 444
    invoke-direct {v3, v12, v11}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 445
    new-instance v11, Lcom/android/tools/r8/internal/Q9;

    invoke-direct {v11, v6, v0, v2}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    const/4 v12, 0x1

    invoke-direct {v6, v9, v12}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v9, Lcom/android/tools/r8/internal/Ba;

    sget-object v12, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v9, v8, v12}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    new-instance v8, Lcom/android/tools/r8/internal/ga;

    .line 446
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 447
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 448
    invoke-virtual {v1, v10, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 449
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 450
    invoke-virtual {v1, v12, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    const/4 v10, 0x0

    const/16 v12, 0xb8

    invoke-direct {v8, v12, v5, v10}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v5, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-instance v12, Lcom/android/tools/r8/internal/G9;

    new-instance v13, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v79, v2

    move-object/from16 v101, v5

    move-object/from16 v102, v8

    const/4 v2, 0x1

    const/4 v5, 0x2

    filled-new-array {v10, v2, v5}, [I

    move-result-object v8

    .line 451
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v16

    .line 452
    invoke-static/range {v16 .. v16}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v16

    .line 453
    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    .line 454
    invoke-static {v5}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v5

    move-object/from16 v103, v9

    const/4 v2, 0x3

    new-array v9, v2, [Lcom/android/tools/r8/internal/jy;

    aput-object v16, v9, v10

    const/4 v2, 0x1

    aput-object v89, v9, v2

    const/4 v2, 0x2

    aput-object v5, v9, v2

    invoke-direct {v13, v8, v9}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v12, v13}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v2, v0, v10}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/ga;

    .line 455
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    move-object/from16 v9, v91

    .line 456
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    new-array v15, v10, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    move-object/from16 v15, v90

    .line 457
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 458
    invoke-virtual {v1, v8, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    const/16 v13, 0xb6

    invoke-direct {v5, v13, v8, v10}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v8, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    const/16 v13, 0x17

    new-array v13, v13, [Lcom/android/tools/r8/internal/W9;

    aput-object v4, v13, v10

    const/4 v4, 0x1

    aput-object v100, v13, v4

    const/4 v4, 0x2

    aput-object v84, v13, v4

    const/4 v4, 0x3

    aput-object v99, v13, v4

    const/4 v4, 0x4

    aput-object v98, v13, v4

    const/4 v4, 0x5

    aput-object v97, v13, v4

    const/4 v4, 0x6

    aput-object v96, v13, v4

    const/4 v4, 0x7

    aput-object v95, v13, v4

    const/16 v4, 0x8

    aput-object v14, v13, v4

    const/16 v4, 0x9

    aput-object v7, v13, v4

    const/16 v4, 0xa

    aput-object v3, v13, v4

    const/16 v3, 0xb

    aput-object v11, v13, v3

    const/16 v3, 0xc

    aput-object v83, v13, v3

    const/16 v3, 0xd

    aput-object v6, v13, v3

    const/16 v3, 0xe

    aput-object v103, v13, v3

    const/16 v3, 0xf

    aput-object v102, v13, v3

    const/16 v3, 0x10

    aput-object v101, v13, v3

    const/16 v3, 0x11

    aput-object v79, v13, v3

    const/16 v3, 0x12

    aput-object v12, v13, v3

    const/16 v3, 0x13

    aput-object v2, v13, v3

    const/16 v2, 0x14

    aput-object v5, v13, v2

    const/16 v2, 0x15

    aput-object v8, v13, v2

    const/16 v2, 0x16

    aput-object v66, v13, v2

    move-object/from16 v79, v82

    move-object/from16 v82, v94

    move-object/from16 v83, v93

    move-object/from16 v84, v13

    .line 459
    invoke-static/range {v72 .. v84}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v76

    const/16 v74, 0x2

    const/16 v75, 0x3

    move-object/from16 v72, v88

    move-object/from16 v73, v87

    move-object/from16 v77, v86

    move-object/from16 v78, v86

    .line 460
    invoke-direct/range {v72 .. v78}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v2, v85

    move-object/from16 v3, v88

    .line 461
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 463
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    move-object/from16 v4, v27

    const/4 v3, 0x1

    .line 464
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x1001

    .line 465
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v8

    .line 466
    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    .line 467
    invoke-static {v1, v4}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 468
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v4

    .line 469
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    move-object/from16 v5, v20

    .line 470
    invoke-static {v5, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    .line 471
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v10

    .line 472
    invoke-virtual {v8, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    .line 473
    invoke-static {v1, v5}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    .line 474
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    .line 475
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    move-object/from16 v8, v19

    .line 476
    invoke-static {v8, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v10

    .line 477
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v11

    .line 478
    invoke-virtual {v10, v11}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v10

    .line 479
    invoke-static {v1, v8}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->c(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    .line 480
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v8

    .line 481
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v8

    move-object/from16 v10, v18

    .line 482
    invoke-static {v10, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v11

    .line 483
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v12

    .line 484
    invoke-virtual {v11, v12}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v11

    .line 485
    invoke-static {v1, v10}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->d(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v10

    .line 486
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v10

    .line 487
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v10

    move-object/from16 v11, v24

    .line 488
    invoke-static {v11, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v12

    .line 489
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v13

    .line 490
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v12

    .line 491
    invoke-static {v1, v11}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->e(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v11

    .line 492
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v11

    .line 493
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v11

    move-object/from16 v12, v21

    .line 494
    invoke-static {v12, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 495
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v14

    .line 496
    invoke-virtual {v13, v14}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 497
    invoke-static {v1, v12}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->f(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v12

    .line 498
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v12

    .line 499
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v79

    move-object/from16 v12, v22

    .line 500
    invoke-static {v12, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 501
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v14

    .line 502
    invoke-virtual {v13, v14}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 503
    invoke-static {v1, v12}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->g(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v12

    .line 504
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v12

    .line 505
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v80

    move-object/from16 v12, v23

    .line 506
    invoke-static {v12, v3}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v13

    .line 507
    invoke-static {v7, v6}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 508
    invoke-virtual {v13, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 509
    new-instance v18, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v18 .. v18}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 510
    new-instance v24, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v24 .. v24}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 511
    new-instance v6, Lcom/android/tools/r8/graph/G;

    iget-object v7, v12, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v12, Lcom/android/tools/r8/internal/wa;

    .line 512
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v13, Lcom/android/tools/r8/internal/kb;

    sget-object v14, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v13, v14}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v14, Lcom/android/tools/r8/internal/A9;

    .line 513
    const-string v15, "java.lang.invoke.WrongMethodTypeException"

    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    new-instance v15, Lcom/android/tools/r8/internal/ga;

    .line 514
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    move-object/from16 v27, v11

    iget-object v11, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v66, v10

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 515
    invoke-virtual {v1, v11, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    move-object/from16 v11, v17

    .line 516
    invoke-virtual {v1, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 517
    invoke-virtual {v1, v9, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    const/16 v10, 0xb7

    const/4 v11, 0x0

    invoke-direct {v15, v10, v9, v11}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v9, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v9, v0}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v9

    .line 518
    invoke-static/range {v18 .. v24}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v76

    const/16 v74, 0x3

    const/16 v75, 0x1

    move-object/from16 v72, v6

    move-object/from16 v73, v7

    .line 519
    invoke-direct/range {v72 .. v78}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 520
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v81

    move-object/from16 v3, v25

    const/4 v0, 0x1

    .line 523
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v9, 0x1001

    .line 524
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v10

    .line 525
    invoke-virtual {v6, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v6

    .line 526
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->j(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 527
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 528
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v82

    move-object/from16 v3, v26

    .line 529
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 530
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 531
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 532
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->k(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v83

    .line 535
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v28

    .line 536
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 537
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 538
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 539
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->l(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v84

    .line 542
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v29

    .line 543
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 544
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 545
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 546
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->m(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v85

    .line 549
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v36

    .line 550
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 551
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 552
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 553
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->n(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v86

    .line 556
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v30

    .line 557
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 558
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 559
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 560
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->o(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v87

    .line 563
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v31

    .line 564
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 565
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 566
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 567
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->p(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v88

    .line 570
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v32

    .line 571
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 572
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 573
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 574
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->q(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v89

    .line 577
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v33

    .line 578
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 579
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 580
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 581
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->r(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v90

    .line 584
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v34

    .line 585
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 586
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 587
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 588
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->s(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v91

    .line 591
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v35

    .line 592
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 593
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 594
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 595
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->t(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v92

    .line 598
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v37

    .line 599
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 600
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 601
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 602
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->u(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v93

    .line 605
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v38

    .line 606
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 607
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 608
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 609
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->v(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v94

    .line 612
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v45

    .line 613
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 614
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 615
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 616
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->w(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v95

    .line 619
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v42

    .line 620
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 621
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 622
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 623
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->x(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v96

    .line 626
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v39

    .line 627
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 628
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 629
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 630
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->y(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v97

    .line 633
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v40

    .line 634
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 635
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 636
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 637
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->z(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v98

    .line 640
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v41

    .line 641
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 642
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 643
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 644
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->A(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v99

    .line 647
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v43

    .line 648
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 649
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 650
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 651
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->B(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v100

    .line 654
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v44

    .line 655
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 656
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 657
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 658
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->C(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v101

    .line 661
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v51

    .line 662
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 663
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 664
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 665
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->D(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v102

    .line 668
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v46

    .line 669
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 670
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 671
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 672
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->E(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v103

    .line 675
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v48

    .line 676
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 677
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 678
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 679
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->F(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v104

    .line 682
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v47

    .line 683
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 684
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 685
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 686
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->G(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v105

    .line 689
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v49

    .line 690
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 691
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 692
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 693
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->H(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v106

    .line 696
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v50

    .line 697
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 698
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 699
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 700
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->I(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v107

    .line 703
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v57

    .line 704
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 705
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 706
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 707
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->J(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v108

    .line 710
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v52

    .line 711
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 712
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 713
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 714
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->K(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v109

    .line 717
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v54

    .line 718
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 719
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 720
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 721
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->L(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v110

    .line 724
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v53

    .line 725
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 726
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 727
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 728
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->M(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v111

    .line 731
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v55

    .line 732
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 733
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 734
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 735
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->N(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v112

    .line 738
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v56

    .line 739
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 740
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 741
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 742
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->O(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v113

    .line 745
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v71

    .line 746
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 747
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 748
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 749
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->P(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v114

    .line 752
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v58

    .line 753
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 754
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 755
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 756
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->Q(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v115

    .line 759
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v62

    .line 760
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 761
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 762
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 763
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->R(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v116

    .line 766
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v59

    .line 767
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 768
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 769
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 770
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->S(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v117

    .line 773
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v60

    .line 774
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 775
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 776
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 777
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->T(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v118

    .line 780
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v61

    .line 781
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 782
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 783
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 784
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->U(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v119

    .line 787
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v69

    .line 788
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 789
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 790
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 791
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->V(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v120

    .line 794
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v63

    .line 795
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 796
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 797
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 798
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->W(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    .line 799
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v121

    .line 802
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v68

    .line 803
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 804
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 805
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 806
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->X(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    .line 807
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v122

    .line 810
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v64

    .line 811
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 812
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 813
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 814
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->Y(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v123

    .line 817
    invoke-static {}, Lcom/android/tools/r8/graph/j1;->w1()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    move-object/from16 v3, v67

    .line 818
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 819
    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 820
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 821
    invoke-static {v1, v3}, Lcom/android/tools/r8/ir/desugar/varhandle/VarHandleDesugaringMethods;->Z(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v124

    filled-new-array/range {v84 .. v124}, [Lcom/android/tools/r8/graph/j1;

    move-result-object v84

    move-object/from16 v72, v65

    move-object/from16 v73, v2

    move-object/from16 v74, v4

    move-object/from16 v75, v5

    move-object/from16 v76, v8

    move-object/from16 v77, v66

    move-object/from16 v78, v27

    .line 824
    invoke-static/range {v72 .. v84}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    move-object/from16 v1, p1

    .line 825
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/synthesis/m;->b(Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 5

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 8
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 9
    invoke-static {p0, v4}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->j6:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    sget-boolean p0, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-eqz p0, :cond_0

    return v1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z
    .locals 0

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c()Lcom/android/tools/r8/internal/GX;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/GX;

    const-string v1, "MethodHandlesLookup desugaring"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/GX;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d()Lcom/android/tools/r8/internal/GX;
    .locals 2

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/GX;

    const-string v1, "VarHandle desugaring"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/GX;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    .line 1
    const-string v0, "Ljava/lang/Byte;"

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const-string v0, "Ljava/lang/ClassCastException;"

    const-string v1, "Ljava/lang/Double;"

    const-string v2, "Ljava/lang/Float;"

    const-string v3, "Ljava/lang/IllegalArgumentException;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "Ljava/lang/Integer;"

    const-string v1, "Ljava/lang/Long;"

    const-string v2, "Ljava/lang/NoSuchFieldException;"

    const-string v3, "Ljava/lang/RuntimeException;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v0, "Ljava/lang/Short;"

    const-string v1, "Ljava/lang/UnsupportedOperationException;"

    const-string v2, "Ljava/lang/invoke/VarHandle;"

    const-string v3, "Ljava/lang/reflect/Field;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, "Ljava/lang/reflect/Modifier;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    .line 9
    const-string v0, "Lsun/misc/Unsafe;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    .line 10
    const-string v0, "[Ljava/lang/reflect/Field;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ga;I)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 281
    new-instance v0, Lcom/android/tools/r8/internal/VR0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/VR0;-><init>(Lcom/android/tools/r8/internal/Pw0;Lcom/android/tools/r8/internal/ga;I)V

    .line 282
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 283
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 6

    .line 225
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result p1

    if-nez p1, :cond_0

    .line 226
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 229
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->P2:Lcom/android/tools/r8/graph/M2;

    if-eq p2, v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->Q2:Lcom/android/tools/r8/graph/M2;

    if-eq p2, v1, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-eq p2, v0, :cond_1

    .line 230
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 232
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->P2:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_5

    .line 233
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->C1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_2

    .line 235
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-nez v0, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object p1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 238
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->D1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v4, :cond_3

    .line 240
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 241
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v3, :cond_3

    .line 242
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v3, :cond_3

    .line 243
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object p1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Pw0;->c(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 245
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    const-string v4, "arrayElementVarHandle"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v3, :cond_4

    .line 247
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 248
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v0, :cond_4

    .line 249
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 250
    iget-object p1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 251
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 252
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_17

    .line 253
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v0

    if-nez v0, :cond_8

    .line 254
    sget-boolean p2, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->N()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 255
    :cond_7
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 256
    :cond_8
    sget-boolean v0, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 257
    :cond_a
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 258
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result p2

    .line 259
    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->x1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->y1:Lcom/android/tools/r8/graph/L2;

    .line 260
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    .line 261
    :cond_b
    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->v1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->z1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    .line 262
    :cond_c
    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->w1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->A1:Lcom/android/tools/r8/graph/L2;

    .line 263
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->B1:Lcom/android/tools/r8/graph/L2;

    .line 264
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2

    .line 265
    :cond_d
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    :cond_e
    :goto_2
    if-nez v0, :cond_10

    if-eq p2, v3, :cond_10

    if-ne p2, v5, :cond_f

    goto :goto_3

    .line 266
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_3
    sub-int/2addr p2, v2

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/internal/ga;I)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    :cond_11
    :goto_4
    if-nez v0, :cond_13

    if-eq p2, v2, :cond_13

    if-ne p2, v3, :cond_12

    goto :goto_5

    .line 268
    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 269
    :cond_13
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/internal/ga;I)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_6
    if-nez v0, :cond_16

    if-eq p2, v5, :cond_16

    const/4 v0, 0x4

    if-ne p2, v0, :cond_15

    goto :goto_7

    .line 270
    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_7
    sub-int/2addr p2, v3

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/internal/ga;I)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 272
    :cond_17
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    .line 1
    invoke-virtual/range {p8 .. p8}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 2
    iget-object v4, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_0

    .line 3
    iget-object v3, v0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    .line 4
    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    move-object/from16 v5, p8

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v5, p7

    .line 5
    invoke-static {v3, v5, v4}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    .line 6
    :cond_0
    sget-boolean v3, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_5

    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_4

    .line 7
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v6

    if-lt v6, v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 9
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v6

    sub-int/2addr v6, v1

    if-nez v3, :cond_7

    if-gt v6, v4, :cond_6

    goto :goto_2

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 11
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 13
    iget-object v7, v7, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 14
    iget-object v7, v7, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 15
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_8

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v9

    if-nez v9, :cond_8

    return-object v10

    .line 16
    :cond_8
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 17
    iget-object v9, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    .line 18
    invoke-virtual {v7, v5, v9}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 19
    iget-object v11, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v11, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-eq v9, v12, :cond_9

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    if-eq v9, v11, :cond_9

    .line 20
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v11

    if-nez v11, :cond_9

    return-object v10

    .line 21
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v11

    .line 22
    iget-object v11, v11, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 23
    iget-object v11, v11, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v11, v11, v5

    .line 24
    iget-object v12, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-eq v11, v12, :cond_b

    return-object v10

    :cond_a
    move-object v9, v10

    .line 25
    :cond_b
    new-instance v11, Lcom/android/tools/r8/internal/eC;

    .line 26
    invoke-direct {v11}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 27
    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    if-lez v6, :cond_18

    .line 28
    iget-object v6, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_3

    .line 30
    :cond_c
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_3

    :cond_d
    iget-object v6, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    :cond_e
    :goto_3
    move-object v10, v6

    move v13, v8

    move v6, v1

    .line 31
    :goto_4
    iget-object v14, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v14

    if-ge v6, v14, :cond_15

    if-nez v13, :cond_10

    .line 32
    iget-object v13, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v13, v6}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_5

    :cond_f
    move v13, v8

    goto :goto_6

    :cond_10
    :goto_5
    move v13, v5

    .line 33
    :goto_6
    iget-object v14, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v14, v6}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 34
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v15

    if-nez v15, :cond_13

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v15

    if-eqz v15, :cond_11

    goto :goto_7

    .line 35
    :cond_11
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_7

    :cond_12
    iget-object v14, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    :cond_13
    :goto_7
    if-eq v14, v10, :cond_14

    .line 36
    iget-object v10, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 37
    :cond_15
    sget-boolean v6, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v6, :cond_19

    .line 38
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_8

    .line 39
    :cond_16
    iget-object v6, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v10, v6, :cond_17

    goto :goto_8

    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_18
    move v13, v8

    .line 40
    :cond_19
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 41
    iget-object v14, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/k2;->f:Ljava/util/Set;

    invoke-interface {v14, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 42
    iget-object v14, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    goto :goto_9

    .line 43
    :cond_1a
    iget-object v14, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 44
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v15

    if-nez v15, :cond_1d

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v15

    if-eqz v15, :cond_1b

    goto :goto_9

    .line 45
    :cond_1b
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v15

    if-eqz v15, :cond_1c

    goto :goto_9

    :cond_1c
    iget-object v14, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 46
    :cond_1d
    :goto_9
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v15

    if-eqz v15, :cond_1e

    iget-object v15, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v15, v15, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    iget-object v15, v15, Lcom/android/tools/r8/graph/k2;->d:Ljava/util/Set;

    .line 47
    invoke-interface {v15, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 48
    iget-object v14, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move v15, v5

    goto :goto_a

    :cond_1e
    move v15, v8

    :goto_a
    if-ne v1, v5, :cond_1f

    .line 49
    iget-object v7, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 50
    :cond_1f
    sget-boolean v16, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v16, :cond_21

    if-ne v1, v4, :cond_20

    goto :goto_b

    :cond_20
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_21
    :goto_b
    if-nez v16, :cond_23

    if-eqz v9, :cond_22

    goto :goto_c

    .line 51
    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 52
    :cond_23
    :goto_c
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v16

    if-eqz v16, :cond_26

    if-eqz v10, :cond_24

    if-ne v10, v9, :cond_26

    :cond_24
    iget-object v8, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/k2;->f:Ljava/util/Set;

    .line 53
    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 54
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v8

    if-nez v8, :cond_25

    if-ne v14, v9, :cond_26

    :cond_25
    move v8, v5

    goto :goto_d

    :cond_26
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_27

    goto :goto_e

    .line 55
    :cond_27
    iget-object v7, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    :goto_e
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v7, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v8, :cond_29

    if-eqz v10, :cond_28

    .line 57
    iget-object v7, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v7, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 58
    :cond_28
    iget-object v7, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->b5:Lcom/android/tools/r8/graph/k2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/k2;->f:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 59
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v7

    if-nez v7, :cond_29

    .line 60
    iget-object v7, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v7, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 61
    :cond_29
    :goto_f
    iget-object v7, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v7

    if-ge v1, v7, :cond_33

    .line 62
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 63
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    move-object/from16 p2, v10

    goto/16 :goto_14

    .line 64
    :cond_2a
    iget-object v7, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v1, v7, :cond_2b

    move v7, v5

    goto :goto_11

    :cond_2b
    const/4 v7, 0x0

    .line 65
    :goto_11
    iget-object v8, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v8, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v8

    if-nez v8, :cond_2c

    goto :goto_10

    :cond_2c
    if-nez v7, :cond_2e

    if-eqz v13, :cond_2d

    move-object/from16 v9, p4

    .line 67
    invoke-interface {v9, v4}, Lcom/android/tools/r8/internal/ky;->a(I)I

    move-result v8

    .line 68
    invoke-interface {v2, v5}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 69
    new-instance v4, Lcom/android/tools/r8/internal/yb;

    iget-object v5, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v5, v9}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    const/4 v4, 0x1

    goto :goto_12

    .line 70
    :cond_2d
    new-instance v4, Lcom/android/tools/r8/internal/kb;

    sget-object v5, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_2e
    const/4 v4, 0x1

    const/4 v8, -0x1

    .line 71
    :goto_12
    invoke-interface {v2, v4}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 72
    new-instance v4, Lcom/android/tools/r8/internal/ga;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v9, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 73
    invoke-virtual {v9, v1}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    const/16 v9, 0xb8

    move-object/from16 p2, v10

    const/4 v10, 0x0

    invoke-direct {v4, v9, v5, v10}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 74
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    if-nez v7, :cond_32

    if-eqz v13, :cond_31

    .line 75
    sget-boolean v4, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v4, :cond_30

    const/4 v4, -0x1

    if-eq v8, v4, :cond_2f

    goto :goto_13

    :cond_2f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :cond_30
    :goto_13
    new-instance v4, Lcom/android/tools/r8/internal/pa;

    iget-object v5, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_14

    .line 77
    :cond_31
    new-instance v4, Lcom/android/tools/r8/internal/kb;

    sget-object v5, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_32
    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, p2

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_f

    .line 78
    :cond_33
    sget-boolean v1, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v1, :cond_35

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v5

    if-ne v4, v5, :cond_34

    goto :goto_15

    :cond_34
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 79
    :cond_35
    :goto_15
    iget-object v4, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v4, v14, :cond_37

    iget-object v5, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    if-eq v4, v5, :cond_37

    .line 80
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 81
    new-instance v4, Lcom/android/tools/r8/internal/t9;

    iget-object v5, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    const/4 v7, 0x0

    .line 82
    invoke-direct {v4, v5, v7}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 83
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_16

    :cond_36
    const/4 v7, 0x0

    .line 84
    new-instance v4, Lcom/android/tools/r8/internal/t9;

    iget-object v5, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 85
    invoke-direct {v4, v5, v7}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 86
    invoke-virtual {v11, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 87
    :goto_16
    iget-object v4, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_37
    iget-object v4, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v4, v14, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 89
    iget-object v5, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v5, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5, v7, v4, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 90
    new-instance v6, Lcom/android/tools/r8/internal/ga;

    const/16 v7, 0xb6

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v11, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    if-eqz v15, :cond_38

    const/4 v5, 0x1

    .line 91
    invoke-interface {v2, v5}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 92
    new-instance v1, Lcom/android/tools/r8/internal/kb;

    sget-object v2, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_18

    .line 93
    :cond_38
    iget-object v5, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v4, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v5

    if-nez v5, :cond_3b

    if-nez v1, :cond_39

    .line 94
    iget-object v1, v4, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v4, :cond_3a

    :cond_39
    const/4 v1, 0x2

    goto :goto_17

    :cond_3a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 95
    :goto_17
    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 96
    new-instance v1, Lcom/android/tools/r8/internal/i9;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 97
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 98
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v7, v2, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 99
    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_18

    .line 100
    :cond_3b
    iget-object v1, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v5, :cond_3c

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v4, :cond_3c

    const/4 v1, 0x1

    .line 101
    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 102
    new-instance v1, Lcom/android/tools/r8/internal/i9;

    iget-object v2, v3, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v11, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 103
    :cond_3c
    :goto_18
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 5

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    .line 108
    sget-boolean v3, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    instance-of v3, v2, Lcom/android/tools/r8/internal/S9;

    if-nez v3, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 111
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v2

    const/4 v3, 0x2

    .line 113
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 114
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->N2:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_4

    .line 117
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    .line 118
    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 119
    invoke-static {v3, p2, v4}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    :cond_4
    or-int/lit8 v1, v1, 0x2

    :cond_5
    const/4 v3, 0x1

    .line 120
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/P6;->b(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pw0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 123
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 124
    invoke-static {v2, p2, v3}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/z0;Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 1

    .line 289
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 290
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    .line 292
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    invoke-interface {v0, p3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    .line 293
    sget-boolean v0, Lcom/android/tools/r8/internal/Pw0;->d:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 294
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 295
    :cond_3
    :goto_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_4
    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/internal/o9;)V
    .locals 3

    .line 284
    iget-object p1, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    .line 285
    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->f:Lcom/android/tools/r8/graph/z0;

    .line 286
    new-instance v0, Lcom/android/tools/r8/internal/gS0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gS0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/hS0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hS0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/iS0;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/iS0;-><init>(Lcom/android/tools/r8/internal/Pw0;Lcom/android/tools/r8/internal/o9;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/z0;Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    .line 287
    new-instance v0, Lcom/android/tools/r8/internal/jS0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jS0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/RR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/RR0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/SR0;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/SR0;-><init>(Lcom/android/tools/r8/internal/Pw0;Lcom/android/tools/r8/internal/o9;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/z0;Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/o9;Ljava/util/List;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 826
    new-instance v0, Lcom/android/tools/r8/internal/fS0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/fS0;-><init>(Lcom/android/tools/r8/internal/Pw0;Lcom/android/tools/r8/graph/u1;)V

    .line 827
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 828
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 829
    const-string v0, "$varhandle"

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    sget p3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 11
    new-instance p3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p3, p7}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-static {p2, p6, p3}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    const/4 p2, 0x2

    .line 13
    invoke-interface {p4, p2}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 14
    new-instance p2, Lcom/android/tools/r8/internal/wa;

    iget-object p3, p1, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance p3, Lcom/android/tools/r8/internal/kb;

    sget-object p4, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance p4, Lcom/android/tools/r8/internal/ga;

    iget-object p5, p1, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    iget-object p6, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 p7, 0x0

    new-array p8, p7, [Lcom/android/tools/r8/graph/M2;

    .line 15
    invoke-virtual {p1, p6, p8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p6

    iget-object p8, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 16
    invoke-virtual {p1, p5, p6, p8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    const/16 p5, 0xb7

    invoke-direct {p4, p5, p1, p7}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 17
    invoke-static {p2, p3, p4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/o9;Ljava/util/List;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Pw0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/TR0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/TR0;-><init>(Lcom/android/tools/r8/internal/Pw0;Lcom/android/tools/r8/graph/u1;)V

    .line 11
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pw0;->b:Lcom/android/tools/r8/graph/y;

    sget p3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 3
    new-instance p3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p3, p7}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-static {p2, p6, p3}, Lcom/android/tools/r8/internal/Pw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Rw0;Ljava/util/Collection;)V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/kb;

    sget-object p3, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance p3, Lcom/android/tools/r8/internal/ga;

    iget-object p4, p1, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    iget-object p5, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 6
    invoke-virtual {p1, p4, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p5

    .line 7
    const-string p6, "toPrivateLookupIn"

    invoke-virtual {p1, p6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p6

    .line 8
    invoke-virtual {p1, p4, p5, p6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    const/16 p4, 0xb6

    const/4 p5, 0x0

    invoke-direct {p3, p4, p1, p5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 9
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method
