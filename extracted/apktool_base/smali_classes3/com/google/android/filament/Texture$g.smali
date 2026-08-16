.class public Lcom/google/android/filament/Texture$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/nio/Buffer;

.field public b:Lcom/google/android/filament/Texture$k;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/google/android/filament/Texture$e;

.field public h:I

.field public i:Lcom/google/android/filament/Texture$b;

.field public j:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V
    .locals 10
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;I)V
    .locals 10
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;III)V
    .locals 10
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 13
    invoke-direct/range {v0 .. v9}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;IIIILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    .line 3
    iput p5, p0, Lcom/google/android/filament/Texture$g;->d:I

    .line 4
    iput p6, p0, Lcom/google/android/filament/Texture$g;->e:I

    .line 5
    iput-object p3, p0, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    .line 6
    iput p4, p0, Lcom/google/android/filament/Texture$g;->c:I

    .line 7
    iput p7, p0, Lcom/google/android/filament/Texture$g;->f:I

    .line 8
    iput-object p2, p0, Lcom/google/android/filament/Texture$g;->g:Lcom/google/android/filament/Texture$e;

    .line 9
    iput-object p8, p0, Lcom/google/android/filament/Texture$g;->j:Ljava/lang/Object;

    .line 10
    iput-object p9, p0, Lcom/google/android/filament/Texture$g;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/android/filament/Texture$b;I)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/google/android/filament/Texture$g;->c:I

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/google/android/filament/Texture$g;->d:I

    .line 17
    iput v1, p0, Lcom/google/android/filament/Texture$g;->e:I

    .line 18
    iput v1, p0, Lcom/google/android/filament/Texture$g;->f:I

    .line 19
    iput-object p1, p0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    .line 20
    sget-object p1, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    iput-object p1, p0, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    .line 21
    iput v0, p0, Lcom/google/android/filament/Texture$g;->c:I

    .line 22
    iput-object p2, p0, Lcom/google/android/filament/Texture$g;->i:Lcom/google/android/filament/Texture$b;

    .line 23
    iput p3, p0, Lcom/google/android/filament/Texture$g;->h:I

    return-void
.end method

.method public static a(Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;III)I
    .locals 2
    .param p0    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x8L
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported format enum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    move p0, v1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_3
    move p0, v0

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    :pswitch_5
    move v0, p0

    goto :goto_1

    :pswitch_6
    move v0, v1

    goto :goto_1

    :pswitch_7
    mul-int/lit8 v0, p0, 0x4

    goto :goto_1

    :pswitch_8
    mul-int/lit8 v0, p0, 0x2

    :goto_1
    :pswitch_9
    mul-int/2addr v0, p2

    add-int/lit8 p0, p4, -0x1

    add-int/2addr v0, p0

    neg-int p0, p4

    and-int/2addr p0, v0

    mul-int/2addr p0, p3

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/Texture$g;->j:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/filament/Texture$g;->k:Ljava/lang/Runnable;

    return-void
.end method
