.class public final synthetic Lcom/android/tools/r8/graph/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/U4;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/graph/b0;

.field public final synthetic e:Lcom/android/tools/r8/graph/R4;

.field public final synthetic f:Lcom/android/tools/r8/graph/M2;

.field public final synthetic g:Lcom/android/tools/r8/graph/I2;

.field public final synthetic h:Lcom/android/tools/r8/graph/L2;

.field public final synthetic i:Lcom/android/tools/r8/graph/T4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/U4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/T4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/eb;->b:Lcom/android/tools/r8/graph/U4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/eb;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/graph/eb;->d:Lcom/android/tools/r8/graph/b0;

    iput-object p4, p0, Lcom/android/tools/r8/graph/eb;->e:Lcom/android/tools/r8/graph/R4;

    iput-object p5, p0, Lcom/android/tools/r8/graph/eb;->f:Lcom/android/tools/r8/graph/M2;

    iput-object p6, p0, Lcom/android/tools/r8/graph/eb;->g:Lcom/android/tools/r8/graph/I2;

    iput-object p7, p0, Lcom/android/tools/r8/graph/eb;->h:Lcom/android/tools/r8/graph/L2;

    iput-object p8, p0, Lcom/android/tools/r8/graph/eb;->i:Lcom/android/tools/r8/graph/T4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/graph/eb;->b:Lcom/android/tools/r8/graph/U4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/eb;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/graph/eb;->d:Lcom/android/tools/r8/graph/b0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/eb;->e:Lcom/android/tools/r8/graph/R4;

    iget-object v4, p0, Lcom/android/tools/r8/graph/eb;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p0, Lcom/android/tools/r8/graph/eb;->g:Lcom/android/tools/r8/graph/I2;

    iget-object v6, p0, Lcom/android/tools/r8/graph/eb;->h:Lcom/android/tools/r8/graph/L2;

    iget-object v7, p0, Lcom/android/tools/r8/graph/eb;->i:Lcom/android/tools/r8/graph/T4;

    move-object v8, p1

    check-cast v8, Lcom/android/tools/r8/graph/E0;

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/graph/U4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Lcom/android/tools/r8/graph/R4;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
