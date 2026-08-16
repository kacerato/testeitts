.class public Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
.super LK8/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# instance fields
.field public b:LJAVARuntime/Color;

.field public intColor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, LK8/f;-><init>()V

    const/16 v0, 0xff

    .line 4
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    const/16 v0, 0xff

    .line 14
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, LK8/f;-><init>()V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 12
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intColor"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 2
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "rgb"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 10
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, LK8/f;-><init>()V

    const/16 v0, 0xff

    .line 8
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 6
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(Ljava/lang/String;)V

    return-void
.end method

.method public static I()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, LNc/d;->h(FF)F

    move-result v3

    invoke-static {v1, v2}, LNc/d;->h(FF)F

    move-result v4

    invoke-static {v1, v2}, LNc/d;->h(FF)F

    move-result v1

    invoke-direct {v0, v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    return-object v0
.end method

.method public static d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-object v0
.end method

.method public static g0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-object v0
.end method

.method public static h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-object v0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const-string v0, "/"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-static {p0}, LNc/b;->u1(Ljava/lang/String;)F

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A(ZZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "RemoveAlpha",
            "RemoveHash"
        }
    .end annotation

    if-eqz p1, :cond_1

    const p1, 0xffffff

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    and-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%06X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    and-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "#%06X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public B()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    return v0
.end method

.method public D(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a",
            "speed"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F(FFFFF)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "speed"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public F(FFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a",
            "speed"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    invoke-static {v0, p4, p5}, LNc/b;->N0(FFF)F

    move-result p4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    invoke-static {v0, p1, p5}, LNc/b;->N0(FFF)F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    invoke-static {v0, p2, p5}, LNc/b;->N0(FFF)F

    move-result p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    invoke-static {v0, p3, p5}, LNc/b;->N0(FFF)F

    move-result p3

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    :cond_0
    return-void
.end method

.method public G(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "speed"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    invoke-static {v0, v1, p2}, LNc/b;->N0(FFF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    invoke-static {v1, v2, p2}, LNc/b;->N0(FFF)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v3

    invoke-static {v2, v3, p2}, LNc/b;->N0(FFF)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p1

    invoke-static {v3, p1, p2}, LNc/b;->N0(FFF)F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    :cond_0
    return-void
.end method

.method public H(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p1

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public J(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newColor"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-object p0
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public L(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public M(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public N(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public O(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public P(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public Q(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public S(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    invoke-static {p2}, LNc/b;->I(F)F

    move-result p2

    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public T(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p2}, LNc/b;->I(F)F

    move-result p2

    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    invoke-static {p4}, LNc/b;->I(F)F

    move-result p4

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public U(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hex"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public W()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public X(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    invoke-static {v0, p2, v1}, LNc/b;->F(III)I

    move-result p2

    invoke-static {v0, p3, v1}, LNc/b;->F(III)I

    move-result p3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public Y(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "r",
            "g",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p2, v1}, LNc/b;->F(III)I

    move-result p2

    invoke-static {v0, p3, v1}, LNc/b;->F(III)I

    move-result p3

    invoke-static {v0, p4, v1}, LNc/b;->F(III)I

    move-result p4

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public Z(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    invoke-static {p2}, LNc/b;->I(F)F

    move-result p2

    invoke-static {p3}, LNc/b;->I(F)F

    move-result p3

    invoke-static {p4}, LNc/b;->I(F)F

    move-result p4

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public a0()V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, LNc/d;->h(FF)F

    move-result v2

    invoke-static {v0, v1}, LNc/d;->h(FF)F

    move-result v3

    invoke-static {v0, v1}, LNc/d;->h(FF)F

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->S(FFF)V

    return-void
.end method

.method public b0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-void
.end method

.method public c0(LJAVARuntime/Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->b:LJAVARuntime/Color;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    return-object v0
.end method

.method public d0()[F
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    return-object v3
.end method

.method public e(FFFFF)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a",
            "blend"
        }
    .end annotation

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p5, v1}, LNc/b;->E(FFF)F

    move-result v5

    invoke-virtual {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h(FFFFF)V

    return-object v6
.end method

.method public e0()LJAVARuntime/Color;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->b:LJAVARuntime/Color;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Color;

    invoke-direct {v0, p0}, LJAVARuntime/Color;-><init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->b:LJAVARuntime/Color;

    :cond_0
    return-object v0
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "blend"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, p2, v2}, LNc/b;->E(FFF)F

    move-result p2

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->i(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V

    return-object v0
.end method

.method public f0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(FFFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a",
            "blend"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p5, v1}, LNc/b;->E(FFF)F

    move-result p5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    invoke-static {v0, p4, p5}, LNc/b;->z(FFF)F

    move-result p4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    invoke-static {v0, p1, p5}, LNc/b;->z(FFF)F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    invoke-static {v0, p2, p5}, LNc/b;->z(FFF)F

    move-result p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    invoke-static {v0, p3, p5}, LNc/b;->z(FFF)F

    move-result p3

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "blend"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p2, v1}, LNc/b;->E(FFF)F

    move-result p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    invoke-static {v0, v1, p2}, LNc/b;->z(FFF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    invoke-static {v1, v2, p2}, LNc/b;->z(FFF)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v3

    invoke-static {v2, v3, p2}, LNc/b;->z(FFF)F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p1

    invoke-static {v3, p1, p2}, LNc/b;->z(FFF)F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    return-void
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public s()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public setFromIndex(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "idx"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Q(F)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->P(F)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->O(F)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    :goto_0
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RemoveAlpha"
        }
    .end annotation

    if-eqz p1, :cond_0

    const p1, 0xffffff

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "#%06X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
