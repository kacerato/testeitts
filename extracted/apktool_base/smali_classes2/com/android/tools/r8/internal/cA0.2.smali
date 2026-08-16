.class public final synthetic Lcom/android/tools/r8/internal/cA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/nI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cA0;->a:Lcom/android/tools/r8/internal/nI;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cA0;->a:Lcom/android/tools/r8/internal/nI;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/JH;->h(I)Z

    move-result p1

    return p1
.end method
