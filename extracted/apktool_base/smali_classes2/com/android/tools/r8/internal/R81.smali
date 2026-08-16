.class public final synthetic Lcom/android/tools/r8/internal/R81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/de;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic d:Lcom/android/tools/r8/internal/U6;

.field public final synthetic e:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/de;Ljava/util/Set;Ljava/util/function/Function;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/R81;->a:Lcom/android/tools/r8/internal/de;

    iput-object p2, p0, Lcom/android/tools/r8/internal/R81;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/R81;->c:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/android/tools/r8/internal/R81;->d:Lcom/android/tools/r8/internal/U6;

    iput-object p5, p0, Lcom/android/tools/r8/internal/R81;->e:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/R81;->a:Lcom/android/tools/r8/internal/de;

    iget-object v1, p0, Lcom/android/tools/r8/internal/R81;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/R81;->c:Ljava/util/function/Function;

    iget-object v3, p0, Lcom/android/tools/r8/internal/R81;->d:Lcom/android/tools/r8/internal/U6;

    iget-object v4, p0, Lcom/android/tools/r8/internal/R81;->e:Lcom/android/tools/r8/internal/C7;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/de;->a(Ljava/util/Set;Ljava/util/function/Function;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V

    return-void
.end method
