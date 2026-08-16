.class public final synthetic Lcom/android/tools/r8/internal/BA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/C9;

.field public final synthetic c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/C9;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BA0;->b:Lcom/android/tools/r8/internal/C9;

    iput-object p2, p0, Lcom/android/tools/r8/internal/BA0;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BA0;->b:Lcom/android/tools/r8/internal/C9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/BA0;->c:Lcom/android/tools/r8/internal/nJ;

    check-cast p1, Lcom/android/tools/r8/internal/e9;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/B9;->a(Lcom/android/tools/r8/internal/C9;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/e9;)Z

    move-result p1

    return p1
.end method
