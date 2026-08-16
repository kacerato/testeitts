.class public final synthetic Lv/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/z0;

.field public final synthetic b:Lcom/android/tools/r8/graph/M2;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/z0;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/i2;->a:Lcom/android/tools/r8/ir/optimize/z0;

    iput-object p2, p0, Lv/i2;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lv/i2;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 3

    iget-object v0, p0, Lv/i2;->a:Lcom/android/tools/r8/ir/optimize/z0;

    iget-object v1, p0, Lv/i2;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lv/i2;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/ir/optimize/z0;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
