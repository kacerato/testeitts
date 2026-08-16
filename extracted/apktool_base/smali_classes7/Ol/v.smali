.class public LOl/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final A:LOl/v;

.field public static final B:LOl/v;

.field public static final C:LOl/v;

.field public static final D:LOl/v;

.field public static final E:LOl/v;

.field public static final F:LOl/v;

.field public static final G:LOl/v;

.field public static final H:LOl/v;

.field public static final I:LOl/v;

.field public static final J:LOl/v;

.field public static final K:LOl/v;

.field public static final L:LOl/v;

.field public static M:Ljava/util/Map;

.field public static final c:LOl/v;

.field public static final d:LOl/v;

.field public static final e:LOl/v;

.field public static final f:LOl/v;

.field public static final g:LOl/v;

.field public static final h:LOl/v;

.field public static final i:LOl/v;

.field public static final j:LOl/v;

.field public static final k:LOl/v;

.field public static final l:LOl/v;

.field public static final m:LOl/v;

.field public static final n:LOl/v;

.field public static final o:LOl/v;

.field public static final p:LOl/v;

.field public static final q:LOl/v;

.field public static final r:LOl/v;

.field public static final s:LOl/v;

.field public static final t:LOl/v;

.field public static final u:LOl/v;

.field public static final v:LOl/v;

.field public static final w:LOl/v;

.field public static final x:LOl/v;

.field public static final y:LOl/v;

.field public static final z:LOl/v;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    new-instance v0, LOl/v;

    const-string v1, "sha2-128f-robust"

    invoke-direct {v0, v1}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LOl/v;->c:LOl/v;

    new-instance v1, LOl/v;

    const-string v2, "sha2-128s-robust"

    invoke-direct {v1, v2}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v1, LOl/v;->d:LOl/v;

    new-instance v2, LOl/v;

    const-string v3, "sha2-192f-robust"

    invoke-direct {v2, v3}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v2, LOl/v;->e:LOl/v;

    new-instance v3, LOl/v;

    const-string v4, "sha2-192s-robust"

    invoke-direct {v3, v4}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v3, LOl/v;->f:LOl/v;

    new-instance v4, LOl/v;

    const-string v5, "sha2-256f-robust"

    invoke-direct {v4, v5}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v4, LOl/v;->g:LOl/v;

    new-instance v5, LOl/v;

    const-string v6, "sha2-256s-robust"

    invoke-direct {v5, v6}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v5, LOl/v;->h:LOl/v;

    new-instance v6, LOl/v;

    const-string v7, "sha2-128s"

    invoke-direct {v6, v7}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v6, LOl/v;->i:LOl/v;

    new-instance v8, LOl/v;

    const-string v9, "sha2-128f"

    invoke-direct {v8, v9}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v8, LOl/v;->j:LOl/v;

    new-instance v10, LOl/v;

    const-string v11, "sha2-192f"

    invoke-direct {v10, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v10, LOl/v;->k:LOl/v;

    new-instance v12, LOl/v;

    const-string v13, "sha2-192s"

    invoke-direct {v12, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v12, LOl/v;->l:LOl/v;

    new-instance v14, LOl/v;

    const-string v15, "sha2-256f"

    invoke-direct {v14, v15}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v14, LOl/v;->m:LOl/v;

    move-object/from16 v16, v15

    new-instance v15, LOl/v;

    move-object/from16 v17, v13

    const-string v13, "sha2-256s"

    invoke-direct {v15, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v15, LOl/v;->n:LOl/v;

    move-object/from16 v18, v13

    new-instance v13, LOl/v;

    move-object/from16 v19, v11

    const-string v11, "shake-128f-robust"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->o:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v20, v13

    const-string v13, "shake-128s-robust"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->p:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v21, v11

    const-string v11, "shake-192f-robust"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->q:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v22, v13

    const-string v13, "shake-192s-robust"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->r:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v23, v11

    const-string v11, "shake-256f-robust"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->s:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v24, v13

    const-string v13, "shake-256s-robust"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->t:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v25, v11

    const-string v11, "shake-128f"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->u:LOl/v;

    move-object/from16 v26, v11

    new-instance v11, LOl/v;

    move-object/from16 v27, v13

    const-string v13, "shake-128s"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->v:LOl/v;

    move-object/from16 v28, v13

    new-instance v13, LOl/v;

    move-object/from16 v29, v11

    const-string v11, "shake-192f"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->w:LOl/v;

    move-object/from16 v30, v11

    new-instance v11, LOl/v;

    move-object/from16 v31, v13

    const-string v13, "shake-192s"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->x:LOl/v;

    move-object/from16 v32, v13

    new-instance v13, LOl/v;

    move-object/from16 v33, v11

    const-string v11, "shake-256f"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->y:LOl/v;

    move-object/from16 v34, v11

    new-instance v11, LOl/v;

    move-object/from16 v35, v13

    const-string v13, "shake-256s"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->z:LOl/v;

    move-object/from16 v36, v13

    new-instance v13, LOl/v;

    move-object/from16 v37, v11

    const-string v11, "haraka-128f-robust"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->A:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v38, v13

    const-string v13, "haraka-128s-robust"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->B:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v39, v11

    const-string v11, "haraka-256f-robust"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->C:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v40, v13

    const-string v13, "haraka-256s-robust"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->D:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v41, v11

    const-string v11, "haraka-192f-robust"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->E:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v42, v13

    const-string v13, "haraka-192s-robust"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->F:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v43, v11

    const-string v11, "haraka-128f-simple"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->G:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v44, v13

    const-string v13, "haraka-128s-simple"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->H:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v45, v11

    const-string v11, "haraka-192f-simple"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->I:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v46, v13

    const-string v13, "haraka-192s-simple"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->J:LOl/v;

    new-instance v13, LOl/v;

    move-object/from16 v47, v11

    const-string v11, "haraka-256f-simple"

    invoke-direct {v13, v11}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v13, LOl/v;->K:LOl/v;

    new-instance v11, LOl/v;

    move-object/from16 v48, v13

    const-string v13, "haraka-256s-simple"

    invoke-direct {v11, v13}, LOl/v;-><init>(Ljava/lang/String;)V

    sput-object v11, LOl/v;->L:LOl/v;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v49, v11

    invoke-virtual {v0}, LOl/v;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v1}, LOl/v;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v2}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v3}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v4}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v5}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v6}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v8}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v10}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v12}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v14}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual {v15}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v20 .. v20}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v22 .. v22}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v23 .. v23}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v25 .. v25}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v29 .. v29}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v31 .. v31}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v31

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v33 .. v33}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v33

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v35 .. v35}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v35

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v37 .. v37}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, v37

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v38 .. v38}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v39 .. v39}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v42 .. v42}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v43 .. v43}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v40 .. v40}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v41 .. v41}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v44 .. v44}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v45 .. v45}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v46 .. v46}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v47 .. v47}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v48 .. v48}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-virtual/range {v49 .. v49}, LOl/v;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOl/v;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LOl/v;
    .locals 1

    sget-object v0, LOl/v;->M:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOl/v;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/v;->b:Ljava/lang/String;

    return-object v0
.end method
