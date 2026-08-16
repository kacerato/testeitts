.class public final synthetic Lcom/android/tools/r8/internal/Ls1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/sd;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/sd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ls1;->a:Lcom/android/tools/r8/internal/sd;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ls1;->a:Lcom/android/tools/r8/internal/sd;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sd;->b()Lcom/android/tools/r8/internal/pd;

    move-result-object v0

    return-object v0
.end method
