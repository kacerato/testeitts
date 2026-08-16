.class public final synthetic Lcom/android/tools/r8/graph/wh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/gd0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/gd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/wh;->a:Lcom/android/tools/r8/internal/gd0;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/wh;->a:Lcom/android/tools/r8/internal/gd0;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
