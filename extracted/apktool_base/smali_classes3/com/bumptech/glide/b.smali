.class public Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b$a;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "image_manager_disk_cache"

.field public static final o:Ljava/lang/String; = "Glide"

.field public static volatile p:Lcom/bumptech/glide/b;

.field public static volatile q:Z


# instance fields
.field public final b:Lcom/bumptech/glide/load/engine/j;

.field public final c:LF/e;

.field public final d:LG/j;

.field public final e:Lcom/bumptech/glide/d;

.field public final f:Lcom/bumptech/glide/Registry;

.field public final g:LF/b;

.field public final h:LR/l;

.field public final i:LR/d;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/k;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/bumptech/glide/b$a;

.field public l:Lcom/bumptech/glide/f;

.field public m:LI/b;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/j;LG/j;LF/e;LF/b;LR/l;LR/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 23
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LG/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LF/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LF/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # LR/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # LR/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/j;",
            "LG/j;",
            "LF/e;",
            "LF/b;",
            "LR/l;",
            "LR/d;",
            "I",
            "Lcom/bumptech/glide/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/l<",
            "**>;>;",
            "Ljava/util/List<",
            "LU/g<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    sget-object v4, Lcom/bumptech/glide/f;->NORMAL:Lcom/bumptech/glide/f;

    iput-object v4, v0, Lcom/bumptech/glide/b;->l:Lcom/bumptech/glide/f;

    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/bumptech/glide/b;->b:Lcom/bumptech/glide/load/engine/j;

    iput-object v1, v0, Lcom/bumptech/glide/b;->c:LF/e;

    iput-object v3, v0, Lcom/bumptech/glide/b;->g:LF/b;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/bumptech/glide/b;->d:LG/j;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/bumptech/glide/b;->h:LR/l;

    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/bumptech/glide/b;->i:LR/d;

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/b$a;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Lcom/bumptech/glide/Registry;

    invoke-direct {v5}, Lcom/bumptech/glide/Registry;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/Registry;

    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;-><init>()V

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/Registry;->u(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_0

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/t;

    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/bitmap/t;-><init>()V

    invoke-virtual {v5, v8}, Lcom/bumptech/glide/Registry;->u(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;

    :cond_0
    invoke-virtual {v5}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object v8

    new-instance v10, LP/a;

    invoke-direct {v10, v2, v8, v1, v3}, LP/a;-><init>(Landroid/content/Context;Ljava/util/List;LF/e;LF/b;)V

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/J;->h(LF/e;)LC/j;

    move-result-object v11

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/q;

    invoke-virtual {v5}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-direct {v12, v13, v14, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/q;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;LF/e;LF/b;)V

    if-eqz p13, :cond_1

    const/16 v13, 0x1c

    if-lt v7, v13, :cond_1

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/y;

    invoke-direct {v13}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>()V

    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v14}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v14, v12}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>(Lcom/bumptech/glide/load/resource/bitmap/q;)V

    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/E;

    invoke-direct {v13, v12, v3}, Lcom/bumptech/glide/load/resource/bitmap/E;-><init>(Lcom/bumptech/glide/load/resource/bitmap/q;LF/b;)V

    :goto_0
    new-instance v15, LN/e;

    invoke-direct {v15, v2}, LN/e;-><init>(Landroid/content/Context;)V

    new-instance v6, LJ/s$c;

    invoke-direct {v6, v4}, LJ/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v9, LJ/s$d;

    invoke-direct {v9, v4}, LJ/s$d;-><init>(Landroid/content/res/Resources;)V

    new-instance v0, LJ/s$b;

    invoke-direct {v0, v4}, LJ/s$b;-><init>(Landroid/content/res/Resources;)V

    move/from16 p3, v7

    new-instance v7, LJ/s$a;

    invoke-direct {v7, v4}, LJ/s$a;-><init>(Landroid/content/res/Resources;)V

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(LF/b;)V

    move-object/from16 p6, v7

    new-instance v7, LQ/a;

    invoke-direct {v7}, LQ/a;-><init>()V

    move-object/from16 p7, v7

    new-instance v7, LQ/d;

    invoke-direct {v7}, LQ/d;-><init>()V

    move-object/from16 p13, v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v16, v7

    new-instance v7, LJ/c;

    invoke-direct {v7}, LJ/c;-><init>()V

    move-object/from16 v17, v9

    const-class v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v9, v7}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;LC/d;)Lcom/bumptech/glide/Registry;

    move-result-object v7

    move-object/from16 v18, v0

    new-instance v0, LJ/t;

    invoke-direct {v0, v3}, LJ/t;-><init>(LF/b;)V

    move-object/from16 v19, v6

    const-class v6, Ljava/io/InputStream;

    invoke-virtual {v7, v6, v0}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;LC/d;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-string v7, "Bitmap"

    move-object/from16 v20, v15

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v9, v15, v14}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, v7, v6, v15, v13}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    invoke-static {}, LD/m;->b()Z

    move-result v0

    const-class v3, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/A;

    invoke-direct {v0, v12}, Lcom/bumptech/glide/load/resource/bitmap/A;-><init>(Lcom/bumptech/glide/load/resource/bitmap/q;)V

    invoke-virtual {v5, v7, v3, v15, v0}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    :cond_2
    invoke-virtual {v5, v7, v3, v15, v11}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/J;->c(LF/e;)LC/j;

    move-result-object v12

    move-object/from16 v21, v5

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v7, v5, v15, v12}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-static {}, LJ/v$a;->b()LJ/v$a;

    move-result-object v12

    invoke-virtual {v0, v15, v15, v12}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/G;

    invoke-direct {v12}, Lcom/bumptech/glide/load/resource/bitmap/G;-><init>()V

    invoke-virtual {v0, v7, v15, v15, v12}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, v15, v2}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;LC/k;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v12, v4, v14}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;LC/j;)V

    const-string v14, "BitmapDrawable"

    move-object/from16 v22, v5

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v14, v9, v5, v12}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v12, v4, v13}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;LC/j;)V

    invoke-virtual {v0, v14, v6, v5, v12}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v12, v4, v11}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;LC/j;)V

    invoke-virtual {v0, v14, v3, v5, v12}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v11, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(LF/e;LC/k;)V

    invoke-virtual {v0, v5, v11}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;LC/k;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, LP/j;

    move-object v11, v3

    move-object/from16 v3, p5

    invoke-direct {v2, v8, v10, v3}, LP/j;-><init>(Ljava/util/List;LC/j;LF/b;)V

    const-string v8, "Gif"

    const-class v12, LP/c;

    invoke-virtual {v0, v8, v6, v12, v2}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v12, v10}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, LP/d;

    invoke-direct {v2}, LP/d;-><init>()V

    invoke-virtual {v0, v12, v2}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;LC/k;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-static {}, LJ/v$a;->b()LJ/v$a;

    move-result-object v2

    const-class v8, LB/a;

    invoke-virtual {v0, v8, v8, v2}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, LP/h;

    invoke-direct {v2, v1}, LP/h;-><init>(LF/e;)V

    invoke-virtual {v0, v7, v8, v15, v2}, Lcom/bumptech/glide/Registry;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v7, Landroid/graphics/drawable/Drawable;

    move-object/from16 v8, v20

    invoke-virtual {v0, v2, v7, v8}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/B;

    invoke-direct {v10, v8, v1}, Lcom/bumptech/glide/load/resource/bitmap/B;-><init>(LN/e;LF/e;)V

    invoke-virtual {v0, v2, v15, v10}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v8, LM/a$a;

    invoke-direct {v8}, LM/a$a;-><init>()V

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/Registry;->t(LD/e$a;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v8, LJ/d$b;

    invoke-direct {v8}, LJ/d$b;-><init>()V

    const-class v10, Ljava/io/File;

    invoke-virtual {v0, v10, v9, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v8, LJ/f$e;

    invoke-direct {v8}, LJ/f$e;-><init>()V

    invoke-virtual {v0, v10, v6, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v8, LO/a;

    invoke-direct {v8}, LO/a;-><init>()V

    invoke-virtual {v0, v10, v10, v8}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v8, LJ/f$b;

    invoke-direct {v8}, LJ/f$b;-><init>()V

    invoke-virtual {v0, v10, v11, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-static {}, LJ/v$a;->b()LJ/v$a;

    move-result-object v8

    invoke-virtual {v0, v10, v10, v8}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v8, LD/k$a;

    invoke-direct {v8, v3}, LD/k$a;-><init>(LF/b;)V

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/Registry;->t(LD/e$a;)Lcom/bumptech/glide/Registry;

    invoke-static {}, LD/m;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, LD/m$a;

    invoke-direct {v0}, LD/m$a;-><init>()V

    move-object/from16 v8, v21

    invoke-virtual {v8, v0}, Lcom/bumptech/glide/Registry;->t(LD/e$a;)Lcom/bumptech/glide/Registry;

    goto :goto_1

    :cond_3
    move-object/from16 v8, v21

    :goto_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v13, v19

    invoke-virtual {v8, v0, v6, v13}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v14

    move-object/from16 v3, v18

    invoke-virtual {v14, v0, v11, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v14

    move-object/from16 v18, v12

    const-class v12, Ljava/lang/Integer;

    invoke-virtual {v14, v12, v6, v13}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v13

    invoke-virtual {v13, v12, v11, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    move-object/from16 v13, v17

    invoke-virtual {v3, v12, v2, v13}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    move-object/from16 v14, p6

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1, v14}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    invoke-virtual {v3, v12, v1, v14}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v13}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LJ/e$c;

    invoke-direct {v3}, LJ/e$c;-><init>()V

    const-class v12, Ljava/lang/String;

    invoke-virtual {v0, v12, v6, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LJ/e$c;

    invoke-direct {v3}, LJ/e$c;-><init>()V

    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LJ/u$c;

    invoke-direct {v3}, LJ/u$c;-><init>()V

    invoke-virtual {v0, v12, v6, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LJ/u$b;

    invoke-direct {v3}, LJ/u$b;-><init>()V

    invoke-virtual {v0, v12, v11, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LJ/u$a;

    invoke-direct {v3}, LJ/u$a;-><init>()V

    invoke-virtual {v0, v12, v1, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LK/c$a;

    invoke-direct {v3}, LK/c$a;-><init>()V

    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LJ/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-direct {v3, v12}, LJ/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LJ/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-direct {v3, v12}, LJ/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v11, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LK/d$a;

    move-object/from16 v12, p1

    invoke-direct {v3, v12}, LK/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v3, LK/e$a;

    invoke-direct {v3, v12}, LK/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    const/16 v0, 0x1d

    move/from16 v3, p3

    if-lt v3, v0, :cond_4

    new-instance v0, LK/f$c;

    invoke-direct {v0, v12}, LK/f$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2, v6, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    new-instance v0, LK/f$b;

    invoke-direct {v0, v12}, LK/f$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2, v11, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    :cond_4
    new-instance v0, LJ/w$d;

    move-object/from16 v3, v16

    invoke-direct {v0, v3}, LJ/w$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v8, v2, v6, v0}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v13, LJ/w$b;

    invoke-direct {v13, v3}, LJ/w$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2, v11, v13}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v11, LJ/w$a;

    invoke-direct {v11, v3}, LJ/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2, v1, v11}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LJ/x$a;

    invoke-direct {v1}, LJ/x$a;-><init>()V

    invoke-virtual {v0, v2, v6, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LK/i$a;

    invoke-direct {v1}, LK/i$a;-><init>()V

    const-class v3, Ljava/net/URL;

    invoke-virtual {v0, v3, v6, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LJ/k$a;

    invoke-direct {v1, v12}, LJ/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v10, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LK/b$a;

    invoke-direct {v1}, LK/b$a;-><init>()V

    const-class v3, LJ/g;

    invoke-virtual {v0, v3, v6, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LJ/b$a;

    invoke-direct {v1}, LJ/b$a;-><init>()V

    const-class v3, [B

    invoke-virtual {v0, v3, v9, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LJ/b$d;

    invoke-direct {v1}, LJ/b$d;-><init>()V

    invoke-virtual {v0, v3, v6, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-static {}, LJ/v$a;->b()LJ/v$a;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-static {}, LJ/v$a;->b()LJ/v$a;

    move-result-object v1

    invoke-virtual {v0, v7, v7, v1}, Lcom/bumptech/glide/Registry;->d(Ljava/lang/Class;Ljava/lang/Class;LJ/o;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LN/f;

    invoke-direct {v1}, LN/f;-><init>()V

    invoke-virtual {v0, v7, v7, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v1, LQ/b;

    invoke-direct {v1, v4}, LQ/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v15, v5, v1}, Lcom/bumptech/glide/Registry;->x(Ljava/lang/Class;Ljava/lang/Class;LQ/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-virtual {v0, v15, v3, v1}, Lcom/bumptech/glide/Registry;->x(Ljava/lang/Class;Ljava/lang/Class;LQ/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    new-instance v2, LQ/c;

    move-object/from16 v6, p4

    move-object/from16 v10, p13

    invoke-direct {v2, v6, v1, v10}, LQ/c;-><init>(LF/e;LQ/e;LQ/e;)V

    invoke-virtual {v0, v7, v3, v2}, Lcom/bumptech/glide/Registry;->x(Ljava/lang/Class;Ljava/lang/Class;LQ/e;)Lcom/bumptech/glide/Registry;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v10}, Lcom/bumptech/glide/Registry;->x(Ljava/lang/Class;Ljava/lang/Class;LQ/e;)Lcom/bumptech/glide/Registry;

    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/J;->d(LF/e;)LC/j;

    move-result-object v0

    invoke-virtual {v8, v9, v15, v0}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v1, v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;LC/j;)V

    invoke-virtual {v8, v9, v5, v1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;LC/j;)Lcom/bumptech/glide/Registry;

    new-instance v5, LV/k;

    invoke-direct {v5}, LV/k;-><init>()V

    new-instance v0, Lcom/bumptech/glide/d;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/d;-><init>(Landroid/content/Context;LF/b;Lcom/bumptech/glide/Registry;LV/k;Lcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/engine/j;ZI)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/d;

    return-void
.end method

.method public static B(Landroid/app/Activity;)Lcom/bumptech/glide/k;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/b;->o(Landroid/content/Context;)LR/l;

    move-result-object v0

    invoke-virtual {v0, p0}, LR/l;->i(Landroid/app/Activity;)Lcom/bumptech/glide/k;

    move-result-object p0

    return-object p0
.end method

.method public static C(Landroid/app/Fragment;)Lcom/bumptech/glide/k;
    .locals 1
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->o(Landroid/content/Context;)LR/l;

    move-result-object v0

    invoke-virtual {v0, p0}, LR/l;->j(Landroid/app/Fragment;)Lcom/bumptech/glide/k;

    move-result-object p0

    return-object p0
.end method

.method public static D(Landroid/content/Context;)Lcom/bumptech/glide/k;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/b;->o(Landroid/content/Context;)LR/l;

    move-result-object v0

    invoke-virtual {v0, p0}, LR/l;->k(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/view/View;)Lcom/bumptech/glide/k;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->o(Landroid/content/Context;)LR/l;

    move-result-object v0

    invoke-virtual {v0, p0}, LR/l;->l(Landroid/view/View;)Lcom/bumptech/glide/k;

    move-result-object p0

    return-object p0
.end method

.method public static F(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/k;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->o(Landroid/content/Context;)LR/l;

    move-result-object v0

    invoke-virtual {v0, p0}, LR/l;->m(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/k;

    move-result-object p0

    return-object p0
.end method

.method public static G(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/k;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/b;->o(Landroid/content/Context;)LR/l;

    move-result-object v0

    invoke-virtual {v0, p0}, LR/l;->n(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/k;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    sget-boolean v0, Lcom/bumptech/glide/b;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/b;->q:Z

    invoke-static {p0, p1}, Lcom/bumptech/glide/b;->r(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/bumptech/glide/b;->q:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/b;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    invoke-static {p0}, Lcom/bumptech/glide/b;->y(Ljava/lang/Exception;)V

    goto :goto_4

    :goto_1
    invoke-static {p0}, Lcom/bumptech/glide/b;->y(Ljava/lang/Exception;)V

    goto :goto_4

    :goto_2
    invoke-static {p0}, Lcom/bumptech/glide/b;->y(Ljava/lang/Exception;)V

    goto :goto_4

    :goto_3
    invoke-static {p0}, Lcom/bumptech/glide/b;->y(Ljava/lang/Exception;)V

    goto :goto_4

    :catch_4
    const/4 p0, 0x5

    const-string v0, "Glide"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_4
    const/4 p0, 0x0

    :goto_5
    return-object p0
.end method

.method public static k(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Glide"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public static o(Landroid/content/Context;)LR/l;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, LY/k;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/b;->n()LR/l;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;Lcom/bumptech/glide/c;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    move-result-object v0

    const-class v1, Lcom/bumptech/glide/b;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/bumptech/glide/b;->x()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/b;->s(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized q(Lcom/bumptech/glide/b;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bumptech/glide/b;->x()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sput-object p0, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static r(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    new-instance v0, Lcom/bumptech/glide/c;

    invoke-direct {v0}, Lcom/bumptech/glide/c;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/b;->s(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    return-void
.end method

.method public static s(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LS/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, LS/e;

    invoke-direct {v0, p0}, LS/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, LS/e;->a()Ljava/util/List;

    move-result-object v0

    :cond_1
    const/4 v1, 0x3

    const-string v2, "Glide"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LS/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LS/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e()LR/l$b;

    move-result-object v1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->t(LR/l$b;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS/c;

    invoke-interface {v2, p0, p1}, LS/c;->a(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2, p0, p1}, LS/a;->a(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    :cond_8
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS/c;

    :try_start_0
    iget-object v2, p1, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/Registry;

    invoke-interface {v1, p0, p1, v2}, LS/c;->b(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/Registry;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    iget-object v0, p1, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/Registry;

    invoke-virtual {p2, p0, p1, v0}, LS/d;->b(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/Registry;)V

    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object p1, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    return-void
.end method

.method public static declared-synchronized x()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/bumptech/glide/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    invoke-virtual {v1}, Lcom/bumptech/glide/b;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v1, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;

    iget-object v1, v1, Lcom/bumptech/glide/b;->b:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/j;->m()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/bumptech/glide/b;->p:Lcom/bumptech/glide/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static y(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public A(Lcom/bumptech/glide/k;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    invoke-static {}, LY/m;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j;->e()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, LY/m;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->d:LG/j;

    invoke-interface {v0}, LG/j;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:LF/e;

    invoke-interface {v0}, LF/e;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->g:LF/b;

    invoke-interface {v0}, LF/b;->b()V

    return-void
.end method

.method public f()LF/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->g:LF/b;

    return-object v0
.end method

.method public g()LF/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:LF/e;

    return-object v0
.end method

.method public h()LR/d;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/b;->i:LR/d;

    return-object v0
.end method

.method public i()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/d;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public m()Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/Registry;

    return-object v0
.end method

.method public n()LR/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->h:LR/l;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/b;->c()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->z(I)V

    return-void
.end method

.method public varargs declared-synchronized t([LI/d$a;)V
    .locals 4
    .param p1    # [LI/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/b;->m:LI/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/b;->k:Lcom/bumptech/glide/b$a;

    invoke-interface {v0}, Lcom/bumptech/glide/b$a;->build()LU/h;

    move-result-object v0

    invoke-virtual {v0}, LU/a;->H()LC/h;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/q;->g:LC/g;

    invoke-virtual {v0, v1}, LC/h;->a(LC/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/b;

    new-instance v1, LI/b;

    iget-object v2, p0, Lcom/bumptech/glide/b;->d:LG/j;

    iget-object v3, p0, Lcom/bumptech/glide/b;->c:LF/e;

    invoke-direct {v1, v2, v3, v0}, LI/b;-><init>(LG/j;LF/e;LC/b;)V

    iput-object v1, p0, Lcom/bumptech/glide/b;->m:LI/b;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/b;->m:LI/b;

    invoke-virtual {v0, p1}, LI/b;->c([LI/d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public u(Lcom/bumptech/glide/k;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v(LV/p;)Z
    .locals 3
    .param p1    # LV/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/p<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/k;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/k;->X(LV/p;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;
    .locals 2
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, LY/m;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->d:LG/j;

    invoke-virtual {p1}, Lcom/bumptech/glide/f;->a()F

    move-result v1

    invoke-interface {v0, v1}, LG/j;->c(F)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:LF/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/f;->a()F

    move-result v1

    invoke-interface {v0, v1}, LF/e;->c(F)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->l:Lcom/bumptech/glide/f;

    iput-object p1, p0, Lcom/bumptech/glide/b;->l:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public z(I)V
    .locals 2

    invoke-static {}, LY/m;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/k;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/k;->onTrimMemory(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b;->d:LG/j;

    invoke-interface {v0, p1}, LG/j;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:LF/e;

    invoke-interface {v0, p1}, LF/e;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->g:LF/b;

    invoke-interface {v0, p1}, LF/b;->a(I)V

    return-void
.end method
