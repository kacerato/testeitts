.class public final synthetic Lcom/android/tools/r8/internal/hY0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/TA;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/TA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hY0;->a:Lcom/android/tools/r8/internal/TA;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hY0;->a:Lcom/android/tools/r8/internal/TA;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/TA;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result p1

    return p1
.end method
