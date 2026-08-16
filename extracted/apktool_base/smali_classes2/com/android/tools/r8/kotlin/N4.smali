.class public final synthetic Lcom/android/tools/r8/kotlin/N4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/s0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/s0;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/N4;->b:Lcom/android/tools/r8/kotlin/s0;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/N4;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/N4;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N4;->b:Lcom/android/tools/r8/kotlin/s0;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/N4;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/N4;->d:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
