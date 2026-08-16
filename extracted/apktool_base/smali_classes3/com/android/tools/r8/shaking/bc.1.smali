.class public final synthetic Lcom/android/tools/r8/shaking/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/c3$a;

.field public final synthetic b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/c3$a;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/bc;->a:Lcom/android/tools/r8/shaking/c3$a;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/bc;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/bc;->a:Lcom/android/tools/r8/shaking/c3$a;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/bc;->b:Lcom/android/tools/r8/graph/u1;

    check-cast p1, Lcom/android/tools/r8/shaking/i4;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/d3;->a(Lcom/android/tools/r8/shaking/c3$a;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/shaking/i4;Ljava/lang/Boolean;)V

    return-void
.end method
