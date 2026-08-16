.class public final synthetic Lcom/android/tools/r8/internal/A51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/mO;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/mO;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/mO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A51;->a:Lcom/android/tools/r8/internal/mO;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A51;->a:Lcom/android/tools/r8/internal/mO;

    check-cast p1, Lcom/android/tools/r8/internal/DN;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void
.end method
