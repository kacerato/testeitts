.class public final Lcom/android/tools/r8/graph/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/n4;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/n4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/graph/r4;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/graph/r4;->a:Lcom/android/tools/r8/graph/n4;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/tools/r8/graph/r4;->a:Lcom/android/tools/r8/graph/n4;

    iget-object p1, p1, Lcom/android/tools/r8/graph/n4;->c:Ljava/util/ArrayList;

    iget p2, p0, Lcom/android/tools/r8/graph/r4;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/tools/r8/graph/r4;->b:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/i0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->n0()Lcom/android/tools/r8/graph/u4;

    move-result-object p1

    return-object p1
.end method
