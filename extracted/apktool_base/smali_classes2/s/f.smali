.class public final synthetic Ls/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/eC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/f;->b:Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ls/f;->b:Lcom/android/tools/r8/internal/eC;

    check-cast p1, Lcom/android/tools/r8/internal/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method
