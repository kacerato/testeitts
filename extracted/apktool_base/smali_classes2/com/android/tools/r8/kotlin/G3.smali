.class public final synthetic Lcom/android/tools/r8/kotlin/G3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Lcom/android/tools/r8/internal/zQ;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/G3;->b:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/G3;->c:Lcom/android/tools/r8/internal/zQ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/G3;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/G3;->c:Lcom/android/tools/r8/internal/zQ;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/kotlin/c0;->b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/zQ;Ljava/lang/String;)V

    return-void
.end method
