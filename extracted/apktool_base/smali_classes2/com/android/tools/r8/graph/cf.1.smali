.class public final synthetic Lcom/android/tools/r8/graph/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/tu0;


# direct methods
.method public synthetic constructor <init>(ILcom/android/tools/r8/internal/tu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/cf;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/graph/cf;->c:Lcom/android/tools/r8/internal/tu0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/cf;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/cf;->c:Lcom/android/tools/r8/internal/tu0;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/tools/r8/graph/e1;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/graph/o4;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/Integer;Lcom/android/tools/r8/graph/e1;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method
