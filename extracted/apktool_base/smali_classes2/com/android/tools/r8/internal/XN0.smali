.class public final synthetic Lcom/android/tools/r8/internal/XN0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XN0;->a:Lcom/android/tools/r8/internal/qI;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/XN0;->a:Lcom/android/tools/r8/internal/qI;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/nI;->remove(I)Z

    return-void
.end method
