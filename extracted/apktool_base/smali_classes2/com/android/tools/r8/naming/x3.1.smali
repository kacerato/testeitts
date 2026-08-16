.class public final synthetic Lcom/android/tools/r8/naming/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ur0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/r;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/x3;->a:Lcom/android/tools/r8/naming/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/x3;->a:Lcom/android/tools/r8/naming/r;

    check-cast p1, Lcom/android/tools/r8/naming/k$b;

    check-cast p2, Lcom/android/tools/r8/naming/k$b;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)Lcom/android/tools/r8/naming/k$b;

    move-result-object p1

    return-object p1
.end method
