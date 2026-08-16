.class public final Lcom/android/tools/r8/internal/pD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/ly;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ly;)V
    .locals 1

    const-string v0, "iteratorFactory"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pD;->b:Lcom/android/tools/r8/internal/ly;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/qD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pD;->b:Lcom/android/tools/r8/internal/ly;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/ly;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qD;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
