.class public final synthetic Lcom/android/tools/r8/internal/jP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qU;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jP0;->a:Lcom/android/tools/r8/internal/qU;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jP0;->a:Lcom/android/tools/r8/internal/qU;

    check-cast p1, Lcom/android/tools/r8/internal/Km;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Km;)V

    return-void
.end method
