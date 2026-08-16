.class public final synthetic Lcom/android/tools/r8/internal/e01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/W5;

.field public final synthetic c:Lcom/android/tools/r8/internal/zE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/e01;->b:Lcom/android/tools/r8/internal/W5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/e01;->c:Lcom/android/tools/r8/internal/zE;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/e01;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/e01;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/W5;->c(Lcom/android/tools/r8/internal/zE;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
