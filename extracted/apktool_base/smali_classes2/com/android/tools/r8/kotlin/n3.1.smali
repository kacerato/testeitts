.class public final synthetic Lcom/android/tools/r8/kotlin/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/StringBuilder;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/n3;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/n3;->c:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/n3;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/n3;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n3;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/n3;->c:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/n3;->d:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/tools/r8/kotlin/n3;->e:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
