.class public final synthetic Lcom/android/tools/r8/shaking/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/I4;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Collection;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Lcom/android/tools/r8/shaking/v3;

.field public final synthetic g:Lcom/android/tools/r8/shaking/H3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/I4;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/u6;->b:Lcom/android/tools/r8/shaking/I4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/u6;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/u6;->d:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/u6;->e:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/u6;->f:Lcom/android/tools/r8/shaking/v3;

    iput-object p6, p0, Lcom/android/tools/r8/shaking/u6;->g:Lcom/android/tools/r8/shaking/H3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/shaking/u6;->b:Lcom/android/tools/r8/shaking/I4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/u6;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/u6;->d:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/u6;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/u6;->f:Lcom/android/tools/r8/shaking/v3;

    iget-object v5, p0, Lcom/android/tools/r8/shaking/u6;->g:Lcom/android/tools/r8/shaking/H3;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/H0;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/Map;Ljava/util/Collection;Ljava/util/Set;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/graph/H0;)V

    return-void
.end method
