.class public final synthetic Lcom/android/tools/r8/internal/yd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/hm;

.field public final synthetic b:Lcom/android/tools/r8/graph/A2;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:[Lcom/android/tools/r8/graph/A2;

.field public final synthetic e:Lcom/android/tools/r8/internal/ga;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hm;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yd1;->a:Lcom/android/tools/r8/internal/hm;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yd1;->b:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/yd1;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/yd1;->d:[Lcom/android/tools/r8/graph/A2;

    iput-object p5, p0, Lcom/android/tools/r8/internal/yd1;->e:Lcom/android/tools/r8/internal/ga;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/yd1;->a:Lcom/android/tools/r8/internal/hm;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yd1;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yd1;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/yd1;->d:[Lcom/android/tools/r8/graph/A2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/yd1;->e:Lcom/android/tools/r8/internal/ga;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
