.class public final synthetic Lcom/android/tools/r8/shaking/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/z5;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/z5;->a:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    check-cast p2, Lcom/android/tools/r8/shaking/s1;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/shaking/D4;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)V

    return-void
.end method
