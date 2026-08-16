.class public final synthetic Lcom/android/tools/r8/internal/tX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/TZ;

.field public final synthetic c:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/TZ;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tX0;->b:Lcom/android/tools/r8/internal/TZ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tX0;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/tX0;->b:Lcom/android/tools/r8/internal/TZ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tX0;->c:Ljava/util/Collection;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/TZ;->a(Ljava/util/Collection;Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    return p1
.end method
