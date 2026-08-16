.class public final synthetic Lv/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zE;

.field public final synthetic c:Lcom/android/tools/r8/internal/zE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/Y0;->b:Lcom/android/tools/r8/internal/zE;

    iput-object p2, p0, Lv/Y0;->c:Lcom/android/tools/r8/internal/zE;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lv/Y0;->b:Lcom/android/tools/r8/internal/zE;

    iget-object v1, p0, Lv/Y0;->c:Lcom/android/tools/r8/internal/zE;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1
.end method
