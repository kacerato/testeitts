.class public final synthetic Lcom/android/tools/r8/internal/WW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/T2;

.field public final synthetic c:Lcom/android/tools/r8/androidapi/f;

.field public final synthetic d:Lcom/android/tools/r8/internal/W9;

.field public final synthetic e:Lcom/android/tools/r8/graph/u1;

.field public final synthetic f:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/T2;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/WW0;->b:Lcom/android/tools/r8/internal/T2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/WW0;->c:Lcom/android/tools/r8/androidapi/f;

    iput-object p3, p0, Lcom/android/tools/r8/internal/WW0;->d:Lcom/android/tools/r8/internal/W9;

    iput-object p4, p0, Lcom/android/tools/r8/internal/WW0;->e:Lcom/android/tools/r8/graph/u1;

    iput-object p5, p0, Lcom/android/tools/r8/internal/WW0;->f:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/WW0;->b:Lcom/android/tools/r8/internal/T2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WW0;->c:Lcom/android/tools/r8/androidapi/f;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WW0;->d:Lcom/android/tools/r8/internal/W9;

    iget-object v3, p0, Lcom/android/tools/r8/internal/WW0;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/WW0;->f:Lcom/android/tools/r8/graph/H5;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/T2;->a(Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
