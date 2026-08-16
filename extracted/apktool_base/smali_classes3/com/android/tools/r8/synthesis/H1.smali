.class public final synthetic Lcom/android/tools/r8/synthesis/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/z;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/z;Lcom/android/tools/r8/graph/y;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/H1;->a:Lcom/android/tools/r8/synthesis/z;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/H1;->b:Lcom/android/tools/r8/graph/y;

    iput-boolean p3, p0, Lcom/android/tools/r8/synthesis/H1;->c:Z

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/H1;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/synthesis/H1;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/H1;->a:Lcom/android/tools/r8/synthesis/z;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/H1;->b:Lcom/android/tools/r8/graph/y;

    iget-boolean v2, p0, Lcom/android/tools/r8/synthesis/H1;->c:Z

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/H1;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/tools/r8/synthesis/H1;->e:Ljava/util/Map;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;ZLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
