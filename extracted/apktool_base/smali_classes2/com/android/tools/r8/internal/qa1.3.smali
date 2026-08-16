.class public final synthetic Lcom/android/tools/r8/internal/qa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/dW;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/dW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qa1;->b:Lcom/android/tools/r8/internal/dW;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qa1;->b:Lcom/android/tools/r8/internal/dW;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/dW;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
