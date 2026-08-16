.class public final synthetic Lcom/android/tools/r8/graph/Hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/W4;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/W4;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Hb;->b:Lcom/android/tools/r8/graph/W4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Hb;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Hb;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Hb;->e:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/graph/Hb;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/Hb;->b:Lcom/android/tools/r8/graph/W4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Hb;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Hb;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Hb;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/graph/Hb;->f:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/Z4;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/W4;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/graph/Z4;)V

    return-void
.end method
