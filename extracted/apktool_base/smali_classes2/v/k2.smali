.class public final synthetic Lv/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/z0;

.field public final synthetic c:Lcom/android/tools/r8/graph/I2;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/z0;Lcom/android/tools/r8/graph/I2;Ljava/util/List;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/k2;->b:Lcom/android/tools/r8/ir/optimize/z0;

    iput-object p2, p0, Lv/k2;->c:Lcom/android/tools/r8/graph/I2;

    iput-object p3, p0, Lv/k2;->d:Ljava/util/List;

    iput-object p4, p0, Lv/k2;->e:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lv/k2;->b:Lcom/android/tools/r8/ir/optimize/z0;

    iget-object v1, p0, Lv/k2;->c:Lcom/android/tools/r8/graph/I2;

    iget-object v2, p0, Lv/k2;->d:Ljava/util/List;

    iget-object v3, p0, Lv/k2;->e:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/I2;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
