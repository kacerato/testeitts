.class public final synthetic Lcom/android/tools/r8/internal/E91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ba0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ba0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/E91;->b:Lcom/android/tools/r8/internal/ba0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/E91;->b:Lcom/android/tools/r8/internal/ba0;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/ey0;->b(Lcom/android/tools/r8/internal/ba0;I)Lcom/android/tools/r8/internal/iv0;

    move-result-object p1

    return-object p1
.end method
