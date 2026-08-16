.class public LV8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:[[F

.field public final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LV8/b;->a:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, LV8/b;->b:[[F

    new-instance v0, LV8/b$a;

    invoke-direct {v0, p0}, LV8/b$a;-><init>(LV8/b;)V

    iput-object v0, p0, LV8/b;->c:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public a([F[F)V
    .locals 42
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frustumMatrix",
            "viewMatrix"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, LV8/b;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, LV8/b;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v3, 0x0

    aget v4, p2, v3

    aget v5, p1, v3

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v6, p2, v5

    const/4 v7, 0x4

    aget v8, p1, v7

    mul-float v9, v6, v8

    add-float/2addr v4, v9

    const/4 v9, 0x2

    aget v10, p2, v9

    const/16 v11, 0x8

    aget v12, p1, v11

    mul-float v13, v10, v12

    add-float/2addr v4, v13

    const/4 v13, 0x3

    aget v14, p2, v13

    const/16 v15, 0xc

    aget v16, p1, v15

    mul-float v17, v14, v16

    add-float v4, v4, v17

    aput v4, v0, v3

    aget v17, p2, v3

    aget v18, p1, v5

    mul-float v18, v18, v17

    const/4 v15, 0x5

    aget v19, p1, v15

    mul-float v6, v6, v19

    add-float v18, v18, v6

    const/16 v6, 0x9

    aget v20, p1, v6

    mul-float v21, v10, v20

    add-float v18, v18, v21

    const/16 v21, 0xd

    aget v22, p1, v21

    mul-float v23, v14, v22

    add-float v18, v18, v23

    aput v18, v0, v5

    aget v18, p1, v9

    mul-float v18, v18, v17

    aget v23, p2, v5

    const/16 v24, 0x6

    aget v25, p1, v24

    mul-float v26, v23, v25

    add-float v18, v18, v26

    const/16 v26, 0xa

    aget v27, p1, v26

    mul-float v10, v10, v27

    add-float v18, v18, v10

    const/16 v10, 0xe

    aget v28, p1, v10

    mul-float v29, v14, v28

    add-float v18, v18, v29

    aput v18, v0, v9

    aget v18, p1, v13

    mul-float v17, v17, v18

    const/16 v18, 0x7

    aget v29, p1, v18

    mul-float v23, v23, v29

    add-float v17, v17, v23

    aget v23, p2, v9

    const/16 v30, 0xb

    aget v31, p1, v30

    mul-float v23, v23, v31

    add-float v17, v17, v23

    const/16 v23, 0xf

    aget v32, p1, v23

    mul-float v14, v14, v32

    add-float v17, v17, v14

    aput v17, v0, v13

    aget v14, p2, v7

    aget v33, p1, v3

    mul-float v14, v14, v33

    aget v34, p2, v15

    mul-float v8, v8, v34

    add-float/2addr v14, v8

    aget v8, p2, v24

    mul-float v35, v8, v12

    add-float v14, v14, v35

    aget v35, p2, v18

    mul-float v36, v35, v16

    add-float v14, v14, v36

    aput v14, v0, v7

    aget v36, p2, v7

    aget v37, p1, v5

    mul-float v38, v36, v37

    mul-float v34, v34, v19

    add-float v38, v38, v34

    mul-float v19, v8, v20

    add-float v38, v38, v19

    mul-float v19, v35, v22

    add-float v38, v38, v19

    aput v38, v0, v15

    aget v19, p1, v9

    mul-float v34, v36, v19

    aget v38, p2, v15

    mul-float v25, v25, v38

    add-float v34, v34, v25

    mul-float v8, v8, v27

    add-float v34, v34, v8

    mul-float v8, v35, v28

    add-float v34, v34, v8

    aput v34, v0, v24

    aget v8, p1, v13

    mul-float v36, v36, v8

    mul-float v38, v38, v29

    add-float v36, v36, v38

    aget v25, p2, v24

    mul-float v25, v25, v31

    add-float v36, v36, v25

    mul-float v35, v35, v32

    add-float v36, v36, v35

    aput v36, v0, v18

    aget v25, p2, v11

    mul-float v25, v25, v33

    aget v29, p2, v6

    aget v34, p1, v7

    mul-float v35, v29, v34

    add-float v25, v25, v35

    aget v35, p2, v26

    mul-float v12, v12, v35

    add-float v25, v25, v12

    aget v12, p2, v30

    mul-float v38, v12, v16

    add-float v25, v25, v38

    aput v25, v0, v11

    aget v38, p2, v11

    mul-float v39, v38, v37

    aget v40, p1, v15

    mul-float v29, v29, v40

    add-float v39, v39, v29

    mul-float v20, v20, v35

    add-float v39, v39, v20

    mul-float v20, v12, v22

    add-float v39, v39, v20

    aput v39, v0, v6

    mul-float v20, v38, v19

    aget v29, p2, v6

    aget v39, p1, v24

    mul-float v41, v29, v39

    add-float v20, v20, v41

    mul-float v35, v35, v27

    add-float v20, v20, v35

    mul-float v27, v12, v28

    add-float v20, v20, v27

    aput v20, v0, v26

    mul-float v38, v38, v8

    aget v20, p1, v18

    mul-float v29, v29, v20

    add-float v38, v38, v29

    aget v27, p2, v26

    mul-float v27, v27, v31

    add-float v38, v38, v27

    mul-float v12, v12, v32

    add-float v38, v38, v12

    aput v38, v0, v30

    const/16 v12, 0xc

    aget v27, p2, v12

    mul-float v27, v27, v33

    aget v12, p2, v21

    mul-float v34, v34, v12

    add-float v27, v27, v34

    aget v29, p2, v10

    aget v31, p1, v11

    mul-float v31, v31, v29

    add-float v27, v27, v31

    aget v31, p2, v23

    mul-float v16, v16, v31

    add-float v27, v27, v16

    const/16 v16, 0xc

    aput v27, v0, v16

    aget v33, p2, v16

    mul-float v37, v37, v33

    mul-float v12, v12, v40

    add-float v37, v37, v12

    aget v12, p1, v6

    mul-float v12, v12, v29

    add-float v37, v37, v12

    mul-float v22, v22, v31

    add-float v37, v37, v22

    aput v37, v0, v21

    mul-float v19, v19, v33

    aget v12, p2, v21

    mul-float v39, v39, v12

    add-float v19, v19, v39

    aget v16, p1, v26

    mul-float v29, v29, v16

    add-float v19, v19, v29

    mul-float v28, v28, v31

    add-float v19, v19, v28

    aput v19, v0, v10

    mul-float v33, v33, v8

    mul-float v12, v12, v20

    add-float v33, v33, v12

    aget v8, p2, v10

    aget v12, p1, v30

    mul-float/2addr v8, v12

    add-float v33, v33, v8

    mul-float v31, v31, v32

    add-float v33, v33, v31

    aput v33, v0, v23

    iget-object v8, v1, LV8/b;->b:[[F

    aget-object v12, v8, v3

    sub-float v17, v17, v4

    aput v17, v12, v3

    sub-float v36, v36, v14

    aput v36, v12, v5

    sub-float v38, v38, v25

    aput v38, v12, v9

    sub-float v33, v33, v27

    aput v33, v12, v13

    invoke-virtual {v1, v8, v3}, LV8/b;->e([[FI)V

    iget-object v4, v1, LV8/b;->b:[[F

    aget-object v8, v4, v5

    aget v12, v0, v13

    aget v14, v0, v3

    add-float/2addr v12, v14

    aput v12, v8, v3

    aget v12, v0, v18

    aget v14, v0, v7

    add-float/2addr v12, v14

    aput v12, v8, v5

    aget v12, v0, v30

    aget v11, v0, v11

    add-float/2addr v12, v11

    aput v12, v8, v9

    aget v11, v0, v23

    const/16 v12, 0xc

    aget v12, v0, v12

    add-float/2addr v11, v12

    aput v11, v8, v13

    invoke-virtual {v1, v4, v5}, LV8/b;->e([[FI)V

    iget-object v4, v1, LV8/b;->b:[[F

    aget-object v8, v4, v9

    aget v11, v0, v13

    aget v12, v0, v5

    add-float/2addr v11, v12

    aput v11, v8, v3

    aget v11, v0, v18

    aget v12, v0, v15

    add-float/2addr v11, v12

    aput v11, v8, v5

    aget v11, v0, v30

    aget v12, v0, v6

    add-float/2addr v11, v12

    aput v11, v8, v9

    aget v11, v0, v23

    aget v12, v0, v21

    add-float/2addr v11, v12

    aput v11, v8, v13

    invoke-virtual {v1, v4, v9}, LV8/b;->e([[FI)V

    iget-object v4, v1, LV8/b;->b:[[F

    aget-object v8, v4, v13

    aget v11, v0, v13

    aget v12, v0, v5

    sub-float/2addr v11, v12

    aput v11, v8, v3

    aget v11, v0, v18

    aget v12, v0, v15

    sub-float/2addr v11, v12

    aput v11, v8, v5

    aget v11, v0, v30

    aget v6, v0, v6

    sub-float/2addr v11, v6

    aput v11, v8, v9

    aget v6, v0, v23

    aget v11, v0, v21

    sub-float/2addr v6, v11

    aput v6, v8, v13

    invoke-virtual {v1, v4, v13}, LV8/b;->e([[FI)V

    iget-object v4, v1, LV8/b;->b:[[F

    aget-object v6, v4, v7

    aget v8, v0, v13

    aget v11, v0, v9

    sub-float/2addr v8, v11

    aput v8, v6, v3

    aget v8, v0, v18

    aget v11, v0, v24

    sub-float/2addr v8, v11

    aput v8, v6, v5

    aget v8, v0, v30

    aget v11, v0, v26

    sub-float/2addr v8, v11

    aput v8, v6, v9

    aget v8, v0, v23

    aget v11, v0, v10

    sub-float/2addr v8, v11

    aput v8, v6, v13

    invoke-virtual {v1, v4, v7}, LV8/b;->e([[FI)V

    iget-object v4, v1, LV8/b;->b:[[F

    aget-object v6, v4, v15

    aget v7, v0, v13

    aget v8, v0, v9

    add-float/2addr v7, v8

    aput v7, v6, v3

    aget v3, v0, v18

    aget v7, v0, v24

    add-float/2addr v3, v7

    aput v3, v6, v5

    aget v3, v0, v30

    aget v5, v0, v26

    add-float/2addr v3, v5

    aput v3, v6, v9

    aget v3, v0, v23

    aget v0, v0, v10

    add-float/2addr v3, v0

    aput v3, v6, v13

    invoke-virtual {v1, v4, v15}, LV8/b;->e([[FI)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(FFFF)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_x",
            "_y",
            "_z",
            "_size"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, LV8/b;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ge v3, v4, :cond_8

    :try_start_0
    iget-object v4, v1, LV8/b;->b:[[F

    aget-object v4, v4, v3

    aget v6, v4, v0

    sub-float v7, p1, p4

    mul-float v8, v6, v7

    aget v5, v4, v5

    sub-float v9, p2, p4

    mul-float v10, v5, v9

    add-float/2addr v8, v10

    const/4 v10, 0x2

    aget v10, v4, v10

    sub-float v11, p3, p4

    mul-float v12, v10, v11

    add-float/2addr v8, v12

    const/4 v12, 0x3

    aget v4, v4, v12

    add-float/2addr v8, v4

    const/4 v12, 0x0

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    add-float v8, p1, p4

    mul-float v13, v6, v8

    mul-float v14, v5, v9

    add-float/2addr v13, v14

    mul-float v14, v10, v11

    add-float/2addr v13, v14

    add-float/2addr v13, v4

    cmpl-float v13, v13, v12

    if-lez v13, :cond_1

    goto :goto_1

    :cond_1
    mul-float v13, v6, v7

    add-float v14, p2, p4

    mul-float v15, v5, v14

    add-float/2addr v13, v15

    mul-float v15, v10, v11

    add-float/2addr v13, v15

    add-float/2addr v13, v4

    cmpl-float v13, v13, v12

    if-lez v13, :cond_2

    goto :goto_1

    :cond_2
    mul-float v13, v6, v8

    mul-float v15, v5, v14

    add-float/2addr v13, v15

    mul-float/2addr v11, v10

    add-float/2addr v13, v11

    add-float/2addr v13, v4

    cmpl-float v11, v13, v12

    if-lez v11, :cond_3

    goto :goto_1

    :cond_3
    mul-float v11, v6, v7

    mul-float v13, v5, v9

    add-float/2addr v11, v13

    add-float v13, p3, p4

    mul-float v15, v10, v13

    add-float/2addr v11, v15

    add-float/2addr v11, v4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    goto :goto_1

    :cond_4
    mul-float v11, v6, v8

    mul-float/2addr v9, v5

    add-float/2addr v11, v9

    mul-float v9, v10, v13

    add-float/2addr v11, v9

    add-float/2addr v11, v4

    cmpl-float v9, v11, v12

    if-lez v9, :cond_5

    goto :goto_1

    :cond_5
    mul-float/2addr v7, v6

    mul-float v9, v5, v14

    add-float/2addr v7, v9

    mul-float v9, v10, v13

    add-float/2addr v7, v9

    add-float/2addr v7, v4

    cmpl-float v7, v7, v12

    if-lez v7, :cond_6

    goto :goto_1

    :cond_6
    mul-float/2addr v6, v8

    mul-float/2addr v5, v14

    add-float/2addr v6, v5

    mul-float/2addr v10, v13

    add-float/2addr v6, v10

    add-float/2addr v6, v4

    cmpl-float v4, v6, v12

    if-lez v4, :cond_7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_8
    monitor-exit v2

    return v5

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(FFF)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "_x",
            "_y",
            "_z"
        }
    .end annotation

    iget-object v0, p0, LV8/b;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    :try_start_0
    iget-object v3, p0, LV8/b;->b:[[F

    aget-object v3, v3, v2

    aget v5, v3, v1

    mul-float/2addr v5, p1

    aget v4, v3, v4

    mul-float/2addr v4, p2

    add-float/2addr v5, v4

    const/4 v4, 0x2

    aget v4, v3, v4

    mul-float/2addr v4, p3

    add-float/2addr v5, v4

    const/4 v4, 0x3

    aget v3, v3, v4

    add-float/2addr v5, v3

    const/4 v3, 0x0

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v4

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(FFFF)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_x",
            "_y",
            "_z",
            "_radius"
        }
    .end annotation

    iget-object v0, p0, LV8/b;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    :try_start_0
    iget-object v3, p0, LV8/b;->b:[[F

    aget-object v3, v3, v2

    aget v5, v3, v1

    mul-float/2addr v5, p1

    aget v4, v3, v4

    mul-float/2addr v4, p2

    add-float/2addr v5, v4

    const/4 v4, 0x2

    aget v4, v3, v4

    mul-float/2addr v4, p3

    add-float/2addr v5, v4

    const/4 v4, 0x3

    aget v3, v3, v4

    add-float/2addr v5, v3

    neg-float v3, p4

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v4

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e([[FI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_frustum",
            "_side"
        }
    .end annotation

    aget-object v0, p1, p2

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v0, v0, v4

    mul-float/2addr v0, v0

    add-float/2addr v2, v0

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    aget-object p1, p1, p2

    aget p2, p1, v1

    div-float/2addr p2, v0

    aput p2, p1, v1

    aget p2, p1, v3

    div-float/2addr p2, v0

    aput p2, p1, v3

    aget p2, p1, v4

    div-float/2addr p2, v0

    aput p2, p1, v4

    const/4 p2, 0x3

    aget v1, p1, p2

    div-float/2addr v1, v0

    aput v1, p1, p2

    return-void
.end method
