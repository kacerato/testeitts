.class public final synthetic Lcom/android/tools/r8/graph/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/U4;

.field public final synthetic c:Lcom/android/tools/r8/graph/W4;

.field public final synthetic d:Lcom/android/tools/r8/graph/I2;

.field public final synthetic e:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/bb;->b:Lcom/android/tools/r8/graph/U4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/bb;->c:Lcom/android/tools/r8/graph/W4;

    iput-object p3, p0, Lcom/android/tools/r8/graph/bb;->d:Lcom/android/tools/r8/graph/I2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/bb;->e:Lcom/android/tools/r8/graph/L2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/bb;->b:Lcom/android/tools/r8/graph/U4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/bb;->c:Lcom/android/tools/r8/graph/W4;

    iget-object v2, p0, Lcom/android/tools/r8/graph/bb;->d:Lcom/android/tools/r8/graph/I2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/bb;->e:Lcom/android/tools/r8/graph/L2;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/U4;->b(Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
