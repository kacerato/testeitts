.class public final synthetic Lcom/android/tools/r8/shaking/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/C;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/l5;->a:Lcom/android/tools/r8/shaking/C;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/l5;->a:Lcom/android/tools/r8/shaking/C;

    check-cast p1, Lcom/android/tools/r8/shaking/d0;

    check-cast p2, Lcom/android/tools/r8/shaking/s2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/shaking/s2;)V

    return-void
.end method
