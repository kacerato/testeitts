.class public final synthetic Lcom/android/tools/r8/internal/zT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zT0;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/zT0;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zT0;->b:Ljava/util/List;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/zT0;->c:Z

    check-cast p1, Lcom/android/tools/r8/internal/Pn0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Ljava/util/List;ZLcom/android/tools/r8/internal/Pn0;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
