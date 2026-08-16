.class public final synthetic Lcom/android/tools/r8/internal/hk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Lcom/android/tools/r8/internal/zE;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/internal/zE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hk1;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hk1;->c:Lcom/android/tools/r8/internal/zE;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk1;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hk1;->c:Lcom/android/tools/r8/internal/zE;

    check-cast p1, Lcom/android/tools/r8/internal/lS;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/mS;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/lS;)Z

    move-result p1

    return p1
.end method
