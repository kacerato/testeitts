.class public final Lcom/android/tools/r8/internal/ql0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nl0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Fj0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/By;)V
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/Fj0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ql0;->a:Lcom/android/tools/r8/internal/Fj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ql0;->a:Lcom/android/tools/r8/internal/Fj0;

    new-instance v1, Lcom/android/tools/r8/internal/ol0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ol0;-><init>()V

    invoke-virtual {v0, v1, v1}, Lcom/android/tools/r8/internal/Fj0;->a(Lcom/android/tools/r8/internal/ol0;Lcom/android/tools/r8/internal/ol0;)Lcom/android/tools/r8/internal/fi;

    move-result-object v0

    iput-object v0, v1, Lcom/android/tools/r8/internal/ol0;->d:Lcom/android/tools/r8/internal/fi;

    return-object v1
.end method
