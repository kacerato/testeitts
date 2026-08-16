.class public Lef/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lef/c;


# direct methods
.method public constructor <init>(Lef/c;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lef/c$b;->e:Lef/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lef/c$b;->a:I

    iput p3, p0, Lef/c$b;->b:I

    iput p4, p0, Lef/c$b;->c:I

    iput p5, p0, Lef/c$b;->d:I

    return-void
.end method

.method public static synthetic a(Lef/c$b;)I
    .locals 0

    iget p0, p0, Lef/c$b;->c:I

    return p0
.end method

.method public static synthetic b(Lef/c$b;)I
    .locals 0

    iget p0, p0, Lef/c$b;->d:I

    return p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lef/c$b;->d:I

    return v0
.end method

.method public d(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 5

    invoke-virtual {p0}, Lef/c$b;->f()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lef/c$b;->e:Lef/c;

    invoke-static {v1}, Lef/c;->a(Lef/c;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lef/c$b;->g()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lef/c$b;->e:Lef/c;

    invoke-static {v2}, Lef/c;->b(Lef/c;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lef/c$b;->e()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lef/c$b;->e:Lef/c;

    invoke-static {v3}, Lef/c;->a(Lef/c;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lef/c$b;->c()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lef/c$b;->e:Lef/c;

    invoke-static {v4}, Lef/c;->b(Lef/c;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    new-instance v4, Lcom/jme3/math/Vector2f;

    invoke-direct {v4, v0, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, v2

    mul-float/2addr p1, v3

    invoke-virtual {v4, v0, p1}, Lcom/jme3/math/Vector2f;->addLocal(FF)Lcom/jme3/math/Vector2f;

    return-object v4
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lef/c$b;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lef/c$b;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lef/c$b;->b:I

    return v0
.end method

.method public h(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;)V
    .locals 5

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    mul-int/lit8 p2, p2, 0x2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector2f;->x:F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v0}, Lef/c$b;->d(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    add-int/2addr v2, p2

    iget v4, v3, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p3, v2, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p3, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
