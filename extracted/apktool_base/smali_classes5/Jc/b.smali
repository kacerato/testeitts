.class public LJc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:F = 6.283185f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJc/b$a;

    invoke-direct {v0}, LJc/b$a;-><init>()V

    sput-object v0, LJc/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFFFZLJc/a;)F
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "directions",
            "quality",
            "size",
            "clampToEdge",
            "blurListener"
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v3, p6

    const v4, 0x40c90fda

    div-float v5, v4, p2

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v7, v6, p3

    invoke-interface {v3, v0, v1}, LJc/a;->a(FF)F

    move-result v8

    sget-object v9, LJc/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_0
    cmpg-float v13, v11, v4

    if-gez v13, :cond_1

    move v13, v7

    :goto_1
    cmpg-float v14, v13, v6

    if-gtz v14, :cond_0

    invoke-virtual {v9, v10, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    move/from16 v14, p4

    invoke-virtual {v9, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->v0(F)V

    invoke-virtual {v9, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Z(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v11}, LNc/b;->e0(F)F

    move-result v15

    invoke-static {v11}, LNc/b;->n1(F)F

    move-result v4

    invoke-virtual {v9, v15, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->a0(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v9, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->n(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v2, v4}, LJc/b;->d(ZF)F

    move-result v4

    iget v15, v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v2, v15}, LJc/b;->d(ZF)F

    move-result v15

    invoke-interface {v3, v4, v15}, LJc/a;->a(FF)F

    move-result v4

    add-float/2addr v8, v4

    add-float/2addr v12, v6

    add-float/2addr v13, v7

    const v4, 0x40c90fda

    goto :goto_1

    :cond_0
    move/from16 v14, p4

    add-float/2addr v11, v5

    const v4, 0x40c90fda

    goto :goto_0

    :cond_1
    div-float/2addr v8, v12

    return v8
.end method

.method public static b(FFFLJc/a;)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "size",
            "blurListener"
        }
    .end annotation

    const/high16 v3, 0x41000000    # 8.0f

    const/4 v5, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    move v0, p0

    move v1, p1

    move v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, LJc/b;->a(FFFFFZLJc/a;)F

    move-result p0

    return p0
.end method

.method public static c(FFLJc/a;)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "blurListener"
        }
    .end annotation

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41000000    # 8.0f

    move v0, p0

    move v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, LJc/b;->a(FFFFFZLJc/a;)F

    move-result p0

    return p0
.end method

.method public static d(ZF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clampToEdge",
            "v"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->H0(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p0, :cond_0

    cmpg-float p0, p1, v1

    if-gez p0, :cond_0

    add-float/2addr p1, v0

    :cond_0
    invoke-static {v1, p1, v0}, LNc/b;->E(FFF)F

    move-result p0

    return p0
.end method
