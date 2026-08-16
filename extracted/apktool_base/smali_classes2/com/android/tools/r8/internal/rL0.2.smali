.class public final synthetic Lcom/android/tools/r8/internal/rL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bs0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/zT;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rL0;->a:Lcom/android/tools/r8/internal/zT;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rL0;->a:Lcom/android/tools/r8/internal/zT;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/zT;->accept(Ljava/lang/Object;I)V

    return-void
.end method
