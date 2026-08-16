.class public final synthetic Lcom/android/tools/r8/shaking/Ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/V4;

.field public final synthetic c:Lcom/android/tools/r8/shaking/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/V4;Lcom/android/tools/r8/shaking/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Ab;->b:Lcom/android/tools/r8/shaking/V4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Ab;->c:Lcom/android/tools/r8/shaking/i;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Ab;->b:Lcom/android/tools/r8/shaking/V4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Ab;->c:Lcom/android/tools/r8/shaking/i;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    return p1
.end method
