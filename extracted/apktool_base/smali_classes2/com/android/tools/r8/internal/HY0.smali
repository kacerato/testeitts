.class public final synthetic Lcom/android/tools/r8/internal/HY0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/EE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HY0;->b:Lcom/android/tools/r8/internal/EE;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY0;->b:Lcom/android/tools/r8/internal/EE;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void
.end method
