.class public Lcom/google/android/filament/Texture$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lcom/google/android/filament/Texture$k;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lcom/google/android/filament/Texture$e;

.field public j:I

.field public k:Lcom/google/android/filament/Texture$b;

.field public l:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JILcom/google/android/filament/Texture$b;)V
    .locals 7
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/Texture$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/Texture$d;-><init>(JILcom/google/android/filament/Texture$b;Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(JILcom/google/android/filament/Texture$b;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/Texture$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/google/android/filament/Texture$d;->e:I

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/google/android/filament/Texture$d;->f:I

    .line 15
    iput v1, p0, Lcom/google/android/filament/Texture$d;->g:I

    .line 16
    iput v1, p0, Lcom/google/android/filament/Texture$d;->h:I

    .line 17
    iput-wide p1, p0, Lcom/google/android/filament/Texture$d;->a:J

    .line 18
    iput p3, p0, Lcom/google/android/filament/Texture$d;->b:I

    .line 19
    sget-object p1, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    iput-object p1, p0, Lcom/google/android/filament/Texture$d;->d:Lcom/google/android/filament/Texture$k;

    .line 20
    iput v0, p0, Lcom/google/android/filament/Texture$d;->e:I

    .line 21
    iput-object p4, p0, Lcom/google/android/filament/Texture$d;->k:Lcom/google/android/filament/Texture$b;

    .line 22
    iput p3, p0, Lcom/google/android/filament/Texture$d;->j:I

    .line 23
    iput-object p5, p0, Lcom/google/android/filament/Texture$d;->l:Ljava/lang/Object;

    .line 24
    iput-object p6, p0, Lcom/google/android/filament/Texture$d;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V
    .locals 12
    .param p4    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 26
    invoke-direct/range {v0 .. v11}, Lcom/google/android/filament/Texture$d;-><init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;I)V
    .locals 12
    .param p4    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 27
    invoke-direct/range {v0 .. v11}, Lcom/google/android/filament/Texture$d;-><init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;III)V
    .locals 12
    .param p4    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 28
    invoke-direct/range {v0 .. v11}, Lcom/google/android/filament/Texture$d;-><init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(JILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p4    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/filament/Texture$d;->a:J

    .line 3
    iput p3, p0, Lcom/google/android/filament/Texture$d;->b:I

    .line 4
    iput p7, p0, Lcom/google/android/filament/Texture$d;->f:I

    .line 5
    iput p8, p0, Lcom/google/android/filament/Texture$d;->g:I

    .line 6
    iput-object p5, p0, Lcom/google/android/filament/Texture$d;->d:Lcom/google/android/filament/Texture$k;

    .line 7
    iput p6, p0, Lcom/google/android/filament/Texture$d;->e:I

    .line 8
    iput p9, p0, Lcom/google/android/filament/Texture$d;->h:I

    .line 9
    iput-object p4, p0, Lcom/google/android/filament/Texture$d;->i:Lcom/google/android/filament/Texture$e;

    .line 10
    iput-object p10, p0, Lcom/google/android/filament/Texture$d;->l:Ljava/lang/Object;

    .line 11
    iput-object p11, p0, Lcom/google/android/filament/Texture$d;->m:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/Texture$d;->l:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/filament/Texture$d;->m:Ljava/lang/Runnable;

    return-void
.end method
