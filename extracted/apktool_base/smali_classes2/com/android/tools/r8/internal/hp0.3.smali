.class public final Lcom/android/tools/r8/internal/hp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jp0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hp0;->a:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V
    .locals 0

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/hp0;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1, p2, p5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
