.class public final Lcom/android/tools/r8/internal/SU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Wh;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Wh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SU;->b:Lcom/android/tools/r8/internal/Wh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 11

    iget-object v1, p2, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    iget-object v3, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-class v5, Ljava/util/Properties;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v5, :cond_1

    new-array v1, v6, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v8

    aput-object v3, v1, v7

    goto :goto_0

    :cond_1
    invoke-static {v1, v3, v4}, Lcom/android/tools/r8/internal/d;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v1, v6, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v8

    aput-object v3, v1, v7

    :goto_0
    aget-object v3, v1, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_4

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v3

    :goto_1
    move-object v4, v3

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v3, Lcom/android/tools/r8/internal/ku0;->c:Lcom/android/tools/r8/internal/cu0;

    goto :goto_1

    :goto_3
    aget-object v3, v1, v7

    new-instance v5, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v6

    iget-object v3, p0, Lcom/android/tools/r8/internal/SU;->b:Lcom/android/tools/r8/internal/Wh;

    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/Wh;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/z30;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/RU;

    aget-object v3, v1, v8

    aget-object v5, v1, v7

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/RU;-><init>(Lcom/android/tools/r8/internal/SU;Lcom/android/tools/r8/internal/Oz;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/vt0;Lcom/android/tools/r8/internal/z30;)V

    return-object v10
.end method
