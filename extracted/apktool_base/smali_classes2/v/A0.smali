.class public final synthetic Lv/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/f;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/internal/sR;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/f;Ljava/util/Set;Lcom/android/tools/r8/internal/sR;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/A0;->b:Lcom/android/tools/r8/ir/optimize/f;

    iput-object p2, p0, Lv/A0;->c:Ljava/util/Set;

    iput-object p3, p0, Lv/A0;->d:Lcom/android/tools/r8/internal/sR;

    iput-object p4, p0, Lv/A0;->e:Ljava/util/Map;

    iput-object p5, p0, Lv/A0;->f:Ljava/util/Map;

    iput-object p6, p0, Lv/A0;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lv/A0;->b:Lcom/android/tools/r8/ir/optimize/f;

    iget-object v1, p0, Lv/A0;->c:Ljava/util/Set;

    iget-object v2, p0, Lv/A0;->d:Lcom/android/tools/r8/internal/sR;

    iget-object v3, p0, Lv/A0;->e:Ljava/util/Map;

    iget-object v4, p0, Lv/A0;->f:Ljava/util/Map;

    iget-object v5, p0, Lv/A0;->g:Ljava/util/Map;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/ir/optimize/f;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/sR;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method
