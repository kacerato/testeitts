.class public final synthetic Lcom/android/tools/r8/graph/Qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/T4;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/graph/b0;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Qa;->b:Lcom/android/tools/r8/graph/T4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Qa;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Qa;->d:Lcom/android/tools/r8/graph/b0;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Qa;->e:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/graph/Qa;->f:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/Qa;->b:Lcom/android/tools/r8/graph/T4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Qa;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Qa;->d:Lcom/android/tools/r8/graph/b0;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Qa;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/graph/Qa;->f:Lcom/android/tools/r8/graph/M2;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/E0;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/T4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/b0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
