.class public Lcom/google/android/filament/TextureSampler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/TextureSampler$e;,
        Lcom/google/android/filament/TextureSampler$d;,
        Lcom/google/android/filament/TextureSampler$f;,
        Lcom/google/android/filament/TextureSampler$a;,
        Lcom/google/android/filament/TextureSampler$b;,
        Lcom/google/android/filament/TextureSampler$c;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v1, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    sget-object v2, Lcom/google/android/filament/TextureSampler$f;->REPEAT:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$b;)V
    .locals 1
    .param p1    # Lcom/google/android/filament/TextureSampler$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    sget-object v0, Lcom/google/android/filament/TextureSampler$a;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$a;

    invoke-direct {p0, p1, v0}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$b;Lcom/google/android/filament/TextureSampler$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$b;Lcom/google/android/filament/TextureSampler$a;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/TextureSampler$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/TextureSampler$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/filament/TextureSampler;->nCreateCompareSampler(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$d;)V
    .locals 1
    .param p1    # Lcom/google/android/filament/TextureSampler$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {p0, p1, v0}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V
    .locals 1
    .param p1    # Lcom/google/android/filament/TextureSampler$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/TextureSampler$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/google/android/filament/TextureSampler;->i(Lcom/google/android/filament/TextureSampler$d;)Lcom/google/android/filament/TextureSampler$e;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V
    .locals 6
    .param p1    # Lcom/google/android/filament/TextureSampler$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/TextureSampler$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/TextureSampler$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/TextureSampler$f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/TextureSampler$f;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/TextureSampler$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/TextureSampler$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/TextureSampler$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/TextureSampler$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/TextureSampler$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 8
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/filament/TextureSampler;->nCreateSampler(IIIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public static i(Lcom/google/android/filament/TextureSampler$d;)Lcom/google/android/filament/TextureSampler$e;
    .locals 0
    .param p0    # Lcom/google/android/filament/TextureSampler$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/filament/TextureSampler$e;->NEAREST:Lcom/google/android/filament/TextureSampler$e;

    return-object p0
.end method

.method private static native nCreateCompareSampler(II)J
.end method

.method private static native nCreateSampler(IIIII)J
.end method

.method private static native nGetAnisotropy(J)F
.end method

.method private static native nGetCompareFunction(J)I
.end method

.method private static native nGetCompareMode(J)I
.end method

.method private static native nGetMagFilter(J)I
.end method

.method private static native nGetMinFilter(J)I
.end method

.method private static native nGetWrapModeR(J)I
.end method

.method private static native nGetWrapModeS(J)I
.end method

.method private static native nGetWrapModeT(J)I
.end method

.method private static native nSetAnisotropy(JF)J
.end method

.method private static native nSetCompareFunction(JI)J
.end method

.method private static native nSetCompareMode(JI)J
.end method

.method private static native nSetMagFilter(JI)J
.end method

.method private static native nSetMinFilter(JI)J
.end method

.method private static native nSetWrapModeR(JI)J
.end method

.method private static native nSetWrapModeS(JI)J
.end method

.method private static native nSetWrapModeT(JI)J
.end method


# virtual methods
.method public a()F
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/TextureSampler;->nGetAnisotropy(J)F

    move-result v0

    return v0
.end method

.method public b()Lcom/google/android/filament/TextureSampler$a;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->e:[Lcom/google/android/filament/TextureSampler$a;

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/TextureSampler;->nGetCompareFunction(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c()Lcom/google/android/filament/TextureSampler$b;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->d:[Lcom/google/android/filament/TextureSampler$b;

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/TextureSampler;->nGetCompareMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d()Lcom/google/android/filament/TextureSampler$d;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->b:[Lcom/google/android/filament/TextureSampler$d;

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/TextureSampler;->nGetMagFilter(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Lcom/google/android/filament/TextureSampler$e;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->a:[Lcom/google/android/filament/TextureSampler$e;

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/TextureSampler;->nGetMinFilter(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public f()Lcom/google/android/filament/TextureSampler$f;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->c:[Lcom/google/android/filament/TextureSampler$f;

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/TextureSampler;->nGetWrapModeR(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()Lcom/google/android/filament/TextureSampler$f;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->c:[Lcom/google/android/filament/TextureSampler$f;

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/TextureSampler;->nGetWrapModeS(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()Lcom/google/android/filament/TextureSampler$f;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->c:[Lcom/google/android/filament/TextureSampler$f;

    iget-wide v1, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/TextureSampler;->nGetWrapModeT(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetAnisotropy(JF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public k(Lcom/google/android/filament/TextureSampler$a;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetCompareFunction(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public l(Lcom/google/android/filament/TextureSampler$b;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetCompareMode(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public m(Lcom/google/android/filament/TextureSampler$d;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetMagFilter(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public n(Lcom/google/android/filament/TextureSampler$e;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetMinFilter(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public o(Lcom/google/android/filament/TextureSampler$f;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetWrapModeR(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public p(Lcom/google/android/filament/TextureSampler$f;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetWrapModeS(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method

.method public q(Lcom/google/android/filament/TextureSampler$f;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/TextureSampler;->nSetWrapModeT(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/TextureSampler;->a:J

    return-void
.end method
