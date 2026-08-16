.class public final synthetic Lcom/android/tools/r8/shaking/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/graph/Z4$c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/q7;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/q7;->c:Lcom/android/tools/r8/graph/Z4$c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/q7;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/q7;->c:Lcom/android/tools/r8/graph/Z4$c;

    check-cast p1, Lcom/android/tools/r8/graph/I4;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/I4;)V

    return-void
.end method
