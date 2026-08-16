.class public final synthetic Lcom/android/tools/r8/internal/Lu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/uc0;

.field public final synthetic b:Lcom/android/tools/r8/graph/H2;

.field public final synthetic c:Lcom/android/tools/r8/internal/o50;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lu1;->a:Lcom/android/tools/r8/internal/uc0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Lu1;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Lu1;->c:Lcom/android/tools/r8/internal/o50;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lu1;->a:Lcom/android/tools/r8/internal/uc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Lu1;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lu1;->c:Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method
