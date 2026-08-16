.class public final synthetic Lcom/android/tools/r8/internal/Rr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/rf0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/rf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rr1;->a:Lcom/android/tools/r8/internal/rf0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rr1;->a:Lcom/android/tools/r8/internal/rf0;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/rf0;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
