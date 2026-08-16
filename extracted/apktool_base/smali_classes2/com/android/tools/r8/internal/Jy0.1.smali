.class public final synthetic Lcom/android/tools/r8/internal/Jy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/AM;

.field public final synthetic c:Lcom/android/tools/r8/internal/xO;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/xO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jy0;->b:Lcom/android/tools/r8/internal/AM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jy0;->c:Lcom/android/tools/r8/internal/xO;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jy0;->b:Lcom/android/tools/r8/internal/AM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jy0;->c:Lcom/android/tools/r8/internal/xO;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/AM;->a(Lcom/android/tools/r8/internal/xO;Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    return p1
.end method
