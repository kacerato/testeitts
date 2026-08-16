.class public final Lcom/android/tools/r8/internal/CK;
.super Lcom/android/tools/r8/internal/Ps0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/Jy;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/internal/CK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ps0;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
