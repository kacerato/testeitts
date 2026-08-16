.class public final synthetic Lcom/android/tools/r8/graph/Ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/T4;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/T4;Lcom/android/tools/r8/graph/E0;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Ta;->b:Lcom/android/tools/r8/graph/T4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Ta;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Ta;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/Ta;->b:Lcom/android/tools/r8/graph/T4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Ta;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Ta;->d:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/T4;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
