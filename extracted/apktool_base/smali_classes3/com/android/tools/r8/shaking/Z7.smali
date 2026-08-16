.class public final synthetic Lcom/android/tools/r8/shaking/Z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/Q;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z7;->b:Lcom/android/tools/r8/shaking/Q;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z7;->b:Lcom/android/tools/r8/shaking/Q;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->b(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
