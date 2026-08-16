.class public final synthetic Lcom/android/tools/r8/internal/ZM0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/F5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ZM0;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ZM0;->c:Lcom/android/tools/r8/graph/F5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZM0;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZM0;->c:Lcom/android/tools/r8/graph/F5;

    check-cast p1, Lcom/android/tools/r8/internal/yg;

    check-cast p2, Lcom/android/tools/r8/internal/yg;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/internal/yg;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method
