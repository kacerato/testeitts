.class public final synthetic Lcom/android/tools/r8/internal/rx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/w50;

.field public final synthetic c:Lcom/android/tools/r8/internal/xw0;

.field public final synthetic d:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/w50;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rx1;->b:Lcom/android/tools/r8/internal/w50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rx1;->c:Lcom/android/tools/r8/internal/xw0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/rx1;->d:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rx1;->b:Lcom/android/tools/r8/internal/w50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rx1;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/rx1;->d:Lcom/android/tools/r8/internal/fB;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/w50;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1
.end method
