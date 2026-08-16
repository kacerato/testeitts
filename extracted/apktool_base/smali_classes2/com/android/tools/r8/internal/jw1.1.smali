.class public final synthetic Lcom/android/tools/r8/internal/jw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/vW;

.field public final synthetic c:Lcom/android/tools/r8/internal/uW;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/vW;Lcom/android/tools/r8/internal/uW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jw1;->b:Lcom/android/tools/r8/internal/vW;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jw1;->c:Lcom/android/tools/r8/internal/uW;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jw1;->b:Lcom/android/tools/r8/internal/vW;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jw1;->c:Lcom/android/tools/r8/internal/uW;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/vW;->a(Lcom/android/tools/r8/internal/uW;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wW;

    move-result-object p1

    return-object p1
.end method
