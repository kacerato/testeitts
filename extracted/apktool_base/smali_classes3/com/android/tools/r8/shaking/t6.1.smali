.class public final synthetic Lcom/android/tools/r8/shaking/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/I4;

.field public final synthetic c:Lcom/android/tools/r8/graph/E0;

.field public final synthetic d:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/t6;->b:Lcom/android/tools/r8/shaking/I4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/t6;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/t6;->d:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/t6;->b:Lcom/android/tools/r8/shaking/I4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/t6;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/t6;->d:Lcom/android/tools/r8/graph/E0;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    return p1
.end method
