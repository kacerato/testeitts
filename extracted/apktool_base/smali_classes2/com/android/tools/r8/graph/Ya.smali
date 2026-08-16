.class public final synthetic Lcom/android/tools/r8/graph/Ya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/U4;

.field public final synthetic c:Lcom/android/tools/r8/graph/I2;

.field public final synthetic d:Lcom/android/tools/r8/graph/L2;

.field public final synthetic e:Lcom/android/tools/r8/graph/W4;

.field public final synthetic f:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Ya;->b:Lcom/android/tools/r8/graph/U4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Ya;->c:Lcom/android/tools/r8/graph/I2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Ya;->d:Lcom/android/tools/r8/graph/L2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Ya;->e:Lcom/android/tools/r8/graph/W4;

    iput-object p5, p0, Lcom/android/tools/r8/graph/Ya;->f:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/Ya;->b:Lcom/android/tools/r8/graph/U4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Ya;->c:Lcom/android/tools/r8/graph/I2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Ya;->d:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Ya;->e:Lcom/android/tools/r8/graph/W4;

    iget-object v4, p0, Lcom/android/tools/r8/graph/Ya;->f:Lcom/android/tools/r8/graph/E0;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/E0;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/W4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
