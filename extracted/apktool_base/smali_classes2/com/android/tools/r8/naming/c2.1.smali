.class public final synthetic Lcom/android/tools/r8/naming/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/K;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/K;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/c2;->b:Lcom/android/tools/r8/naming/K;

    iput-object p2, p0, Lcom/android/tools/r8/naming/c2;->c:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/c2;->b:Lcom/android/tools/r8/naming/K;

    iget-object v1, p0, Lcom/android/tools/r8/naming/c2;->c:Lcom/android/tools/r8/graph/E0;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/K;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
