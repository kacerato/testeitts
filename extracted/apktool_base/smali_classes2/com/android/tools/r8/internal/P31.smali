.class public final synthetic Lcom/android/tools/r8/internal/P31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Z50;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Z50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/P31;->a:Lcom/android/tools/r8/internal/Z50;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/P31;->a:Lcom/android/tools/r8/internal/Z50;

    check-cast p1, Ljava/lang/StringBuilder;

    check-cast p2, Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Z50;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/mP;)V

    return-void
.end method
