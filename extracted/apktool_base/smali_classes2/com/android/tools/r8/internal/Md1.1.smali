.class public final synthetic Lcom/android/tools/r8/internal/Md1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Md1;->b:Lcom/android/tools/r8/internal/i0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Md1;->b:Lcom/android/tools/r8/internal/i0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/i0;->a(Lcom/android/tools/r8/internal/i0;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
