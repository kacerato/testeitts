.class public final Lcom/android/tools/r8/internal/pm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/j9;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/um;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/um;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/um;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/pm;->c:Lcom/android/tools/r8/internal/um;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/internal/o9;)V
    .locals 2

    iget-object p1, p0, Lcom/android/tools/r8/internal/pm;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->h()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/cu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pm;->c:Lcom/android/tools/r8/internal/um;

    invoke-virtual {v1, v0, p2}, Lcom/android/tools/r8/internal/um;->b(Lcom/android/tools/r8/internal/cu;Lcom/android/tools/r8/internal/o9;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "$retargeter"

    return-object v0
.end method
