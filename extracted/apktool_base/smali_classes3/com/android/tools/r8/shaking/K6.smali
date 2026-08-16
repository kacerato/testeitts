.class public final synthetic Lcom/android/tools/r8/shaking/K6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/I4;

.field public final synthetic c:Lcom/android/tools/r8/shaking/d0;

.field public final synthetic d:Lcom/android/tools/r8/graph/D5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/K6;->b:Lcom/android/tools/r8/shaking/I4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/K6;->c:Lcom/android/tools/r8/shaking/d0;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/K6;->d:Lcom/android/tools/r8/graph/D5;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/K6;->b:Lcom/android/tools/r8/shaking/I4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/K6;->c:Lcom/android/tools/r8/shaking/d0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/K6;->d:Lcom/android/tools/r8/graph/D5;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method
