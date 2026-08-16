.class public final synthetic Lcom/android/tools/r8/kotlin/F1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/r0;

.field public final synthetic c:Lcom/android/tools/r8/graph/r0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/F1;->b:Lcom/android/tools/r8/graph/r0;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/F1;->c:Lcom/android/tools/r8/graph/r0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/F1;->b:Lcom/android/tools/r8/graph/r0;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/F1;->c:Lcom/android/tools/r8/graph/r0;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/kotlin/Z;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;

    move-result-object p1

    return-object p1
.end method
