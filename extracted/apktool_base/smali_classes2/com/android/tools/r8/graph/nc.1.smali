.class public final synthetic Lcom/android/tools/r8/graph/nc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/f4;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/i;

.field public final synthetic b:Lcom/android/tools/r8/internal/C7;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/nc;->a:Lcom/android/tools/r8/shaking/i;

    iput-object p2, p0, Lcom/android/tools/r8/graph/nc;->b:Lcom/android/tools/r8/internal/C7;

    iput-object p3, p0, Lcom/android/tools/r8/graph/nc;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/nc;->d:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/graph/nc;->a:Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/graph/nc;->b:Lcom/android/tools/r8/internal/C7;

    iget-object v2, p0, Lcom/android/tools/r8/graph/nc;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/nc;->d:Lcom/android/tools/r8/graph/H2;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
