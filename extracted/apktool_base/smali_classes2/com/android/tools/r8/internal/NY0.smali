.class public final synthetic Lcom/android/tools/r8/internal/NY0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/mO;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/VN;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/VN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NY0;->a:Lcom/android/tools/r8/internal/VN;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NY0;->a:Lcom/android/tools/r8/internal/VN;

    check-cast p1, Lcom/android/tools/r8/internal/cN;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/VN;->a(Lcom/android/tools/r8/internal/cN;)V

    return-void
.end method
