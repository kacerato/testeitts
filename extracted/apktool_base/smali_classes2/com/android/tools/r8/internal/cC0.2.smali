.class public final synthetic Lcom/android/tools/r8/internal/cC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Fm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Fm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cC0;->b:Lcom/android/tools/r8/internal/Fm;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC0;->b:Lcom/android/tools/r8/internal/Fm;

    check-cast p1, Lcom/android/tools/r8/graph/I0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Fm;->b(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method
