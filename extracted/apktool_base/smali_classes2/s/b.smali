.class public final synthetic Ls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/D2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/D2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/b;->b:Lcom/android/tools/r8/internal/D2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls/b;->b:Lcom/android/tools/r8/internal/D2;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/D2;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    return-object p1
.end method
