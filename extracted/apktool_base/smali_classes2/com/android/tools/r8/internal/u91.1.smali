.class public final synthetic Lcom/android/tools/r8/internal/u91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/mO;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/CN;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/CN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/u91;->a:Lcom/android/tools/r8/internal/CN;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/u91;->a:Lcom/android/tools/r8/internal/CN;

    check-cast p1, Lcom/android/tools/r8/internal/jP;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/CN;->a(Lcom/android/tools/r8/internal/jP;)Lcom/android/tools/r8/internal/CN;

    return-void
.end method
