.class public Lol/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lol/t$a;,
        Lol/t$b;,
        Lol/t$c;
    }
.end annotation


# static fields
.field public static final A:Lol/t;

.field public static final B:Lol/t;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final C:Lol/t;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final D:Lol/t;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final E:Lol/t;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final F:Lol/t;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final G:Lol/t;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final H:Lol/t;

.field public static final I:Lol/t;

.field public static final J:Lol/t;

.field public static final K:Lol/t;

.field public static final L:Lol/t;

.field public static final M:Lol/t;

.field public static final N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lol/t;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lol/t;

.field public static final e:Lol/t;

.field public static final f:Lol/t;

.field public static final g:Lol/t;

.field public static final h:Lol/t;

.field public static final i:Lol/t;

.field public static final j:Lol/t;

.field public static final k:Lol/t;

.field public static final l:Lol/t;

.field public static final m:Lol/t;

.field public static final n:Lol/t;

.field public static final o:Lol/t;

.field public static final p:Lol/t;

.field public static final q:Lol/t;

.field public static final r:Lol/t;

.field public static final s:Lol/t;

.field public static final t:Lol/t;

.field public static final u:Lol/t;

.field public static final v:Lol/t;

.field public static final w:Lol/t;

.field public static final x:Lol/t;

.field public static final y:Lol/t;

