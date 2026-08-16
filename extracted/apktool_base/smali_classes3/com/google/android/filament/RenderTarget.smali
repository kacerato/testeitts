.class public Lcom/google/android/filament/RenderTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderTarget$b;,
        Lcom/google/android/filament/RenderTarget$a;
    }
.end annotation


# static fields
.field public static final c:I

.field public static final d:[Lcom/google/android/filament/Texture$c;


# instance fields
.field public a:J

.field public final b:[Lcom/google/android/filament/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/RenderTarget$a;->values()[Lcom/google/android/filament/RenderTarget$a;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/google/android/filament/RenderTarget;->c:I

    invoke-static {}, Lcom/google/android/filament/Texture$c;->values()[Lcom/google/android/filament/Texture$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/RenderTarget;->d:[Lcom/google/android/filament/Texture$c;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/filament/RenderTarget$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget v0, Lcom/google/android/filament/RenderTarget;->c:I

    new-array v1, v0, [Lcom/google/android/filament/Texture;

    iput-object v1, p0, Lcom/google/android/filament/RenderTarget;->b:[Lcom/google/android/filament/Texture;

    .line 4
    iput-wide p1, p0, Lcom/google/android/filament/RenderTarget;->a:J

    .line 5
    invoke-static {p3}, Lcom/google/android/filament/RenderTarget$b;->a(Lcom/google/android/filament/RenderTarget$b;)[Lcom/google/android/filament/Texture;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/RenderTarget$b;Lcom/google/android/filament/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;-><init>(JLcom/google/android/filament/RenderTarget$b;)V

    return-void
.end method

.method public static bridge synthetic a()I
    .locals 1

    sget v0, Lcom/google/android/filament/RenderTarget;->c:I

    return v0
.end method

.method public static bridge synthetic b(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderFace(JII)V

    return-void
.end method

.method public static bridge synthetic d(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderLayer(JII)V

    return-void
.end method

.method public static bridge synthetic e(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderTarget;->nBuilderMipLevel(JII)V

    return-void
.end method

.method public static bridge synthetic f(JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderTarget;->nBuilderTexture(JIJ)V

    return-void
.end method

.method public static bridge synthetic g()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/RenderTarget;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic h(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/RenderTarget;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderFace(JII)V
.end method

.method private static native nBuilderLayer(JII)V
.end method

.method private static native nBuilderMipLevel(JII)V
.end method

.method private static native nBuilderTexture(JIJ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetFace(JI)I
.end method

.method private static native nGetLayer(JI)I
.end method

.method private static native nGetMipLevel(JI)I
.end method


# virtual methods
.method public i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/RenderTarget;->a:J

    return-void
.end method

.method public j(Lcom/google/android/filament/RenderTarget$a;)Lcom/google/android/filament/Texture$c;
    .locals 3

    sget-object v0, Lcom/google/android/filament/RenderTarget;->d:[Lcom/google/android/filament/Texture$c;

    invoke-virtual {p0}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/google/android/filament/RenderTarget;->nGetFace(JI)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public k(Lcom/google/android/filament/RenderTarget$a;)I
    .locals 2
    .param p1    # Lcom/google/android/filament/RenderTarget$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderTarget;->nGetLayer(JI)I

    move-result p1

    return p1
.end method

.method public l(Lcom/google/android/filament/RenderTarget$a;)I
    .locals 2
    .param p1    # Lcom/google/android/filament/RenderTarget$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderTarget;->nGetMipLevel(JI)I

    move-result p1

    return p1
.end method

.method public m()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/RenderTarget;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed RenderTarget"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(Lcom/google/android/filament/RenderTarget$a;)Lcom/google/android/filament/Texture;
    .locals 1
    .param p1    # Lcom/google/android/filament/RenderTarget$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/RenderTarget;->b:[Lcom/google/android/filament/Texture;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
