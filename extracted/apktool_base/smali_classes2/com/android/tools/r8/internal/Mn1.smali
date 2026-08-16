.class public final synthetic Lcom/android/tools/r8/internal/Mn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mn1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mn1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Mn1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Mn1;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Mn1;->e:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Mn1;->f:Ljava/util/Set;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Mn1;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mn1;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mn1;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Mn1;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Mn1;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Mn1;->e:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Mn1;->f:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Mn1;->g:Ljava/util/Set;

    move-object v7, p1

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    move-object v8, p2

    check-cast v8, Lcom/android/tools/r8/internal/Hp0;

    invoke-static/range {v0 .. v8}, Lcom/android/tools/r8/internal/np0;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V

    return-void
.end method
