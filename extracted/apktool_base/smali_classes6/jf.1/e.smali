.class public final Ljf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljf/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljf/e;->a:Ljava/util/logging/Logger;

    const-string v0, "Color\\[\\s*([^,]+),\\s*([^,]+),\\s*([^,]+),\\s*(\\S+)\\s*]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljf/e;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/math/ColorRGBA;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    const-string v1, "rgb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {v1}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {p0}, Lif/t;->g(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static b(FLcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    const-string v0, "fraction"

    invoke-static {p0, v0}, Lif/E;->f(FLjava/lang/String;)Z

    const-string v0, "start"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "end"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljf/e;->c(FLcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object p0

    return-object p0
.end method

.method public static c(FLcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 2

    const-string v0, "c0"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "c1"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p3}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v1, p2, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {p0, v0, v1}, Ljf/f;->y(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/ColorRGBA;->r:F

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v1, p2, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {p0, v0, v1}, Ljf/f;->y(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/ColorRGBA;->g:F

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v1, p2, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {p0, v0, v1}, Ljf/f;->y(FFF)F

    move-result v0

    iput v0, p3, Lcom/jme3/math/ColorRGBA;->b:F

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iget p2, p2, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {p0, p1, p2}, Ljf/f;->y(FFF)F

    move-result p0

    iput p0, p3, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p3
.end method

.method public static d(Ljava/lang/String;)Lcom/jme3/math/ColorRGBA;
    .locals 4

    const-string v0, "text string"

    invoke-static {p0, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Ljf/e;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v3, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method public static e(Lcom/jme3/texture/image/ColorSpace;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    sget-object v0, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/ColorRGBA;->getAsSrgb()Lcom/jme3/math/ColorRGBA;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static f(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 5

    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    invoke-static {v3}, Ljf/f;->B([F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    iget p0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-direct {v0, v2, v2, v2, p0}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    return-object v0

    :cond_0
    div-float/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/jme3/math/ColorRGBA;->mult(F)Lcom/jme3/math/ColorRGBA;

    move-result-object p0

    return-object p0
.end method
