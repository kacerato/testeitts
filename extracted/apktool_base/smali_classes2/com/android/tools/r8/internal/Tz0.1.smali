.class public final synthetic Lcom/android/tools/r8/internal/Tz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/B3;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/android/tools/r8/internal/t3;

.field public final synthetic f:Lcom/android/tools/r8/internal/U6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/B3;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tz0;->b:Lcom/android/tools/r8/internal/B3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tz0;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Tz0;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Tz0;->e:Lcom/android/tools/r8/internal/t3;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Tz0;->f:Lcom/android/tools/r8/internal/U6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tz0;->b:Lcom/android/tools/r8/internal/B3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tz0;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tz0;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Tz0;->e:Lcom/android/tools/r8/internal/t3;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Tz0;->f:Lcom/android/tools/r8/internal/U6;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/F5;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/B3;->a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method
