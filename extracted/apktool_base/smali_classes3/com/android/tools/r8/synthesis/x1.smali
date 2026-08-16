.class public final synthetic Lcom/android/tools/r8/synthesis/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/shaking/o2;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/x1;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/x1;->b:Lcom/android/tools/r8/shaking/o2;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/x1;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/x1;->d:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/synthesis/x1;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/x1;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/x1;->b:Lcom/android/tools/r8/shaking/o2;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/x1;->c:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/x1;->d:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/synthesis/x1;->e:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/synthesis/w;

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/o2;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V

    return-void
.end method
