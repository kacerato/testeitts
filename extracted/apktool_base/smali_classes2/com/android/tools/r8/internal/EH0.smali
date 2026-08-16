.class public final synthetic Lcom/android/tools/r8/internal/EH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/H5;

.field public final synthetic c:Lcom/android/tools/r8/internal/wX;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EH0;->b:Lcom/android/tools/r8/graph/H5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EH0;->c:Lcom/android/tools/r8/internal/wX;

    iput p3, p0, Lcom/android/tools/r8/internal/EH0;->d:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/EH0;->b:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EH0;->c:Lcom/android/tools/r8/internal/wX;

    iget v2, p0, Lcom/android/tools/r8/internal/EH0;->d:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/tools/r8/internal/Kx;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;ILjava/lang/Integer;Lcom/android/tools/r8/internal/Kx;)Lcom/android/tools/r8/internal/Kx;

    move-result-object p1

    return-object p1
.end method
