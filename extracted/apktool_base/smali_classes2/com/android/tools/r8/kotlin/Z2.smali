.class public final synthetic Lcom/android/tools/r8/kotlin/Z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/StringBuilder;

.field public final synthetic d:Lcom/android/tools/r8/internal/eQ;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/Z2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/Z2;->c:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/Z2;->d:Lcom/android/tools/r8/internal/eQ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/Z2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/Z2;->c:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/Z2;->d:Lcom/android/tools/r8/internal/eQ;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/eQ;Ljava/lang/String;)V

    return-void
.end method