.field public static final z:Lol/t;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Lol/p;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    new-instance v1, Lol/t;

    move-object v0, v1

    const v2, 0x10101

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v11, Lol/t$b;

    const/16 v9, 0x21

    const/16 v10, 0x42

    const/4 v4, 0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x16

    const/4 v8, 0x6

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v3, "sha2-128f-robust"

    invoke-direct {v1, v2, v3, v11}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v1, Lol/t;->d:Lol/t;

    new-instance v2, Lol/t;

    move-object v1, v2

    const v3, 0x10102

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v12, Lol/t$b;

    const/16 v10, 0xe

    const/16 v11, 0x3f

    const/4 v5, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x7

    const/16 v9, 0xc

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v4, "sha2-128s-robust"

    invoke-direct {v2, v3, v4, v12}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v2, Lol/t;->e:Lol/t;

    new-instance v3, Lol/t;

    move-object v2, v3

    const v4, 0x10103

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v13, Lol/t$b;

    const/16 v11, 0x21

    const/16 v12, 0x42

    const/4 v6, 0x1

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x16

    const/16 v10, 0x8

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v5, "sha2-192f-robust"

    invoke-direct {v3, v4, v5, v13}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v3, Lol/t;->f:Lol/t;

    new-instance v4, Lol/t;

    move-object v3, v4

    const v5, 0x10104

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v14, Lol/t$b;

    const/16 v12, 0x11

    const/16 v13, 0x3f

    const/4 v7, 0x1

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/4 v10, 0x7

    const/16 v11, 0xe

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v6, "sha2-192s-robust"

    invoke-direct {v4, v5, v6, v14}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v4, Lol/t;->g:Lol/t;

    new-instance v5, Lol/t;

    move-object v4, v5

    const v6, 0x10105

    invoke-static {v6}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v15, Lol/t$b;

    const/16 v13, 0x23

    const/16 v14, 0x44

    const/4 v8, 0x1

    const/16 v9, 0x20

    const/16 v10, 0x10

    const/16 v11, 0x11

    const/16 v12, 0x9

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v7, "sha2-256f-robust"

    invoke-direct {v5, v6, v7, v15}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v5, Lol/t;->h:Lol/t;

    new-instance v6, Lol/t;

    move-object v5, v6

    const v7, 0x10106

    invoke-static {v7}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v15, Lol/t$b;

    const/16 v14, 0x16

    const/16 v16, 0x40

    const/4 v9, 0x1

    const/16 v10, 0x20

    const/16 v11, 0x10

    const/16 v12, 0x8

    const/16 v13, 0xe

    move-object v8, v15

    move-object/from16 v36, v0

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v8, "sha2-256s-robust"

    invoke-direct {v6, v7, v8, v0}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v6, Lol/t;->i:Lol/t;

    new-instance v0, Lol/t;

    move-object v6, v0

    const v7, 0x10201

    invoke-static {v7}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v15, Lol/t$b;

    const/16 v14, 0x21

    const/16 v16, 0x42

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v12, 0x16

    const/4 v13, 0x6

    move-object v8, v15

    move-object/from16 v37, v1

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v8, "sha2-128f"

    invoke-direct {v0, v7, v8, v1}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->j:Lol/t;

    new-instance v0, Lol/t;

    move-object v7, v0

    const v1, 0x10202

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v15, Lol/t$b;

    const/16 v14, 0xe

    const/16 v16, 0x3f

    const/4 v12, 0x7

    const/16 v13, 0xc

    move-object v8, v15

    move-object/from16 v38, v2

    move-object v2, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v8, "sha2-128s"

    invoke-direct {v0, v1, v8, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->k:Lol/t;

    new-instance v0, Lol/t;

    move-object v8, v0

    const v1, 0x10203

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$b;

    const/16 v15, 0x21

    const/16 v16, 0x42

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/16 v12, 0x10

    const/16 v13, 0x16

    const/16 v14, 0x8

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v9, "sha2-192f"

    invoke-direct {v0, v1, v9, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->l:Lol/t;

    new-instance v0, Lol/t;

    move-object v9, v0

    const v1, 0x10204

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$b;

    const/16 v16, 0x11

    const/16 v17, 0x3f

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/16 v13, 0x10

    const/4 v14, 0x7

    const/16 v15, 0xe

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v10, "sha2-192s"

    invoke-direct {v0, v1, v10, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->m:Lol/t;

    new-instance v0, Lol/t;

    move-object v10, v0

    const v1, 0x10205

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$b;

    const/16 v17, 0x23

    const/16 v18, 0x44

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/16 v14, 0x10

    const/16 v15, 0x11

    const/16 v16, 0x9

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v11, "sha2-256f"

    invoke-direct {v0, v1, v11, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->n:Lol/t;

    new-instance v0, Lol/t;

    move-object v11, v0

    const v1, 0x10206

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$b;

    const/16 v18, 0x16

    const/16 v19, 0x40

    const/4 v13, 0x0

    const/16 v14, 0x20

    const/16 v15, 0x10

    const/16 v16, 0x8

    const/16 v17, 0xe

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lol/t$b;-><init>(ZIIIIII)V

    const-string v12, "sha2-256s"

    invoke-direct {v0, v1, v12, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->o:Lol/t;

    new-instance v0, Lol/t;

    move-object v12, v0

    const v1, 0x20101

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v19, 0x21

    const/16 v20, 0x42

    const/4 v14, 0x1

    const/16 v16, 0x10

    const/16 v17, 0x16

    const/16 v18, 0x6

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v13, "shake-128f-robust"

    invoke-direct {v0, v1, v13, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->p:Lol/t;

    new-instance v0, Lol/t;

    move-object v13, v0

    const v1, 0x20102

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v20, 0xe

    const/16 v21, 0x3f

    const/4 v15, 0x1

    const/16 v17, 0x10

    const/16 v18, 0x7

    const/16 v19, 0xc

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v14, "shake-128s-robust"

    invoke-direct {v0, v1, v14, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->q:Lol/t;

    new-instance v0, Lol/t;

    move-object v14, v0

    const v1, 0x20103

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v21, 0x21

    const/16 v22, 0x42

    const/16 v16, 0x1

    const/16 v17, 0x18

    const/16 v18, 0x10

    const/16 v19, 0x16

    const/16 v20, 0x8

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v15, "shake-192f-robust"

    invoke-direct {v0, v1, v15, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->r:Lol/t;

    new-instance v0, Lol/t;

    move-object v15, v0

    const v1, 0x20104

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v22, 0x11

    const/16 v23, 0x3f

    const/16 v17, 0x1

    const/16 v18, 0x18

    const/16 v19, 0x10

    const/16 v20, 0x7

    const/16 v21, 0xe

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v23}, Lol/t$c;-><init>(ZIIIIII)V

    move-object/from16 v39, v3

    const-string v3, "shake-192s-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->s:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v16, v0

    const v1, 0x20105

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v23, 0x23

    const/16 v24, 0x44

    const/16 v18, 0x1

    const/16 v19, 0x20

    const/16 v20, 0x10

    const/16 v21, 0x11

    const/16 v22, 0x9

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256f-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->t:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v17, v0

    const v1, 0x20106

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v24, 0x16

    const/16 v25, 0x40

    const/16 v19, 0x1

    const/16 v20, 0x20

    const/16 v21, 0x10

    const/16 v22, 0x8

    const/16 v23, 0xe

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v25}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256s-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->u:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v18, v0

    const v1, 0x20201

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v25, 0x21

    const/16 v26, 0x42

    const/16 v20, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x16

    const/16 v24, 0x6

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v26}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-128f"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->v:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v19, v0

    const v1, 0x20202

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v26, 0xe

    const/16 v27, 0x3f

    const/16 v21, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x7

    const/16 v25, 0xc

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v27}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-128s"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->w:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v20, v0

    const v1, 0x20203

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v27, 0x21

    const/16 v28, 0x42

    const/16 v22, 0x0

    const/16 v23, 0x18

    const/16 v24, 0x10

    const/16 v25, 0x16

    const/16 v26, 0x8

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-192f"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->x:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v21, v0

    const v1, 0x20204

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v28, 0x11

    const/16 v29, 0x3f

    const/16 v23, 0x0

    const/16 v24, 0x18

    const/16 v25, 0x10

    const/16 v26, 0x7

    const/16 v27, 0xe

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v29}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-192s"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->y:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v22, v0

    const v1, 0x20205

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v29, 0x23

    const/16 v30, 0x44

    const/16 v24, 0x0

    const/16 v25, 0x20

    const/16 v26, 0x10

    const/16 v27, 0x11

    const/16 v28, 0x9

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v30}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256f"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->z:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v23, v0

    const v1, 0x20206

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$c;

    const/16 v30, 0x16

    const/16 v31, 0x40

    const/16 v25, 0x0

    const/16 v26, 0x20

    const/16 v27, 0x10

    const/16 v28, 0x8

    const/16 v29, 0xe

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v31}, Lol/t$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256s"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->A:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v24, v0

    const v1, 0x30101

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v31, 0x21

    const/16 v32, 0x42

    const/16 v26, 0x1

    const/16 v28, 0x10

    const/16 v29, 0x16

    const/16 v30, 0x6

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v32}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128f-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->B:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v25, v0

    const v1, 0x30102

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v32, 0xe

    const/16 v33, 0x3f

    const/16 v27, 0x1

    const/16 v29, 0x10

    const/16 v30, 0x7

    const/16 v31, 0xc

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v33}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128s-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->C:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v26, v0

    const v1, 0x30103

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v33, 0x21

    const/16 v34, 0x42

    const/16 v28, 0x1

    const/16 v29, 0x18

    const/16 v30, 0x10

    const/16 v31, 0x16

    const/16 v32, 0x8

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v34}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192f-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->D:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v27, v0

    const v1, 0x30104

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v34, 0x11

    const/16 v35, 0x3f

    const/16 v29, 0x1

    const/16 v30, 0x18

    const/16 v31, 0x10

    const/16 v32, 0x7

    const/16 v33, 0xe

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v35}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192s-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->E:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v28, v0

    const v1, 0x30105

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0x23

    const/16 v47, 0x44

    const/16 v41, 0x1

    const/16 v42, 0x20

    const/16 v43, 0x10

    const/16 v44, 0x11

    const/16 v45, 0x9

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256f-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->F:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v29, v0

    const v1, 0x30106

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0x16

    const/16 v47, 0x40

    const/16 v44, 0x8

    const/16 v45, 0xe

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256s-robust"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->G:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v30, v0

    const v1, 0x30201

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0x21

    const/16 v47, 0x42

    const/16 v41, 0x0

    const/16 v42, 0x10

    const/16 v44, 0x16

    const/16 v45, 0x6

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128f-simple"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->H:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v31, v0

    const v1, 0x30202

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0xe

    const/16 v47, 0x3f

    const/16 v44, 0x7

    const/16 v45, 0xc

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128s-simple"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->I:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v32, v0

    const v1, 0x30203

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0x21

    const/16 v47, 0x42

    const/16 v42, 0x18

    const/16 v44, 0x16

    const/16 v45, 0x8

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192f-simple"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->J:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v33, v0

    const v1, 0x30204

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0x11

    const/16 v47, 0x3f

    const/16 v44, 0x7

    const/16 v45, 0xe

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192s-simple"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->K:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v34, v0

    const v1, 0x30205

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0x23

    const/16 v47, 0x44

    const/16 v42, 0x20

    const/16 v44, 0x11

    const/16 v45, 0x9

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256f-simple"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->L:Lol/t;

    new-instance v0, Lol/t;

    move-object/from16 v35, v0

    const v1, 0x30206

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lol/t$a;

    const/16 v46, 0x16

    const/16 v47, 0x40

    const/16 v44, 0x8

    const/16 v45, 0xe

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lol/t$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256s-simple"

    invoke-direct {v0, v1, v3, v2}, Lol/t;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V

    sput-object v0, Lol/t;->M:Lol/t;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lol/t;->N:Ljava/util/Map;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    filled-new-array/range {v0 .. v35}, [Lol/t;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x24

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    sget-object v3, Lol/t;->N:Ljava/util/Map;

    invoke-virtual {v2}, Lol/t;->c()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lol/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lol/t;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lol/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lol/t;->c:Lol/p;

    return-void
.end method

.method public static d(Lol/t;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lol/t;->c()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Integer;)Lol/t;
    .locals 1

    sget-object v0, Lol/t;->N:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lol/t;

    return-object p0
.end method


# virtual methods
.method public a()[B
    .locals 1

    invoke-virtual {p0}, Lol/t;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/p;->k(I)[B

    move-result-object v0

    return-object v0
.end method

.method public b()Lol/o;
    .locals 1

    iget-object v0, p0, Lol/t;->c:Lol/p;

    invoke-interface {v0}, Lol/p;->get()Lol/o;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lol/t;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lol/t;->c:Lol/p;

    invoke-interface {v0}, Lol/p;->getN()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lol/t;->b:Ljava/lang/String;

    return-object v0
.end method
