.class public final synthetic Lcom/android/tools/r8/internal/Vz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/B3;

.field public final synthetic c:Lcom/android/tools/r8/internal/h80;

.field public final synthetic d:Lcom/android/tools/r8/internal/Dq;

.field public final synthetic e:Lcom/android/tools/r8/internal/Dq;

.field public final synthetic f:Lcom/android/tools/r8/internal/t3;

.field public final synthetic g:Lcom/android/tools/r8/internal/U6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vz0;->b:Lcom/android/tools/r8/internal/B3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vz0;->c:Lcom/android/tools/r8/internal/h80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Vz0;->d:Lcom/android/tools/r8/internal/Dq;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Vz0;->e:Lcom/android/tools/r8/internal/Dq;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Vz0;->f:Lcom/android/tools/r8/internal/t3;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Vz0;->g:Lcom/android/tools/r8/internal/U6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vz0;->b:Lcom/android/tools/r8/internal/B3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vz0;->c:Lcom/android/tools/r8/internal/h80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Vz0;->d:Lcom/android/tools/r8/internal/Dq;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Vz0;->e:Lcom/android/tools/r8/internal/Dq;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Vz0;->f:Lcom/android/tools/r8/internal/t3;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Vz0;->g:Lcom/android/tools/r8/internal/U6;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/B3;->a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/t3;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
