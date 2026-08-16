.class public final enum Lcom/android/tools/r8/internal/lg0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Lcom/android/tools/r8/internal/lg0;

.field public static final enum B:Lcom/android/tools/r8/internal/lg0;

.field public static final enum C:Lcom/android/tools/r8/internal/lg0;

.field public static final enum D:Lcom/android/tools/r8/internal/lg0;

.field public static final enum E:Lcom/android/tools/r8/internal/lg0;

.field public static final enum F:Lcom/android/tools/r8/internal/lg0;

.field public static final enum G:Lcom/android/tools/r8/internal/lg0;

.field public static final enum H:Lcom/android/tools/r8/internal/lg0;

.field public static final I:Lcom/android/tools/r8/internal/nC;

.field public static final synthetic J:[Lcom/android/tools/r8/internal/lg0;

.field public static final enum e:Lcom/android/tools/r8/internal/lg0;

.field public static final enum f:Lcom/android/tools/r8/internal/lg0;

.field public static final enum g:Lcom/android/tools/r8/internal/lg0;

.field public static final enum h:Lcom/android/tools/r8/internal/lg0;

.field public static final enum i:Lcom/android/tools/r8/internal/lg0;

.field public static final enum j:Lcom/android/tools/r8/internal/lg0;

.field public static final enum k:Lcom/android/tools/r8/internal/lg0;

.field public static final enum l:Lcom/android/tools/r8/internal/lg0;

.field public static final enum m:Lcom/android/tools/r8/internal/lg0;

.field public static final enum n:Lcom/android/tools/r8/internal/lg0;

.field public static final enum o:Lcom/android/tools/r8/internal/lg0;

.field public static final enum p:Lcom/android/tools/r8/internal/lg0;

.field public static final enum q:Lcom/android/tools/r8/internal/lg0;

.field public static final enum r:Lcom/android/tools/r8/internal/lg0;

.field public static final enum s:Lcom/android/tools/r8/internal/lg0;

.field public static final enum t:Lcom/android/tools/r8/internal/lg0;

.field public static final enum u:Lcom/android/tools/r8/internal/lg0;

.field public static final enum v:Lcom/android/tools/r8/internal/lg0;

.field public static final enum w:Lcom/android/tools/r8/internal/lg0;

.field public static final enum x:Lcom/android/tools/r8/internal/lg0;

.field public static final enum y:Lcom/android/tools/r8/internal/lg0;

.field public static final enum z:Lcom/android/tools/r8/internal/lg0;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    new-instance v1, Lcom/android/tools/r8/internal/lg0;

    move-object v0, v1

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/String;

    const-string v3, "ANIM"

    const-string v4, "anim"

    invoke-direct {v1, v3, v15, v4, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/lg0;->e:Lcom/android/tools/r8/internal/lg0;

    new-instance v2, Lcom/android/tools/r8/internal/lg0;

    move-object v1, v2

    new-array v3, v15, [Ljava/lang/String;

    const-string v4, "animator"

    const-string v5, "ANIMATOR"

    const/4 v14, 0x1

    invoke-direct {v2, v5, v14, v4, v3}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/lg0;->f:Lcom/android/tools/r8/internal/lg0;

    new-instance v3, Lcom/android/tools/r8/internal/lg0;

    move-object v2, v3

    const-string v4, "string-array"

    const-string v5, "integer-array"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "array"

    const-string v6, "ARRAY"

    const/4 v13, 0x2

    invoke-direct {v3, v6, v13, v5, v4}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/lg0;->g:Lcom/android/tools/r8/internal/lg0;

    new-instance v4, Lcom/android/tools/r8/internal/lg0;

    move-object v3, v4

    new-array v5, v15, [Ljava/lang/String;

    const-string v6, "attr"

    const-string v7, "ATTR"

    const/4 v12, 0x3

    invoke-direct {v4, v7, v12, v6, v5}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/lg0;->h:Lcom/android/tools/r8/internal/lg0;

    new-instance v5, Lcom/android/tools/r8/internal/lg0;

    move-object v4, v5

    new-array v6, v15, [Ljava/lang/String;

    const-string v7, "bool"

    const-string v8, "BOOL"

    const/4 v11, 0x4

    invoke-direct {v5, v8, v11, v7, v6}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/lg0;->i:Lcom/android/tools/r8/internal/lg0;

    new-instance v6, Lcom/android/tools/r8/internal/lg0;

    move-object v5, v6

    new-array v7, v15, [Ljava/lang/String;

    const/4 v8, 0x5

    const-string v9, "color"

    const-string v10, "COLOR"

    invoke-direct {v6, v10, v8, v9, v7}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/internal/lg0;->j:Lcom/android/tools/r8/internal/lg0;

    new-instance v7, Lcom/android/tools/r8/internal/lg0;

    move-object v6, v7

    new-array v8, v15, [Ljava/lang/String;

    const/4 v9, 0x6

    const-string v10, "dimen"

    const-string v11, "DIMEN"

    invoke-direct {v7, v11, v9, v10, v8}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/internal/lg0;->k:Lcom/android/tools/r8/internal/lg0;

    new-instance v8, Lcom/android/tools/r8/internal/lg0;

    move-object v7, v8

    new-array v9, v15, [Ljava/lang/String;

    const/4 v10, 0x7

    const-string v11, "drawable"

    const-string v12, "DRAWABLE"

    invoke-direct {v8, v12, v10, v11, v9}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v8, Lcom/android/tools/r8/internal/lg0;->l:Lcom/android/tools/r8/internal/lg0;

    new-instance v9, Lcom/android/tools/r8/internal/lg0;

    move-object v8, v9

    new-array v10, v15, [Ljava/lang/String;

    const/16 v11, 0x8

    const-string v12, "font"

    const-string v13, "FONT"

    invoke-direct {v9, v13, v11, v12, v10}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v9, Lcom/android/tools/r8/internal/lg0;->m:Lcom/android/tools/r8/internal/lg0;

    new-instance v10, Lcom/android/tools/r8/internal/lg0;

    move-object v9, v10

    new-array v11, v15, [Ljava/lang/String;

    const/16 v12, 0x9

    const-string v13, "fraction"

    const-string v14, "FRACTION"

    invoke-direct {v10, v14, v12, v13, v11}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v10, Lcom/android/tools/r8/internal/lg0;->n:Lcom/android/tools/r8/internal/lg0;

    new-instance v11, Lcom/android/tools/r8/internal/lg0;

    move-object v10, v11

    new-array v12, v15, [Ljava/lang/String;

    const/16 v13, 0xa

    const-string v14, "id"

    const-string v15, "ID"

    invoke-direct {v11, v15, v13, v14, v12}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v11, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    new-instance v12, Lcom/android/tools/r8/internal/lg0;

    const/4 v15, 0x4

    move-object v11, v12

    const/4 v14, 0x0

    new-array v13, v14, [Ljava/lang/String;

    const/16 v15, 0xb

    const-string v14, "integer"

    move-object/from16 v30, v0

    const-string v0, "INTEGER"

    invoke-direct {v12, v0, v15, v14, v13}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v12, Lcom/android/tools/r8/internal/lg0;->p:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    const/4 v15, 0x3

    move-object v12, v0

    const/4 v14, 0x0

    new-array v13, v14, [Ljava/lang/String;

    const/16 v15, 0xc

    const-string v14, "interpolator"

    move-object/from16 v31, v1

    const-string v1, "INTERPOLATOR"

    invoke-direct {v0, v1, v15, v14, v13}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->q:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    const/4 v1, 0x2

    move-object v13, v0

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/String;

    const/16 v14, 0xd

    const-string v1, "layout"

    move-object/from16 v32, v2

    const-string v2, "LAYOUT"

    invoke-direct {v0, v2, v14, v1, v15}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->r:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v14, v0

    new-array v15, v1, [Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "menu"

    move-object/from16 v33, v3

    const-string v3, "MENU"

    invoke-direct {v0, v3, v1, v2, v15}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->s:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    move-object v15, v0

    new-array v3, v1, [Ljava/lang/String;

    const/16 v2, 0xf

    const-string v1, "mipmap"

    move-object/from16 v35, v4

    const-string v4, "MIPMAP"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->t:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x10

    const-string v4, "navigation"

    const-string v1, "NAVIGATION"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->u:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v17, v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x11

    const-string v4, "plurals"

    const-string v1, "PLURALS"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->v:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v18, v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x12

    const-string v4, "raw"

    const-string v1, "RAW"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->w:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v19, v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x13

    const-string v4, "string"

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->x:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v20, v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v1, 0x14

    const-string v3, "style"

    const-string v4, "STYLE"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->y:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "STYLEABLE"

    const-string v3, "styleable"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/tools/r8/internal/lg0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->z:Lcom/android/tools/r8/internal/lg0;

    new-instance v1, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v22, v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/String;

    const/16 v2, 0x16

    move-object/from16 v36, v0

    const-string v0, "transition"

    move-object/from16 v37, v3

    const-string v3, "TRANSITION"

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/lg0;->A:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v23, v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x17

    const-string v4, "xml"

    const-string v1, "XML"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->B:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "PUBLIC"

    const-string v3, "public"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/tools/r8/internal/lg0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->C:Lcom/android/tools/r8/internal/lg0;

    new-instance v1, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v25, v1

    const-string v2, "AAPT"

    move-object/from16 v34, v0

    const-string v0, "_aapt"

    move-object/from16 v38, v3

    const/16 v3, 0x19

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/android/tools/r8/internal/lg0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/lg0;->D:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "OVERLAYABLE"

    const-string v3, "overlayable"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/tools/r8/internal/lg0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->E:Lcom/android/tools/r8/internal/lg0;

    new-instance v1, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v27, v1

    const-string v2, "STYLE_ITEM"

    move-object/from16 v39, v0

    const-string v0, "item"

    move-object/from16 v40, v3

    const/16 v3, 0x1b

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/android/tools/r8/internal/lg0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/lg0;->F:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v28, v0

    const-string v1, "SAMPLE_DATA"

    const-string v2, "sample"

    const/16 v3, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/tools/r8/internal/lg0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->G:Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "MACRO"

    const-string v3, "macro"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/tools/r8/internal/lg0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->H:Lcom/android/tools/r8/internal/lg0;

    move-object/from16 v47, v0

    move-object/from16 v48, v3

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v43, v34

    move-object/from16 v4, v35

    move-object/from16 v41, v36

    move-object/from16 v42, v37

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    move-object/from16 v46, v40

    const/16 v30, 0x0

    filled-new-array/range {v0 .. v29}, [Lcom/android/tools/r8/internal/lg0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->J:[Lcom/android/tools/r8/internal/lg0;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    const-string v2, "declare-styleable"

    move-object/from16 v3, v41

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object/from16 v2, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v4, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object/from16 v2, v45

    move-object/from16 v4, v46

    invoke-virtual {v0, v4, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-object/from16 v2, v47

    move-object/from16 v4, v48

    invoke-virtual {v0, v4, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    new-instance v2, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    move-object/from16 v1, v42

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    invoke-static {}, Lcom/android/tools/r8/internal/lg0;->values()[Lcom/android/tools/r8/internal/lg0;

    move-result-object v1

    array-length v3, v1

    move/from16 v15, v30

    :goto_0
    if-ge v15, v3, :cond_2

    aget-object v4, v1, v15

    iget v5, v4, Lcom/android/tools/r8/internal/lg0;->d:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/android/tools/r8/internal/lg0;->z:Lcom/android/tools/r8/internal/lg0;

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, Lcom/android/tools/r8/internal/lg0;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    iget-object v5, v4, Lcom/android/tools/r8/internal/lg0;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    iget-object v5, v4, Lcom/android/tools/r8/internal/lg0;->c:[Ljava/lang/String;

    array-length v7, v5

    move/from16 v8, v30

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    invoke-virtual {v0, v9, v4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/lg0;->I:Lcom/android/tools/r8/internal/nC;

    invoke-static {}, Lcom/android/tools/r8/internal/lg0;->values()[Lcom/android/tools/r8/internal/lg0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Zi1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Zi1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Ke;->a:Ljava/util/stream/Collector;

    sget-object v1, Lcom/android/tools/r8/internal/Je;->b:Ljava/util/stream/Collector;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p4, p0, Lcom/android/tools/r8/internal/lg0;->b:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/android/tools/r8/internal/lg0;->d:I

    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/internal/lg0;->c:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/android/tools/r8/internal/lg0;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/lg0;->d:I

    .line 4
    iput-object p4, p0, Lcom/android/tools/r8/internal/lg0;->c:[Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/android/tools/r8/internal/lg0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->J:[Lcom/android/tools/r8/internal/lg0;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/lg0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/lg0;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/lg0;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->h:Lcom/android/tools/r8/internal/lg0;

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/lg0;->H:Lcom/android/tools/r8/internal/lg0;

    if-ne p0, v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lg0;->b:Ljava/lang/String;

    return-object v0
.end method
