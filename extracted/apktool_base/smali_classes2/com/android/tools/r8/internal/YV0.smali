.class public final synthetic Lcom/android/tools/r8/internal/YV0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/P8;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/he;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/he;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YV0;->a:Lcom/android/tools/r8/internal/he;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YV0;->a:Lcom/android/tools/r8/internal/he;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/he;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method
