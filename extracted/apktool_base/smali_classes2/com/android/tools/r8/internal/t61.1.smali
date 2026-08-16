.class public final synthetic Lcom/android/tools/r8/internal/t61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Tr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/bz;

.field public final synthetic b:Lcom/android/tools/r8/shaking/i;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;

.field public final synthetic d:Lcom/android/tools/r8/internal/kB;

.field public final synthetic e:Lcom/android/tools/r8/internal/EW$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/bz;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/EW$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/t61;->a:Lcom/android/tools/r8/internal/bz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/t61;->b:Lcom/android/tools/r8/shaking/i;

    iput-object p3, p0, Lcom/android/tools/r8/internal/t61;->c:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/internal/t61;->d:Lcom/android/tools/r8/internal/kB;

    iput-object p5, p0, Lcom/android/tools/r8/internal/t61;->e:Lcom/android/tools/r8/internal/EW$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/t61;->a:Lcom/android/tools/r8/internal/bz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/t61;->b:Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/internal/t61;->c:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/t61;->d:Lcom/android/tools/r8/internal/kB;

    iget-object v4, p0, Lcom/android/tools/r8/internal/t61;->e:Lcom/android/tools/r8/internal/EW$a;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
