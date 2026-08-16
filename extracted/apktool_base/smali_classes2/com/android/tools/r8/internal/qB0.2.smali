.class public final synthetic Lcom/android/tools/r8/internal/qB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/CJ;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/CJ;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qB0;->b:Lcom/android/tools/r8/internal/CJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qB0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/qB0;->b:Lcom/android/tools/r8/internal/CJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qB0;->c:Ljava/lang/Object;

    check-cast p2, Lcom/android/tools/r8/internal/D1;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/CJ;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
