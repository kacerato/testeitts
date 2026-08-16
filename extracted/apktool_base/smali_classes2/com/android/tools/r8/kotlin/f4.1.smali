.class public final synthetic Lcom/android/tools/r8/kotlin/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/f4;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/f4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/f4;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/f4;->c:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/internal/JP;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/kotlin/n;->a(Ljava/util/Map;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V

    return-void
.end method
