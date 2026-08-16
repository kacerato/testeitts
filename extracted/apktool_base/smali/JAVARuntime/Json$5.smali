.class LJAVARuntime/Json$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Json;->addExclusion(Lcom/google/gson/GsonBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_3

    invoke-static {v0}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    invoke-virtual {v2}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v2}, Le8/c;->f()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    invoke-static {}, Ld8/j;->K0()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v2

    invoke-virtual {v2}, Ld8/r;->a()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v2}, Ld8/r;->g()Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    invoke-virtual {v2}, Le8/c;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Le8/c;->f()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    invoke-static {}, Ld8/j;->K0()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-static {v1}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v2

    invoke-virtual {v2}, Ld8/r;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_4

    invoke-virtual {v2}, Ld8/r;->g()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_5
    return v0
.end method
