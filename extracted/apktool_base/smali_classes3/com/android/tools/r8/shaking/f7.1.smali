.class public final synthetic Lcom/android/tools/r8/shaking/f7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/f4;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/f7;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f7;->a:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
