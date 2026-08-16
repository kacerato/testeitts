.class public final synthetic Lcom/android/tools/r8/internal/U81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/de;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/de;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/U81;->b:Lcom/android/tools/r8/internal/de;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/U81;->b:Lcom/android/tools/r8/internal/de;

    check-cast p1, Lcom/android/tools/r8/internal/p10;

    check-cast p2, Lcom/android/tools/r8/internal/q10;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method
