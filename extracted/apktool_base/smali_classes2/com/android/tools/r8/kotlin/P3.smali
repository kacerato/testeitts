.class public final synthetic Lcom/android/tools/r8/kotlin/P3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/PQ;

.field public final synthetic c:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/PQ;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/P3;->b:Lcom/android/tools/r8/internal/PQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/P3;->c:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/P3;->b:Lcom/android/tools/r8/internal/PQ;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/P3;->c:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Lcom/android/tools/r8/internal/PQ;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
