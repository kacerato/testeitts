.class public final synthetic Lv/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;

.field public final synthetic d:Lcom/android/tools/r8/graph/I2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/E;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lv/E;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lv/E;->d:Lcom/android/tools/r8/graph/I2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lv/E;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lv/E;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lv/E;->d:Lcom/android/tools/r8/graph/I2;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/ir/optimize/M0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
