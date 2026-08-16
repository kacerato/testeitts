.class public final synthetic Lcom/android/tools/r8/kotlin/M4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/kotlin/s;

.field public final synthetic c:Lcom/android/tools/r8/internal/yQ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/kotlin/s;Lcom/android/tools/r8/internal/yQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/M4;->b:Lcom/android/tools/r8/kotlin/s;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/M4;->c:Lcom/android/tools/r8/internal/yQ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/M4;->b:Lcom/android/tools/r8/kotlin/s;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/M4;->c:Lcom/android/tools/r8/internal/yQ;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/kotlin/s;->a(Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    return-void
.end method
