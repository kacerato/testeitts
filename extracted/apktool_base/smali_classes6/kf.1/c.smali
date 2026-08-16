.class public final Lkf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lkf/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkf/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkf/c;->a:Ljava/util/logging/Logger;

    new-instance v0, Lkf/a;

    invoke-direct {v0}, Lkf/a;-><init>()V

    sput-object v0, Lkf/c;->b:Lkf/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkf/b;FFIFFF)F
    .locals 5

    const-string v0, "noise2"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "octaves"

    invoke-static {p3, v0}, Lif/E;->F(ILjava/lang/String;)Z

    const-string v0, "fundamental"

    invoke-static {p4, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p5, v1

    if-gez v2, :cond_2

    cmpl-float v2, p6, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    mul-float v3, p1, p4

    mul-float v4, p2, p4

    invoke-interface {p0, v3, v4}, Lkf/b;->a(FF)F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    mul-float/2addr p4, p6

    mul-float/2addr v1, p5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    sget-object p0, Lkf/c;->a:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "lacunarity={0}"

    invoke-virtual {p0, p1, p3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lacunarity should be greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lkf/c;->a:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "gain={0}"

    invoke-virtual {p0, p1, p3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "gain should be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lkf/a;
    .locals 1

    sget-object v0, Lkf/c;->b:Lkf/a;

    return-object v0
.end method

.method public static c()F
    .locals 1

    sget-object v0, Lkf/c;->b:Lkf/a;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static d(J)V
    .locals 1

    sget-object v0, Lkf/c;->b:Lkf/a;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method
