.class public final synthetic Lcom/android/tools/r8/shaking/yb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/V4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/V4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/yb;->b:Lcom/android/tools/r8/shaking/V4;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/yb;->b:Lcom/android/tools/r8/shaking/V4;

    check-cast p1, Lcom/android/tools/r8/graph/A5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/V4;->a(Lcom/android/tools/r8/graph/A5;)Z

    move-result p1

    return p1
.end method
