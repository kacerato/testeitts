.class public final synthetic Lcom/android/tools/r8/internal/od1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hi;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/od1;->b:Lcom/android/tools/r8/internal/hi;

    iput-object p2, p0, Lcom/android/tools/r8/internal/od1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/tools/r8/internal/od1;->d:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/od1;->b:Lcom/android/tools/r8/internal/hi;

    iget-object v1, p0, Lcom/android/tools/r8/internal/od1;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/od1;->d:Ljava/util/function/BiFunction;

    check-cast p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/hi;->b(Ljava/lang/Object;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Ys0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
