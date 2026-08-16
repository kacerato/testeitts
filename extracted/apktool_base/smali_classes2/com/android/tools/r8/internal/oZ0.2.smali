.class public final synthetic Lcom/android/tools/r8/internal/oZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/VW;

.field public final synthetic c:Lcom/android/tools/r8/internal/xw0;

.field public final synthetic d:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/VW;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oZ0;->b:Lcom/android/tools/r8/internal/VW;

    iput-object p2, p0, Lcom/android/tools/r8/internal/oZ0;->c:Lcom/android/tools/r8/internal/xw0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/oZ0;->d:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/oZ0;->b:Lcom/android/tools/r8/internal/VW;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oZ0;->c:Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/oZ0;->d:Lcom/android/tools/r8/internal/fB;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/AE;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/VW;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/AE;)Lcom/android/tools/r8/internal/UW;

    move-result-object p1

    return-object p1
.end method
