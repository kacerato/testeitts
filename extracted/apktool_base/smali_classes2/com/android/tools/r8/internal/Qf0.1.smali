.class public final enum Lcom/android/tools/r8/internal/Qf0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum d:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum e:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum f:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum g:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum h:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum i:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum j:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum k:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum l:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum m:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum n:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum o:Lcom/android/tools/r8/internal/Qf0;

.field public static final enum p:Lcom/android/tools/r8/internal/Qf0;

.field public static final q:Ljava/util/HashMap;

.field public static final synthetic r:[Lcom/android/tools/r8/internal/Qf0;

.field public static final synthetic s:Z = true


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/tools/r8/internal/Qf0;

    const-string v1, "ANIM"

    const-string v2, "anim"

    const/4 v14, 0x0

    invoke-direct {v0, v14, v1, v2}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Qf0;->c:Lcom/android/tools/r8/internal/Qf0;

    new-instance v1, Lcom/android/tools/r8/internal/Qf0;

    const-string v2, "ANIMATOR"

    const-string v3, "animator"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/Qf0;->d:Lcom/android/tools/r8/internal/Qf0;

    new-instance v2, Lcom/android/tools/r8/internal/Qf0;

    const-string v3, "COLOR"

    const-string v4, "color"

    const/4 v15, 0x2

    invoke-direct {v2, v15, v3, v4}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/Qf0;->e:Lcom/android/tools/r8/internal/Qf0;

    new-instance v3, Lcom/android/tools/r8/internal/Qf0;

    const-string v4, "DRAWABLE"

    const-string v5, "drawable"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/Qf0;->f:Lcom/android/tools/r8/internal/Qf0;

    new-instance v4, Lcom/android/tools/r8/internal/Qf0;

    const-string v5, "FONT"

    const-string v6, "font"

    const/4 v7, 0x4

    invoke-direct {v4, v7, v5, v6}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/Qf0;->g:Lcom/android/tools/r8/internal/Qf0;

    new-instance v5, Lcom/android/tools/r8/internal/Qf0;

    const-string v6, "INTERPOLATOR"

    const-string v7, "interpolator"

    const/4 v8, 0x5

    invoke-direct {v5, v8, v6, v7}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/Qf0;->h:Lcom/android/tools/r8/internal/Qf0;

    new-instance v6, Lcom/android/tools/r8/internal/Qf0;

    const-string v7, "LAYOUT"

    const-string v8, "layout"

    const/4 v9, 0x6

    invoke-direct {v6, v9, v7, v8}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/internal/Qf0;->i:Lcom/android/tools/r8/internal/Qf0;

    new-instance v7, Lcom/android/tools/r8/internal/Qf0;

    const-string v8, "MENU"

    const-string v9, "menu"

    const/4 v10, 0x7

    invoke-direct {v7, v10, v8, v9}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/internal/Qf0;->j:Lcom/android/tools/r8/internal/Qf0;

    new-instance v8, Lcom/android/tools/r8/internal/Qf0;

    const-string v9, "MIPMAP"

    const-string v10, "mipmap"

    const/16 v11, 0x8

    invoke-direct {v8, v11, v9, v10}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/android/tools/r8/internal/Qf0;->k:Lcom/android/tools/r8/internal/Qf0;

    new-instance v9, Lcom/android/tools/r8/internal/Qf0;

    const-string v10, "NAVIGATION"

    const-string v11, "navigation"

    const/16 v12, 0x9

    invoke-direct {v9, v12, v10, v11}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/android/tools/r8/internal/Qf0;->l:Lcom/android/tools/r8/internal/Qf0;

    new-instance v10, Lcom/android/tools/r8/internal/Qf0;

    const-string v11, "RAW"

    const-string v12, "raw"

    const/16 v13, 0xa

    invoke-direct {v10, v13, v11, v12}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/android/tools/r8/internal/Qf0;->m:Lcom/android/tools/r8/internal/Qf0;

    new-instance v11, Lcom/android/tools/r8/internal/Qf0;

    const-string v12, "TRANSITION"

    const-string v13, "transition"

    const/16 v14, 0xb

    invoke-direct {v11, v14, v12, v13}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/android/tools/r8/internal/Qf0;->n:Lcom/android/tools/r8/internal/Qf0;

    new-instance v12, Lcom/android/tools/r8/internal/Qf0;

    const-string v13, "VALUES"

    const-string v14, "values"

    const/16 v15, 0xc

    invoke-direct {v12, v15, v13, v14}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/android/tools/r8/internal/Qf0;->o:Lcom/android/tools/r8/internal/Qf0;

    new-instance v13, Lcom/android/tools/r8/internal/Qf0;

    const-string v14, "XML"

    const-string v15, "xml"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v12, v14, v15}, Lcom/android/tools/r8/internal/Qf0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/android/tools/r8/internal/Qf0;->p:Lcom/android/tools/r8/internal/Qf0;

    move-object/from16 v12, v16

    filled-new-array/range {v0 .. v13}, [Lcom/android/tools/r8/internal/Qf0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Qf0;->r:[Lcom/android/tools/r8/internal/Qf0;

    invoke-static {}, Lcom/android/tools/r8/internal/Qf0;->values()[Lcom/android/tools/r8/internal/Qf0;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/android/tools/r8/internal/Qf0;->q:Ljava/util/HashMap;

    array-length v1, v0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v1, :cond_0

    aget-object v2, v0, v14

    sget-object v3, Lcom/android/tools/r8/internal/Qf0;->q:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/tools/r8/internal/Qf0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/Qf0;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Qf0;
    .locals 4

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Qf0;->s:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/Qf0;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Qf0;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/internal/Qf0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Qf0;->r:[Lcom/android/tools/r8/internal/Qf0;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/Qf0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/Qf0;

    return-object v0
.end method
