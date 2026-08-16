.class public final synthetic Lcom/android/tools/r8/shaking/ra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/q5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/ra;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/ra;->c:Lcom/android/tools/r8/graph/q5;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/ra;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/ra;->c:Lcom/android/tools/r8/graph/q5;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
