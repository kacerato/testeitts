.class public final Lcom/android/tools/r8/internal/Xe;
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xe;->b:Lcom/android/tools/r8/internal/Wh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 4

    iget-object v0, p2, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/d;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Object;

    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xe;->b:Lcom/android/tools/r8/internal/Wh;

    invoke-virtual {v2, p2}, Lcom/android/tools/r8/internal/Wh;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/z30;

    move-result-object p2

    new-instance v2, Lcom/android/tools/r8/internal/We;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/android/tools/r8/internal/We;-><init>(Lcom/android/tools/r8/internal/Oz;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/vt0;Lcom/android/tools/r8/internal/z30;)V

    return-object v2
.end method
