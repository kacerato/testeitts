.class public final synthetic Lcom/android/tools/r8/shaking/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/dc;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/dc;->a:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/shaking/f1;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/shaking/e1;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/f1;)V

    return-void
.end method
