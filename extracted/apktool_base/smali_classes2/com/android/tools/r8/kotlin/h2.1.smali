.class public final synthetic Lcom/android/tools/r8/kotlin/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b2;


# instance fields
.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Ljava/lang/StringBuilder;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/h2;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/h2;->c:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/h2;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/h2;->e:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/h2;->b:Ljava/util/Collection;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/h2;->c:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/h2;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/h2;->e:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method
