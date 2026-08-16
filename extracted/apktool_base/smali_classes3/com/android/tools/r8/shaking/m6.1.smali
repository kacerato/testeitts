.class public final synthetic Lcom/android/tools/r8/shaking/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/m6;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m6;->a:Lcom/android/tools/r8/shaking/N;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E5;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/shaking/I;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method
