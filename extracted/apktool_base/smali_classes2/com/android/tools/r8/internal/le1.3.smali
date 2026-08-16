.class public final synthetic Lcom/android/tools/r8/internal/le1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/iZ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/iZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/le1;->b:Lcom/android/tools/r8/internal/iZ;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/le1;->b:Lcom/android/tools/r8/internal/iZ;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method
