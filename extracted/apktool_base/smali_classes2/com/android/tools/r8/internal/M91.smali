.class public final synthetic Lcom/android/tools/r8/internal/M91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/f50;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/internal/EE;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Lcom/android/tools/r8/internal/W5;

.field public final synthetic g:Lcom/android/tools/r8/internal/fB;

.field public final synthetic h:Lcom/android/tools/r8/internal/Z5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/f50;Ljava/util/Set;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/M91;->b:Lcom/android/tools/r8/internal/f50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/M91;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/M91;->d:Lcom/android/tools/r8/internal/EE;

    iput-object p4, p0, Lcom/android/tools/r8/internal/M91;->e:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/internal/M91;->f:Lcom/android/tools/r8/internal/W5;

    iput-object p6, p0, Lcom/android/tools/r8/internal/M91;->g:Lcom/android/tools/r8/internal/fB;

    iput-object p7, p0, Lcom/android/tools/r8/internal/M91;->h:Lcom/android/tools/r8/internal/Z5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/M91;->b:Lcom/android/tools/r8/internal/f50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M91;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/M91;->d:Lcom/android/tools/r8/internal/EE;

    iget-object v3, p0, Lcom/android/tools/r8/internal/M91;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/internal/M91;->f:Lcom/android/tools/r8/internal/W5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/M91;->g:Lcom/android/tools/r8/internal/fB;

    iget-object v6, p0, Lcom/android/tools/r8/internal/M91;->h:Lcom/android/tools/r8/internal/Z5;

    move-object v7, p1

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/f50;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/EE;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method
