.class public final synthetic Lcom/android/tools/r8/internal/x11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/internal/WS;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/WS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/x11;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/x11;->c:Lcom/android/tools/r8/internal/WS;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x11;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/x11;->c:Lcom/android/tools/r8/internal/WS;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Wu0;->a(Ljava/util/List;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/A2;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
