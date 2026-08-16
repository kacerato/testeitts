.class public final synthetic Lcom/android/tools/r8/internal/bz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bI;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/y3;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/y3;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bz1;->a:Lcom/android/tools/r8/internal/y3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/bz1;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bz1;->a:Lcom/android/tools/r8/internal/y3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bz1;->b:Lcom/android/tools/r8/graph/H5;

    check-cast p2, Lcom/android/tools/r8/internal/Iw0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/y3;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1
.end method
