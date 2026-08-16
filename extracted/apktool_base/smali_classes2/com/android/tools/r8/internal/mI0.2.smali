.class public final synthetic Lcom/android/tools/r8/internal/mI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QT;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/IH;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mI0;->a:Lcom/android/tools/r8/internal/IH;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mI0;->a:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IH;->b(I)I

    return-void
.end method
