.class Lcom/jme3/anim/tween/Tweens$CallTweenMethod;
.super Lcom/jme3/anim/tween/AbstractTween;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/tween/Tweens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallTweenMethod"
.end annotation


# instance fields
.field private args:[Ljava/lang/Object;

.field private isFloat:Z

.field private method:Ljava/lang/reflect/Method;

.field private tIndex:I

.field private target:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(DLjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/anim/tween/AbstractTween;-><init>(D)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->tIndex:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloat:Z

    if-eqz p3, :cond_3

    iput-object p3, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->target:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2, p4, p5}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->method:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    array-length p2, p5

    add-int/2addr p2, p3

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->args:[Ljava/lang/Object;

    iget p2, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->tIndex:I

    if-nez p2, :cond_0

    :goto_0
    array-length p2, p5

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->args:[Ljava/lang/Object;

    add-int/lit8 p3, p1, 0x1

    aget-object p1, p5, p1

    aput-object p1, p2, p3

    move p1, p3

    goto :goto_0

    :cond_0
    :goto_1
    array-length p2, p5

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->args:[Ljava/lang/Object;

    aget-object p3, p5, p1

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Method not found for:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " on type:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_d

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    array-length v7, p3

    const/4 v8, 0x1

    add-int/2addr v7, v8

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/jme3/anim/tween/Tweens;->access$200()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/jme3/anim/tween/Tweens;->access$200()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Param lengths of ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] differ.  method arg count:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v5

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  looking for:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p3

    add-int/2addr v4, v8

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloatType(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isDoubleType(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    move v7, v2

    move v6, v8

    :goto_1
    array-length v9, v5

    if-ge v6, v9, :cond_4

    aget-object v9, v5, v6

    add-int/lit8 v10, v6, -0x1

    aget-object v10, p3, v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    array-length v6, p3

    if-ne v7, v6, :cond_5

    iput v2, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->tIndex:I

    aget-object v6, v5, v2

    invoke-static {v6}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloatType(Ljava/lang/Class;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloat:Z

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/jme3/anim/tween/Tweens;->access$200()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/jme3/anim/tween/Tweens;->access$200()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " Leading float check failed because of type mismatches, for:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget v6, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->tIndex:I

    if-ltz v6, :cond_7

    return-object v4

    :cond_7
    array-length v6, v5

    sub-int/2addr v6, v8

    aget-object v7, v5, v6

    invoke-static {v7}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloatType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_8

    aget-object v7, v5, v6

    invoke-static {v7}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isDoubleType(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_8
    move v7, v2

    move v8, v7

    :goto_3
    if-ge v7, v6, :cond_a

    aget-object v9, v5, v7

    aget-object v10, p3, v7

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    array-length v7, p3

    if-ne v8, v7, :cond_b

    iput v6, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->tIndex:I

    aget-object p1, v5, v6

    invoke-static {p1}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloatType(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloat:Z

    return-object v4

    :cond_b
    invoke-static {}, Lcom/jme3/anim/tween/Tweens;->access$200()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/jme3/anim/tween/Tweens;->access$200()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trailing float check failed because of type mismatches, for:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_c
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method private static isDoubleType(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isFloatType(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public doInterpolate(D)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->isFloat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->args:[Ljava/lang/Object;

    iget v1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->tIndex:I

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->args:[Ljava/lang/Object;

    iget v1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->tIndex:I

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    :goto_0
    iget-object p1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->method:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->target:Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->args:[Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error running method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for object:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$CallTweenMethod;->args:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
