.class public final synthetic Lcom/android/tools/r8/internal/qf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/x1;

.field public final synthetic d:Lcom/android/tools/r8/internal/wA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qf1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qf1;->c:Lcom/android/tools/r8/internal/x1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/qf1;->d:Lcom/android/tools/r8/internal/wA;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/qf1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qf1;->c:Lcom/android/tools/r8/internal/x1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/qf1;->d:Lcom/android/tools/r8/internal/wA;

    check-cast p1, Lcom/android/tools/r8/graph/I2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/jE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/internal/hE;

    move-result-object p1

    return-object p1
.end method
