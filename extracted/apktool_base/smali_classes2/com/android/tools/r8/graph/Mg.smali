.class public final synthetic Lcom/android/tools/r8/graph/Mg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u3;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/graph/l1;

.field public final synthetic e:Lcom/android/tools/r8/graph/E0;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Lcom/android/tools/r8/graph/v3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u3;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Mg;->b:Lcom/android/tools/r8/graph/u3;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Mg;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Mg;->d:Lcom/android/tools/r8/graph/l1;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Mg;->e:Lcom/android/tools/r8/graph/E0;

    iput-object p5, p0, Lcom/android/tools/r8/graph/Mg;->f:Ljava/util/Set;

    iput-object p6, p0, Lcom/android/tools/r8/graph/Mg;->g:Lcom/android/tools/r8/graph/v3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/graph/Mg;->b:Lcom/android/tools/r8/graph/u3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Mg;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Mg;->d:Lcom/android/tools/r8/graph/l1;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Mg;->e:Lcom/android/tools/r8/graph/E0;

    iget-object v4, p0, Lcom/android/tools/r8/graph/Mg;->f:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/tools/r8/graph/Mg;->g:Lcom/android/tools/r8/graph/v3;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/E0;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/graph/u3;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/v3;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
