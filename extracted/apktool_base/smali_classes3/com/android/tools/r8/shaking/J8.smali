.class public final synthetic Lcom/android/tools/r8/shaking/J8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/S0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/S0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/J8;->a:Lcom/android/tools/r8/shaking/S0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/J8;->a:Lcom/android/tools/r8/shaking/S0;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    check-cast p2, Lcom/android/tools/r8/shaking/X1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    return-void
.end method
