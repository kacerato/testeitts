.class public final synthetic Lcom/android/tools/r8/naming/N1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Rn;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Rn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/N1;->b:Lcom/android/tools/r8/internal/Rn;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/N1;->b:Lcom/android/tools/r8/internal/Rn;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/graph/G0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/I;

    return-object p1
.end method
