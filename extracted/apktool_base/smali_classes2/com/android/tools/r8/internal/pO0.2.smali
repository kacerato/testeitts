.class public final synthetic Lcom/android/tools/r8/internal/pO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/k;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pO0;->b:Lcom/android/tools/r8/naming/k;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pO0;->b:Lcom/android/tools/r8/naming/k;

    check-cast p1, Lcom/android/tools/r8/naming/k$c;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/naming/k$c;)Lcom/android/tools/r8/internal/JV;

    move-result-object p1

    return-object p1
.end method
